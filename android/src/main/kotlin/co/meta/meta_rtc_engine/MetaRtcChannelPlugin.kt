package co.meta.meta_rtc_engine

import android.os.Handler
import android.os.Looper
import androidx.annotation.NonNull
import co.meta.rtc.RtcChannel
import co.meta.rtc.RtcEngine
import co.meta.rtc.base.RtcChannelManager
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.EventChannel
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import kotlin.reflect.full.declaredMemberFunctions
import kotlin.reflect.jvm.javaMethod

/** MetaRtcChannelPlugin */
class MetaRtcChannelPlugin(
        private val rtcEnginePlugin: MetaRtcEnginePlugin
) : FlutterPlugin, MethodCallHandler, EventChannel.StreamHandler {
    /// The MethodChannel that will the communication between Flutter and native Android
    ///
    /// This local reference serves to register the plugin with the Flutter Engine and unregister it
    /// when the Flutter Engine is detached from the Activity
    private lateinit var methodChannel: MethodChannel
    private lateinit var eventChannel: EventChannel
    private var eventSink: EventChannel.EventSink? = null
    private val manager = RtcChannelManager { methodName, data -> emit(methodName, data) }
    private val handler = Handler(Looper.getMainLooper())

    fun initPlugin(binaryMessenger: BinaryMessenger) {
        methodChannel = MethodChannel(binaryMessenger, "meta_rtc_channel")
        methodChannel.setMethodCallHandler(this)
        eventChannel = EventChannel(binaryMessenger, "meta_rtc_channel/events")
        eventChannel.setStreamHandler(this)
    }

    override fun onAttachedToEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        initPlugin(binding.binaryMessenger)
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        methodChannel.setMethodCallHandler(null)
        eventChannel.setStreamHandler(null)
        manager.release()
    }

    override fun onListen(arguments: Any?, events: EventChannel.EventSink?) {
        eventSink = events
    }

    override fun onCancel(arguments: Any?) {
        eventSink = null
    }

    private fun emit(methodName: String, data: Map<String, Any?>?) {
        handler.post {
            val event: MutableMap<String, Any?> = mutableMapOf("methodName" to methodName)
            data?.let { event.putAll(it) }
            eventSink?.success(event)
        }
    }

    private fun engine(): RtcEngine? {
        return rtcEnginePlugin.engine()
    }

    fun channel(channelId: String): RtcChannel? {
        return manager[channelId]
    }

    override fun onMethodCall(@NonNull call: MethodCall, @NonNull result: Result) {
        manager::class.declaredMemberFunctions.find { it.name == call.method }?.let { function ->
            function.javaMethod?.let { method ->
                try {
                    val parameters = mutableListOf<Any?>()
                    call.arguments<Map<*, *>>()?.toMutableMap()?.let {
                        if (call.method == "create") {
                            it["engine"] = engine()
                        }
                        parameters.add(it)
                    }
                    method.invoke(manager, *parameters.toTypedArray(), ResultCallback(result))
                    return@onMethodCall
                } catch (e: Exception) {
                    e.printStackTrace()
                }
            }
        }
        result.notImplemented()
    }
}
