package co.meta.rtc.base

import android.graphics.Rect
import androidx.annotation.IntRange
import co.meta.rtc.IRtcEngineEventHandler
import co.meta.rtc.models.UserInfo

class RtcEngineEvents {
    companion object {
        const val Warning = "Warning"
        const val Error = "Error"
        const val ApiCallExecuted = "ApiCallExecuted"
        const val JoinChannelSuccess = "JoinChannelSuccess"
        const val RejoinChannelSuccess = "RejoinChannelSuccess"
        const val LeaveChannel = "LeaveChannel"
        const val LocalUserRegistered = "LocalUserRegistered"
        const val UserInfoUpdated = "UserInfoUpdated"
        const val ClientRoleChanged = "ClientRoleChanged"
        const val UserJoined = "UserJoined"
        const val UserOffline = "UserOffline"
        const val ConnectionStateChanged = "ConnectionStateChanged"
        const val NetworkTypeChanged = "NetworkTypeChanged"
        const val ConnectionLost = "ConnectionLost"
        const val TokenPrivilegeWillExpire = "TokenPrivilegeWillExpire"
        const val RequestToken = "RequestToken"
        const val AudioVolumeIndication = "AudioVolumeIndication"
        const val ActiveSpeaker = "ActiveSpeaker"
        const val FirstLocalAudioFrame = "FirstLocalAudioFrame"
        const val FirstLocalVideoFrame = "FirstLocalVideoFrame"
        const val UserMuteVideo = "UserMuteVideo"
        const val VideoSizeChanged = "VideoSizeChanged"
        const val RemoteVideoStateChanged = "RemoteVideoStateChanged"
        const val LocalVideoStateChanged = "LocalVideoStateChanged"
        const val RemoteAudioStateChanged = "RemoteAudioStateChanged"
        const val LocalAudioStateChanged = "LocalAudioStateChanged"
        const val LocalPublishFallbackToAudioOnly = "LocalPublishFallbackToAudioOnly"
        const val RemoteSubscribeFallbackToAudioOnly = "RemoteSubscribeFallbackToAudioOnly"
        const val AudioRouteChanged = "AudioRouteChanged"
        const val CameraFocusAreaChanged = "CameraFocusAreaChanged"
        const val CameraExposureAreaChanged = "CameraExposureAreaChanged"
        const val FacePositionChanged = "FacePositionChanged"
        const val RtcStats = "RtcStats"
        const val LastmileQuality = "LastmileQuality"
        const val NetworkQuality = "NetworkQuality"
        const val LastmileProbeResult = "LastmileProbeResult"
        const val LocalVideoStats = "LocalVideoStats"
        const val LocalAudioStats = "LocalAudioStats"
        const val RemoteVideoStats = "RemoteVideoStats"
        const val RemoteAudioStats = "RemoteAudioStats"
        const val AudioMixingFinished = "AudioMixingFinished"
        const val AudioMixingStateChanged = "AudioMixingStateChanged"
        const val AudioEffectFinished = "AudioEffectFinished"
        const val RtmpStreamingStateChanged = "RtmpStreamingStateChanged"
        const val TranscodingUpdated = "TranscodingUpdated"
        const val StreamInjectedStatus = "StreamInjectedStatus"
        const val StreamMessage = "StreamMessage"
        const val StreamMessageError = "StreamMessageError"
        const val MediaEngineLoadSuccess = "MediaEngineLoadSuccess"
        const val MediaEngineStartCallSuccess = "MediaEngineStartCallSuccess"
        const val ChannelMediaRelayStateChanged = "ChannelMediaRelayStateChanged"
        const val ChannelMediaRelayEvent = "ChannelMediaRelayEvent"
        const val FirstRemoteVideoFrame = "FirstRemoteVideoFrame"
        const val FirstRemoteAudioFrame = "FirstRemoteAudioFrame"
        const val FirstRemoteAudioDecoded = "FirstRemoteAudioDecoded"
        const val UserMuteAudio = "UserMuteAudio"
        const val StreamPublished = "StreamPublished"
        const val StreamUnpublished = "StreamUnpublished"
        const val RemoteAudioTransportStats = "RemoteAudioTransportStats"
        const val RemoteVideoTransportStats = "RemoteVideoTransportStats"
        const val UserEnableVideo = "UserEnableVideo"
        const val UserEnableLocalVideo = "UserEnableLocalVideo"
        const val FirstRemoteVideoDecoded = "FirstRemoteVideoDecoded"
        const val MicrophoneEnabled = "MicrophoneEnabled"
        const val ConnectionInterrupted = "ConnectionInterrupted"
        const val ConnectionBanned = "ConnectionBanned"
        const val AudioQuality = "AudioQuality"
        const val CameraReady = "CameraReady"
        const val VideoStopped = "VideoStopped"
        const val MetadataReceived = "MetadataReceived"
        const val FirstLocalAudioFramePublished = "FirstLocalAudioFramePublished"
        const val FirstLocalVideoFramePublished = "FirstLocalVideoFramePublished"
        const val AudioPublishStateChanged = "AudioPublishStateChanged"
        const val VideoPublishStateChanged = "VideoPublishStateChanged"
        const val AudioSubscribeStateChanged = "AudioSubscribeStateChanged"
        const val VideoSubscribeStateChanged = "VideoSubscribeStateChanged"
        const val RtmpStreamingEvent = "RtmpStreamingEvent"
        const val ParametersResponse = "ParametersResponse"

        fun toMap(): Map<String, String> {
            return hashMapOf(
                    "Warning" to Warning,
                    "Error" to Error,
                    "ApiCallExecuted" to ApiCallExecuted,
                    "JoinChannelSuccess" to JoinChannelSuccess,
                    "RejoinChannelSuccess" to RejoinChannelSuccess,
                    "LeaveChannel" to LeaveChannel,
                    "LocalUserRegistered" to LocalUserRegistered,
                    "UserInfoUpdated" to UserInfoUpdated,
                    "ClientRoleChanged" to ClientRoleChanged,
                    "UserJoined" to UserJoined,
                    "UserOffline" to UserOffline,
                    "ConnectionStateChanged" to ConnectionStateChanged,
                    "NetworkTypeChanged" to NetworkTypeChanged,
                    "ConnectionLost" to ConnectionLost,
                    "TokenPrivilegeWillExpire" to TokenPrivilegeWillExpire,
                    "RequestToken" to RequestToken,
                    "AudioVolumeIndication" to AudioVolumeIndication,
                    "ActiveSpeaker" to ActiveSpeaker,
                    "FirstLocalAudioFrame" to FirstLocalAudioFrame,
                    "FirstLocalVideoFrame" to FirstLocalVideoFrame,
                    "UserMuteVideo" to UserMuteVideo,
                    "VideoSizeChanged" to VideoSizeChanged,
                    "RemoteVideoStateChanged" to RemoteVideoStateChanged,
                    "LocalVideoStateChanged" to LocalVideoStateChanged,
                    "RemoteAudioStateChanged" to RemoteAudioStateChanged,
                    "LocalAudioStateChanged" to LocalAudioStateChanged,
                    "LocalPublishFallbackToAudioOnly" to LocalPublishFallbackToAudioOnly,
                    "RemoteSubscribeFallbackToAudioOnly" to RemoteSubscribeFallbackToAudioOnly,
                    "AudioRouteChanged" to AudioRouteChanged,
                    "CameraFocusAreaChanged" to CameraFocusAreaChanged,
                    "CameraExposureAreaChanged" to CameraExposureAreaChanged,
                    "FacePositionChanged" to FacePositionChanged,
                    "RtcStats" to RtcStats,
                    "LastmileQuality" to LastmileQuality,
                    "NetworkQuality" to NetworkQuality,
                    "LastmileProbeResult" to LastmileProbeResult,
                    "LocalVideoStats" to LocalVideoStats,
                    "LocalAudioStats" to LocalAudioStats,
                    "RemoteVideoStats" to RemoteVideoStats,
                    "RemoteAudioStats" to RemoteAudioStats,
                    "AudioMixingFinished" to AudioMixingFinished,
                    "AudioMixingStateChanged" to AudioMixingStateChanged,
                    "AudioEffectFinished" to AudioEffectFinished,
                    "RtmpStreamingStateChanged" to RtmpStreamingStateChanged,
                    "TranscodingUpdated" to TranscodingUpdated,
                    "StreamInjectedStatus" to StreamInjectedStatus,
                    "StreamMessage" to StreamMessage,
                    "StreamMessageError" to StreamMessageError,
                    "MediaEngineLoadSuccess" to MediaEngineLoadSuccess,
                    "MediaEngineStartCallSuccess" to MediaEngineStartCallSuccess,
                    "ChannelMediaRelayStateChanged" to ChannelMediaRelayStateChanged,
                    "ChannelMediaRelayEvent" to ChannelMediaRelayEvent,
                    "FirstRemoteVideoFrame" to FirstRemoteVideoFrame,
                    "FirstRemoteAudioFrame" to FirstRemoteAudioFrame,
                    "FirstRemoteAudioDecoded" to FirstRemoteAudioDecoded,
                    "UserMuteAudio" to UserMuteAudio,
                    "StreamPublished" to StreamPublished,
                    "StreamUnpublished" to StreamUnpublished,
                    "RemoteAudioTransportStats" to RemoteAudioTransportStats,
                    "RemoteVideoTransportStats" to RemoteVideoTransportStats,
                    "UserEnableVideo" to UserEnableVideo,
                    "UserEnableLocalVideo" to UserEnableLocalVideo,
                    "FirstRemoteVideoDecoded" to FirstRemoteVideoDecoded,
                    "MicrophoneEnabled" to MicrophoneEnabled,
                    "ConnectionInterrupted" to ConnectionInterrupted,
                    "ConnectionBanned" to ConnectionBanned,
                    "AudioQuality" to AudioQuality,
                    "CameraReady" to CameraReady,
                    "VideoStopped" to VideoStopped,
                    "MetadataReceived" to MetadataReceived,
                    "FirstLocalAudioFramePublished" to FirstLocalAudioFramePublished,
                    "FirstLocalVideoFramePublished" to FirstLocalVideoFramePublished,
                    "AudioPublishStateChanged" to AudioPublishStateChanged,
                    "VideoPublishStateChanged" to VideoPublishStateChanged,
                    "AudioSubscribeStateChanged" to AudioSubscribeStateChanged,
                    "VideoSubscribeStateChanged" to VideoSubscribeStateChanged,
                    "RtmpStreamingEvent" to RtmpStreamingEvent
            )
        }
    }
}

class RtcEngineEventHandler(
        private val emitter: (methodName: String, data: Map<String, Any?>?) -> Unit
) : IRtcEngineEventHandler() {
    companion object {
        const val PREFIX = "co.meta.rtc."
    }

    private fun callback(methodName: String, vararg data: Any?) {
        emitter(methodName, hashMapOf("data" to data.toList()))
    }

    override fun onWarning(@Annotations.MetaWarningCode warn: Int) {
        callback(RtcEngineEvents.Warning, warn)
    }

    override fun onError(@Annotations.MetaErrorCode err: Int) {
        callback(RtcEngineEvents.Error, err)
    }

    override fun onApiCallExecuted(@Annotations.MetaErrorCode error: Int, api: String?, result: String?) {
        callback(RtcEngineEvents.ApiCallExecuted, error, api, result)
    }

    override fun onJoinChannelSuccess(channel: String?, uid: Int, elapsed: Int) {
        callback(RtcEngineEvents.JoinChannelSuccess, channel, uid, elapsed)
    }

    override fun onRejoinChannelSuccess(channel: String?, uid: Int, elapsed: Int) {
        callback(RtcEngineEvents.RejoinChannelSuccess, channel, uid, elapsed)
    }

    override fun onLeaveChannel(stats: RtcStats?) {
        callback(RtcEngineEvents.LeaveChannel, stats?.toMap())
    }

    override fun onLocalUserRegistered(uid: Int, userAccount: String?) {
        callback(RtcEngineEvents.LocalUserRegistered, uid, userAccount)
    }

    override fun onUserInfoUpdated(uid: Int, userInfo: UserInfo?) {
        callback(RtcEngineEvents.UserInfoUpdated, uid, userInfo?.toMap())
    }

    override fun onClientRoleChanged(@Annotations.MetaClientRole oldRole: Int, @Annotations.MetaClientRole newRole: Int) {
        callback(RtcEngineEvents.ClientRoleChanged, oldRole, newRole)
    }

    override fun onUserJoined(uid: Int, elapsed: Int) {
        callback(RtcEngineEvents.UserJoined, uid, elapsed)
    }

    override fun onUserOffline(uid: Int, @Annotations.MetaUserOfflineReason reason: Int) {
        callback(RtcEngineEvents.UserOffline, uid, reason)
    }

    override fun onConnectionStateChanged(@Annotations.MetaConnectionStateType state: Int, @Annotations.MetaConnectionChangedReason reason: Int) {
        callback(RtcEngineEvents.ConnectionStateChanged, state, reason)
    }

    override fun onNetworkTypeChanged(@Annotations.MetaNetworkType type: Int) {
        callback(RtcEngineEvents.NetworkTypeChanged, type)
    }

    override fun onConnectionLost() {
        callback(RtcEngineEvents.ConnectionLost)
    }

    override fun onTokenPrivilegeWillExpire(token: String?) {
        callback(RtcEngineEvents.TokenPrivilegeWillExpire, token)
    }

    override fun onRequestToken() {
        callback(RtcEngineEvents.RequestToken)
    }

    override fun onAudioVolumeIndication(speakers: Array<out AudioVolumeInfo>?, @IntRange(from = 0, to = 255) totalVolume: Int) {
        callback(RtcEngineEvents.AudioVolumeIndication, speakers?.toMapList(), totalVolume)
    }

    override fun onActiveSpeaker(uid: Int) {
        callback(RtcEngineEvents.ActiveSpeaker, uid)
    }

    override fun onFirstLocalAudioFrame(elapsed: Int) {
        callback(RtcEngineEvents.FirstLocalAudioFrame, elapsed)
    }

    override fun onFirstLocalVideoFrame(width: Int, height: Int, elapsed: Int) {
        callback(RtcEngineEvents.FirstLocalVideoFrame, width, height, elapsed)
    }

    @Deprecated("", ReplaceWith("onRemoteVideoStateChanged"))
    override fun onUserMuteVideo(uid: Int, muted: Boolean) {
        callback(RtcEngineEvents.UserMuteVideo, uid, muted)
    }

    override fun onVideoSizeChanged(uid: Int, width: Int, height: Int, @IntRange(from = 0, to = 360) rotation: Int) {
        callback(RtcEngineEvents.VideoSizeChanged, uid, width, height, rotation)
    }

    override fun onRemoteVideoStateChanged(uid: Int, @Annotations.MetaVideoRemoteState state: Int, @Annotations.MetaVideoRemoteStateReason reason: Int, elapsed: Int) {
        callback(RtcEngineEvents.RemoteVideoStateChanged, uid, state, reason, elapsed)
    }

    override fun onLocalVideoStateChanged(@Annotations.MetaLocalVideoStreamState localVideoState: Int, @Annotations.MetaLocalVideoStreamError error: Int) {
        callback(RtcEngineEvents.LocalVideoStateChanged, localVideoState, error)
    }

    override fun onRemoteAudioStateChanged(uid: Int, @Annotations.MetaAudioRemoteState state: Int, @Annotations.MetaAudioRemoteStateReason reason: Int, elapsed: Int) {
        callback(RtcEngineEvents.RemoteAudioStateChanged, uid, state, reason, elapsed)
    }

    override fun onLocalAudioStateChanged(@Annotations.MetaAudioLocalState state: Int, @Annotations.MetaAudioLocalError error: Int) {
        callback(RtcEngineEvents.LocalAudioStateChanged, state, error)
    }

    override fun onLocalPublishFallbackToAudioOnly(isFallbackOrRecover: Boolean) {
        callback(RtcEngineEvents.LocalPublishFallbackToAudioOnly, isFallbackOrRecover)
    }

    override fun onRemoteSubscribeFallbackToAudioOnly(uid: Int, isFallbackOrRecover: Boolean) {
        callback(RtcEngineEvents.RemoteSubscribeFallbackToAudioOnly, uid, isFallbackOrRecover)
    }

    override fun onAudioRouteChanged(@Annotations.MetaAudioOutputRouting routing: Int) {
        callback(RtcEngineEvents.AudioRouteChanged, routing)
    }

    override fun onCameraFocusAreaChanged(rect: Rect?) {
        callback(RtcEngineEvents.CameraFocusAreaChanged, rect?.toMap())
    }

    override fun onCameraExposureAreaChanged(rect: Rect?) {
        callback(RtcEngineEvents.CameraExposureAreaChanged, rect?.toMap())
    }

//    override fun onFacePositionChanged(imageWidth: Int, imageHeight: Int, faces: Array<out MetaFacePositionInfo>?) {
//        callback(RtcEngineEvents.FacePositionChanged, imageWidth, imageHeight, faces?.toMapList())
//    }

    override fun onRtcStats(stats: RtcStats?) {
        callback(RtcEngineEvents.RtcStats, stats?.toMap())
    }

    override fun onLastmileQuality(@Annotations.MetaNetworkQuality quality: Int) {
        callback(RtcEngineEvents.LastmileQuality, quality)
    }

    override fun onNetworkQuality(uid: Int, @Annotations.MetaNetworkQuality txQuality: Int, @Annotations.MetaNetworkQuality rxQuality: Int) {
        callback(RtcEngineEvents.NetworkQuality, uid, txQuality, rxQuality)
    }

    override fun onLastmileProbeResult(result: LastmileProbeResult?) {
        callback(RtcEngineEvents.LastmileProbeResult, result?.toMap())
    }

    @Deprecated("", ReplaceWith("onLocalVideoStats"))
    override fun onLocalVideoStat(sentBitrate: Int, sentFrameRate: Int) {
        // TODO Not in iOS
    }

    override fun onLocalVideoStats(stats: LocalVideoStats?) {
        callback(RtcEngineEvents.LocalVideoStats, stats?.toMap())
    }

    override fun onLocalAudioStats(stats: LocalAudioStats?) {
        callback(RtcEngineEvents.LocalAudioStats, stats?.toMap())
    }

    @Deprecated("", ReplaceWith("onRemoteVideoStats"))
    override fun onRemoteVideoStat(uid: Int, delay: Int, receivedBitrate: Int, receivedFrameRate: Int) {
        // TODO Not in iOS
    }

    override fun onRemoteVideoStats(stats: RemoteVideoStats?) {
        callback(RtcEngineEvents.RemoteVideoStats, stats?.toMap())
    }

    override fun onRemoteAudioStats(stats: RemoteAudioStats?) {
        callback(RtcEngineEvents.RemoteAudioStats, stats?.toMap())
    }

    @Deprecated("", ReplaceWith("onAudioMixingStateChanged"))
    override fun onAudioMixingFinished() {
        callback(RtcEngineEvents.AudioMixingFinished)
    }

    override fun onAudioMixingStateChanged(@Annotations.MetaAudioMixingStateCode state: Int, @Annotations.MetaAudioMixingErrorCode errorCode: Int) {
        callback(RtcEngineEvents.AudioMixingStateChanged, state, errorCode)
    }

    override fun onAudioEffectFinished(soundId: Int) {
        callback(RtcEngineEvents.AudioEffectFinished, soundId)
    }

    override fun onRtmpStreamingStateChanged(url: String?, @Annotations.MetaRtmpStreamingState state: Int, @Annotations.MetaRtmpStreamingErrorCode errCode: Int) {
        callback(RtcEngineEvents.RtmpStreamingStateChanged, url, state, errCode)
    }

    override fun onTranscodingUpdated() {
        callback(RtcEngineEvents.TranscodingUpdated)
    }

    override fun onStreamInjectedStatus(url: String?, uid: Int, @Annotations.MetaInjectStreamStatus status: Int) {
        callback(RtcEngineEvents.StreamInjectedStatus, url, uid, status)
    }

    override fun onStreamMessage(uid: Int, streamId: Int, data: ByteArray?) {
        callback(RtcEngineEvents.StreamMessage, uid, streamId, data?.let { String(it, Charsets.UTF_8) })
    }

    override fun onStreamMessageError(uid: Int, streamId: Int, @Annotations.MetaErrorCode error: Int, missed: Int, cached: Int) {
        callback(RtcEngineEvents.StreamMessageError, uid, streamId, error, missed, cached)
    }

    override fun onMediaEngineLoadSuccess() {
        callback(RtcEngineEvents.MediaEngineLoadSuccess)
    }

    override fun onMediaEngineStartCallSuccess() {
        callback(RtcEngineEvents.MediaEngineStartCallSuccess)
    }

    override fun onChannelMediaRelayStateChanged(@Annotations.MetaChannelMediaRelayState state: Int, @Annotations.MetaChannelMediaRelayError code: Int) {
        callback(RtcEngineEvents.ChannelMediaRelayStateChanged, state, code)
    }

    override fun onChannelMediaRelayEvent(@Annotations.MetaChannelMediaRelayEvent code: Int) {
        callback(RtcEngineEvents.ChannelMediaRelayEvent, code)
    }

    @Deprecated("", ReplaceWith("onRemoteVideoStateChanged"))
    override fun onFirstRemoteVideoFrame(uid: Int, width: Int, height: Int, elapsed: Int) {
        callback(RtcEngineEvents.FirstRemoteVideoFrame, uid, width, height, elapsed)
    }

    @Deprecated("", ReplaceWith("onRemoteAudioStateChanged"))
    override fun onFirstRemoteAudioFrame(uid: Int, elapsed: Int) {
        callback(RtcEngineEvents.FirstRemoteAudioFrame, uid, elapsed)
    }

    @Deprecated("", ReplaceWith("onRemoteAudioStateChanged"))
    override fun onFirstRemoteAudioDecoded(uid: Int, elapsed: Int) {
        callback(RtcEngineEvents.FirstRemoteAudioDecoded, uid, elapsed)
    }

    @Deprecated("", ReplaceWith("onRemoteAudioStateChanged"))
    override fun onUserMuteAudio(uid: Int, muted: Boolean) {
        callback(RtcEngineEvents.UserMuteAudio, uid, muted)
    }

    @Deprecated("", ReplaceWith("onRtmpStreamingStateChanged"))
    override fun onStreamPublished(url: String?, @Annotations.MetaErrorCode error: Int) {
        callback(RtcEngineEvents.StreamPublished, url, error)
    }

    @Deprecated("", ReplaceWith("onRtmpStreamingStateChanged"))
    override fun onStreamUnpublished(url: String?) {
        callback(RtcEngineEvents.StreamUnpublished, url)
    }

    @Deprecated("", ReplaceWith("onRemoteAudioStats"))
    override fun onRemoteAudioTransportStats(uid: Int, delay: Int, lost: Int, rxKBitRate: Int) {
        callback(RtcEngineEvents.RemoteAudioTransportStats, uid, delay, lost, rxKBitRate)
    }

    @Deprecated("", ReplaceWith("onRemoteVideoStats"))
    override fun onRemoteVideoTransportStats(uid: Int, delay: Int, lost: Int, rxKBitRate: Int) {
        callback(RtcEngineEvents.RemoteVideoTransportStats, uid, delay, lost, rxKBitRate)
    }

    @Deprecated("", ReplaceWith("onRemoteVideoStateChanged"))
    override fun onUserEnableVideo(uid: Int, enabled: Boolean) {
        callback(RtcEngineEvents.UserEnableVideo, uid, enabled)
    }

    @Deprecated("", ReplaceWith("onRemoteVideoStateChanged"))
    override fun onUserEnableLocalVideo(uid: Int, enabled: Boolean) {
        callback(RtcEngineEvents.UserEnableLocalVideo, uid, enabled)
    }

    @Deprecated("", ReplaceWith("onRemoteVideoStateChanged"))
    override fun onFirstRemoteVideoDecoded(uid: Int, width: Int, height: Int, elapsed: Int) {
        callback(RtcEngineEvents.FirstRemoteVideoDecoded, uid, width, height, elapsed)
    }

    @Deprecated("", ReplaceWith("onLocalAudioStateChanged"))
    override fun onMicrophoneEnabled(enabled: Boolean) {
        callback(RtcEngineEvents.MicrophoneEnabled, enabled)
    }

    @Deprecated("", ReplaceWith("onConnectionStateChanged"))
    override fun onConnectionInterrupted() {
        callback(RtcEngineEvents.ConnectionInterrupted)
    }

    @Deprecated("", ReplaceWith("onConnectionStateChanged"))
    override fun onConnectionBanned() {
        callback(RtcEngineEvents.ConnectionBanned)
    }

    @Deprecated("", ReplaceWith("onRemoteAudioStats"))
    override fun onAudioQuality(uid: Int, @Annotations.MetaNetworkQuality quality: Int, delay: Short, lost: Short) {
        callback(RtcEngineEvents.AudioQuality, uid, quality, delay, lost)
    }

    @Deprecated("", ReplaceWith("onLocalVideoStateChanged"))
    override fun onCameraReady() {
        callback(RtcEngineEvents.CameraReady)
    }

    @Deprecated("", ReplaceWith("onLocalVideoStateChanged"))
    override fun onVideoStopped() {
        callback(RtcEngineEvents.VideoStopped)
    }

    override fun onParametersResponse(type: Int, response : String) {
        callback(RtcEngineEvents.ParametersResponse, type,response)
    }


//    override fun onFirstLocalAudioFramePublished(elapsed: Int) {
//        callback(RtcEngineEvents.FirstLocalAudioFramePublished, elapsed)
//    }

//    override fun onFirstLocalVideoFramePublished(elapsed: Int) {
//        callback(RtcEngineEvents.FirstLocalVideoFramePublished, elapsed)
//    }

//    override fun onAudioPublishStateChanged(channel: String?, @Annotations.MetaStreamPublishState oldState: Int, @Annotations.MetaStreamPublishState newState: Int, elapseSinceLastState: Int) {
//        callback(RtcEngineEvents.AudioPublishStateChanged, channel, oldState, newState, elapseSinceLastState)
//    }

//    override fun onVideoPublishStateChanged(channel: String?, @Annotations.MetaStreamPublishState oldState: Int, @Annotations.MetaStreamPublishState newState: Int, elapseSinceLastState: Int) {
//        callback(RtcEngineEvents.VideoPublishStateChanged, channel, oldState, newState, elapseSinceLastState)
//    }

//    override fun onAudioSubscribeStateChanged(channel: String?, uid: Int, @Annotations.MetaStreamSubscribeState oldState: Int, @Annotations.MetaStreamSubscribeState newState: Int, elapseSinceLastState: Int) {
//        callback(RtcEngineEvents.AudioSubscribeStateChanged, channel, uid, oldState, newState, elapseSinceLastState)
//    }

//    override fun onVideoSubscribeStateChanged(channel: String?, uid: Int, @Annotations.MetaStreamSubscribeState oldState: Int, @Annotations.MetaStreamSubscribeState newState: Int, elapseSinceLastState: Int) {
//        callback(RtcEngineEvents.VideoSubscribeStateChanged, channel, uid, oldState, newState, elapseSinceLastState)
//    }

//    override fun onRtmpStreamingEvent(url: String?, @Annotations.MetaRtmpStreamingEvent error: Int) {
//        callback(RtcEngineEvents.RtmpStreamingEvent, url, error)
//    }
}
