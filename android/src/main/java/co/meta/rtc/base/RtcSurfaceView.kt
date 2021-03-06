package co.meta.rtc.base

import android.content.Context
import android.view.SurfaceView
import android.widget.FrameLayout
import co.meta.rtc.RtcChannel
import co.meta.rtc.RtcEngine
import co.meta.rtc.video.VideoCanvas
import java.lang.ref.WeakReference

class RtcSurfaceView(
        context: Context
) : FrameLayout(context) {
    private var surface: SurfaceView
    private var canvas: VideoCanvas
    private var channel: WeakReference<RtcChannel>? = null

    init {
        try {
            surface = RtcEngine.CreateRendererView(context)
        } catch (e: UnsatisfiedLinkError) {
            throw RuntimeException("Please init RtcEngine first!")
        }
        canvas = VideoCanvas(surface)
        addView(surface)
    }

    fun setZOrderMediaOverlay(isMediaOverlay: Boolean) {
        try {
            removeView(surface)
            surface.setZOrderMediaOverlay(isMediaOverlay)
            addView(surface)
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    fun setZOrderOnTop(onTop: Boolean) {
        try {
            removeView(surface)
            surface.setZOrderOnTop(onTop)
            addView(surface)
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    fun setData(engine: RtcEngine, channel: RtcChannel?, uid: Int) {
        this.channel = if (channel != null) WeakReference(channel) else null
        canvas.channelId = this.channel?.get()?.channelId()
        canvas.uid = uid
        setupVideoCanvas(engine)
    }

    fun resetVideoCanvas(engine: RtcEngine) {
        val canvas = VideoCanvas(null, canvas.renderMode, canvas.channelId, canvas.uid, canvas.mirrorMode)
        if (canvas.uid == 0) {
            engine.setupLocalVideo(canvas)
        } else {
            engine.setupRemoteVideo(canvas)
        }
    }

    private fun setupVideoCanvas(engine: RtcEngine) {
        if (canvas.uid == 0) {
            engine.setupLocalVideo(canvas)
        } else {
            engine.setupRemoteVideo(canvas)
        }
    }

    fun setRenderMode(engine: RtcEngine, @Annotations.MetaVideoRenderMode renderMode: Int) {
        canvas.renderMode = renderMode
        setupRenderMode(engine)
    }

    fun setMirrorMode(engine: RtcEngine, @Annotations.MetaVideoMirrorMode mirrorMode: Int) {
        canvas.mirrorMode = mirrorMode
        setupRenderMode(engine)
    }

    private fun setupRenderMode(engine: RtcEngine) {
        if (canvas.uid == 0) {
            engine.setLocalRenderMode(canvas.renderMode, canvas.mirrorMode)
        } else {
            channel?.get()?.let {
                it.setRemoteRenderMode(canvas.uid, canvas.renderMode, canvas.mirrorMode)
                return@setupRenderMode
            }
            engine.setRemoteRenderMode(canvas.uid, canvas.renderMode, canvas.mirrorMode)
        }
    }

    override fun onMeasure(widthMeasureSpec: Int, heightMeasureSpec: Int) {
        val width: Int = MeasureSpec.getSize(widthMeasureSpec)
        val height: Int = MeasureSpec.getSize(heightMeasureSpec)
        surface.layout(0, 0, width, height)
        super.onMeasure(widthMeasureSpec, heightMeasureSpec)
    }
}
