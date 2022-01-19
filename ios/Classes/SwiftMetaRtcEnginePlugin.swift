import Flutter
import UIKit
import MetaRTCFramework

public class SwiftMetaRtcEnginePlugin: NSObject, FlutterPlugin, FlutterStreamHandler {
    private var methodChannel: FlutterMethodChannel?
    private var eventChannel: FlutterEventChannel?
    private var eventSink: FlutterEventSink? = nil
    private lazy var manager: RtcEngineManager = {
        return RtcEngineManager() { [weak self] methodName, data in
            self?.emit(methodName, data)
        }
    }()
    private lazy var rtcChannelPlugin: MetaRtcChannelPlugin = {
        return MetaRtcChannelPlugin(self)
    }()

    public static func register(with registrar: FlutterPluginRegistrar) {
        let rtcEnginePlugin = SwiftMetaRtcEnginePlugin()
        rtcEnginePlugin.rtcChannelPlugin.initPlugin(registrar)
        rtcEnginePlugin.initPlugin(registrar)
    }

    private func initPlugin(_ registrar: FlutterPluginRegistrar) {
        methodChannel = FlutterMethodChannel(name: "meta_rtc_engine", binaryMessenger: registrar.messenger())
        eventChannel = FlutterEventChannel(name: "meta_rtc_engine/events", binaryMessenger: registrar.messenger())
        registrar.addMethodCallDelegate(self, channel: methodChannel!)
        eventChannel?.setStreamHandler(self)

        registrar.register(MetaSurfaceViewFactory(registrar.messenger(), self, rtcChannelPlugin), withId: "MetaSurfaceView")
    }

    public func detachFromEngine(for registrar: FlutterPluginRegistrar) {
        rtcChannelPlugin.detachFromEngine(for: registrar)
        methodChannel?.setMethodCallHandler(nil)
        eventChannel?.setStreamHandler(nil)
        manager.Release()
    }

    public func onListen(withArguments arguments: Any?, eventSink events: @escaping FlutterEventSink) -> FlutterError? {
        eventSink = events
        return nil
    }

    public func onCancel(withArguments arguments: Any?) -> FlutterError? {
        eventSink = nil
        return nil
    }

    private func emit(_ methodName: String, _ data: Dictionary<String, Any?>?) {
        var event: Dictionary<String, Any?> = ["methodName": methodName]
        if let `data` = data {
            event.merge(data) { (current, _) in
                current
            }
        }
        eventSink?(event)
    }

    weak var engine: MetaRtcEngineKit? {
        return manager.engine
    }

    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        if let params = call.arguments as? NSDictionary {
            let selector = NSSelectorFromString(call.method + "::")
            if manager.responds(to: selector) {
                manager.perform(selector, with: params, with: ResultCallback(result))
                return
            }
        } else {
            let selector = NSSelectorFromString(call.method + ":")
            if manager.responds(to: selector) {
                manager.perform(selector, with: ResultCallback(result))
                return
            }
        }
        result(FlutterMethodNotImplemented)
    }
}
