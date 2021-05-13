//
//  RtcEngineEvent.swift
//  RCTWuji
//
//  Created by 3 on 2020/12/7.
//

import Foundation
import WujiRTCFramework
class RtcEngineEvents {
    static let Warning = "Warning"
    static let Error = "Error"
    static let ApiCallExecuted = "ApiCallExecuted"
    static let JoinChannelSuccess = "JoinChannelSuccess"
    static let RejoinChannelSuccess = "RejoinChannelSuccess"
    static let LeaveChannel = "LeaveChannel"
    static let LocalUserRegistered = "LocalUserRegistered"
    static let UserInfoUpdated = "UserInfoUpdated"
    static let ClientRoleChanged = "ClientRoleChanged"
    static let UserJoined = "UserJoined"
    static let UserOffline = "UserOffline"
    static let ConnectionStateChanged = "ConnectionStateChanged"
    static let NetworkTypeChanged = "NetworkTypeChanged"
    static let ConnectionLost = "ConnectionLost"
    static let TokenPrivilegeWillExpire = "TokenPrivilegeWillExpire"
    static let RequestToken = "RequestToken"
    static let AudioVolumeIndication = "AudioVolumeIndication"
    static let ActiveSpeaker = "ActiveSpeaker"
    static let FirstLocalAudioFrame = "FirstLocalAudioFrame"
    static let FirstLocalVideoFrame = "FirstLocalVideoFrame"
    static let UserMuteVideo = "UserMuteVideo"
    static let VideoSizeChanged = "VideoSizeChanged"
    static let RemoteVideoStateChanged = "RemoteVideoStateChanged"
    static let LocalVideoStateChanged = "LocalVideoStateChanged"
    static let RemoteAudioStateChanged = "RemoteAudioStateChanged"
    static let LocalAudioStateChanged = "LocalAudioStateChanged"
    static let LocalPublishFallbackToAudioOnly = "LocalPublishFallbackToAudioOnly"
    static let RemoteSubscribeFallbackToAudioOnly = "RemoteSubscribeFallbackToAudioOnly"
    static let AudioRouteChanged = "AudioRouteChanged"
    static let CameraFocusAreaChanged = "CameraFocusAreaChanged"
    static let CameraExposureAreaChanged = "CameraExposureAreaChanged"
    static let FacePositionChanged = "FacePositionChanged"
    static let RtcStats = "RtcStats"
    static let LastmileQuality = "LastmileQuality"
    static let NetworkQuality = "NetworkQuality"
    static let LastmileProbeResult = "LastmileProbeResult"
    static let LocalVideoStats = "LocalVideoStats"
    static let LocalAudioStats = "LocalAudioStats"
    static let RemoteVideoStats = "RemoteVideoStats"
    static let RemoteAudioStats = "RemoteAudioStats"
    static let AudioMixingFinished = "AudioMixingFinished"
    static let AudioMixingStateChanged = "AudioMixingStateChanged"
    static let AudioEffectFinished = "AudioEffectFinished"
    static let RtmpStreamingStateChanged = "RtmpStreamingStateChanged"
    static let TranscodingUpdated = "TranscodingUpdated"
    static let StreamInjectedStatus = "StreamInjectedStatus"
    static let StreamMessage = "StreamMessage"
    static let StreamMessageError = "StreamMessageError"
    static let MediaEngineLoadSuccess = "MediaEngineLoadSuccess"
    static let MediaEngineStartCallSuccess = "MediaEngineStartCallSuccess"
    static let ChannelMediaRelayStateChanged = "ChannelMediaRelayStateChanged"
    static let ChannelMediaRelayEvent = "ChannelMediaRelayEvent"
    static let FirstRemoteVideoFrame = "FirstRemoteVideoFrame"
    static let FirstRemoteAudioFrame = "FirstRemoteAudioFrame"
    static let FirstRemoteAudioDecoded = "FirstRemoteAudioDecoded"
    static let UserMuteAudio = "UserMuteAudio"
    static let StreamPublished = "StreamPublished"
    static let StreamUnpublished = "StreamUnpublished"
    static let RemoteAudioTransportStats = "RemoteAudioTransportStats"
    static let RemoteVideoTransportStats = "RemoteVideoTransportStats"
    static let UserEnableVideo = "UserEnableVideo"
    static let UserEnableLocalVideo = "UserEnableLocalVideo"
    static let FirstRemoteVideoDecoded = "FirstRemoteVideoDecoded"
    static let MicrophoneEnabled = "MicrophoneEnabled"
    static let ConnectionInterrupted = "ConnectionInterrupted"
    static let ConnectionBanned = "ConnectionBanned"
    static let AudioQuality = "AudioQuality"
    static let CameraReady = "CameraReady"
    static let VideoStopped = "VideoStopped"
    static let MetadataReceived = "MetadataReceived"
    static let FirstLocalAudioFramePublished = "FirstLocalAudioFramePublished"
    static let FirstLocalVideoFramePublished = "FirstLocalVideoFramePublished"
    static let AudioPublishStateChanged = "AudioPublishStateChanged"
    static let VideoPublishStateChanged = "VideoPublishStateChanged"
    static let AudioSubscribeStateChanged = "AudioSubscribeStateChanged"
    static let VideoSubscribeStateChanged = "VideoSubscribeStateChanged"
    static let RtmpStreamingEvent = "RtmpStreamingEvent"

    static func toMap() -> Dictionary<String, String> {
        return [
            "Warning": Warning,
            "Error": Error,
            "ApiCallExecuted": ApiCallExecuted,
            "JoinChannelSuccess": JoinChannelSuccess,
            "RejoinChannelSuccess": RejoinChannelSuccess,
            "LeaveChannel": LeaveChannel,
            "LocalUserRegistered": LocalUserRegistered,
            "UserInfoUpdated": UserInfoUpdated,
            "ClientRoleChanged": ClientRoleChanged,
            "UserJoined": UserJoined,
            "UserOffline": UserOffline,
            "ConnectionStateChanged": ConnectionStateChanged,
            "NetworkTypeChanged": NetworkTypeChanged,
            "ConnectionLost": ConnectionLost,
            "TokenPrivilegeWillExpire": TokenPrivilegeWillExpire,
            "RequestToken": RequestToken,
            "AudioVolumeIndication": AudioVolumeIndication,
            "ActiveSpeaker": ActiveSpeaker,
            "FirstLocalAudioFrame": FirstLocalAudioFrame,
            "FirstLocalVideoFrame": FirstLocalVideoFrame,
            "UserMuteVideo": UserMuteVideo,
            "VideoSizeChanged": VideoSizeChanged,
            "RemoteVideoStateChanged": RemoteVideoStateChanged,
            "LocalVideoStateChanged": LocalVideoStateChanged,
            "RemoteAudioStateChanged": RemoteAudioStateChanged,
            "LocalAudioStateChanged": LocalAudioStateChanged,
            "LocalPublishFallbackToAudioOnly": LocalPublishFallbackToAudioOnly,
            "RemoteSubscribeFallbackToAudioOnly": RemoteSubscribeFallbackToAudioOnly,
            "AudioRouteChanged": AudioRouteChanged,
            "CameraFocusAreaChanged": CameraFocusAreaChanged,
            "CameraExposureAreaChanged": CameraExposureAreaChanged,
            "FacePositionChanged": FacePositionChanged,
            "RtcStats": RtcStats,
            "LastmileQuality": LastmileQuality,
            "NetworkQuality": NetworkQuality,
            "LastmileProbeResult": LastmileProbeResult,
            "LocalVideoStats": LocalVideoStats,
            "LocalAudioStats": LocalAudioStats,
            "RemoteVideoStats": RemoteVideoStats,
            "RemoteAudioStats": RemoteAudioStats,
            "AudioMixingFinished": AudioMixingFinished,
            "AudioMixingStateChanged": AudioMixingStateChanged,
            "AudioEffectFinished": AudioEffectFinished,
            "RtmpStreamingStateChanged": RtmpStreamingStateChanged,
            "TranscodingUpdated": TranscodingUpdated,
            "StreamInjectedStatus": StreamInjectedStatus,
            "StreamMessage": StreamMessage,
            "StreamMessageError": StreamMessageError,
            "MediaEngineLoadSuccess": MediaEngineLoadSuccess,
            "MediaEngineStartCallSuccess": MediaEngineStartCallSuccess,
            "ChannelMediaRelayStateChanged": ChannelMediaRelayStateChanged,
            "ChannelMediaRelayEvent": ChannelMediaRelayEvent,
            "FirstRemoteVideoFrame": FirstRemoteVideoFrame,
            "FirstRemoteAudioFrame": FirstRemoteAudioFrame,
            "FirstRemoteAudioDecoded": FirstRemoteAudioDecoded,
            "UserMuteAudio": UserMuteAudio,
            "StreamPublished": StreamPublished,
            "StreamUnpublished": StreamUnpublished,
            "RemoteAudioTransportStats": RemoteAudioTransportStats,
            "RemoteVideoTransportStats": RemoteVideoTransportStats,
            "UserEnableVideo": UserEnableVideo,
            "UserEnableLocalVideo": UserEnableLocalVideo,
            "FirstRemoteVideoDecoded": FirstRemoteVideoDecoded,
            "MicrophoneEnabled": MicrophoneEnabled,
            "ConnectionInterrupted": ConnectionInterrupted,
            "ConnectionBanned": ConnectionBanned,
            "AudioQuality": AudioQuality,
            "CameraReady": CameraReady,
            "VideoStopped": VideoStopped,
            "MetadataReceived": MetadataReceived,
            "FirstLocalAudioFramePublished": FirstLocalAudioFramePublished,
            "FirstLocalVideoFramePublished": FirstLocalVideoFramePublished,
            "AudioPublishStateChanged": AudioPublishStateChanged,
            "VideoPublishStateChanged": VideoPublishStateChanged,
            "AudioSubscribeStateChanged": AudioSubscribeStateChanged,
            "VideoSubscribeStateChanged": VideoSubscribeStateChanged,
            "RtmpStreamingEvent": RtmpStreamingEvent,
        ]
    }
}

class RtcEngineEventHandler: NSObject {
    static let PREFIX = "co.wuji.rtc."

    var emitter: (_ methodName: String, _ data: Dictionary<String, Any?>?) -> Void

    init(emitter: @escaping (_ methodName: String, _ data: Dictionary<String, Any?>?) -> Void) {
        self.emitter = emitter
    }

    private func callback(_ methodName: String, _ data: Any?...) {
        emitter(methodName, ["data": data])
    }
}

extension RtcEngineEventHandler: WujiRtcEngineDelegate {
    public func rtcEngine(_ engine: WujiRtcEngineKit, didOccurWarning warningCode: WujiWarningCode) {
        callback(RtcEngineEvents.Warning, warningCode.rawValue)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didOccurError errorCode: WujiErrorCode) {
        callback(RtcEngineEvents.Error, errorCode.rawValue)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didApiCallExecute error: Int, api: String, result: String) {
        callback(RtcEngineEvents.ApiCallExecuted, error, api, result)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didJoinChannel channel: String, withUid uid: UInt, elapsed: Int) {
        callback(RtcEngineEvents.JoinChannelSuccess, channel, uid, elapsed)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didRejoinChannel channel: String, withUid uid: UInt, elapsed: Int) {
        callback(RtcEngineEvents.RejoinChannelSuccess, channel, uid, elapsed)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didLeaveChannelWith stats: WujiChannelStats) {
        callback(RtcEngineEvents.LeaveChannel, stats.toMap())
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didRegisteredLocalUser userAccount: String, withUid uid: UInt) {
        callback(RtcEngineEvents.LocalUserRegistered, uid, userAccount)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didUpdatedUserInfo userInfo: WujiUserInfo, withUid uid: UInt) {
        callback(RtcEngineEvents.UserInfoUpdated, uid, userInfo.toMap())
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didClientRoleChanged oldRole: WujiClientRole, newRole: WujiClientRole) {
        callback(RtcEngineEvents.ClientRoleChanged, oldRole.rawValue, newRole.rawValue)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didJoinedOfUid uid: UInt, elapsed: Int) {
        callback(RtcEngineEvents.UserJoined, uid, elapsed)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didOfflineOfUid uid: UInt, reason: WujiUserOfflineReason) {
        callback(RtcEngineEvents.UserOffline, uid, reason.rawValue)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, connectionChangedTo state: WujiConnectionStateType, reason: WujiConnectionChangedReason) {
        callback(RtcEngineEvents.ConnectionStateChanged, state.rawValue, reason.rawValue)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, networkTypeChangedTo type: WujiNetworkType) {
        callback(RtcEngineEvents.NetworkTypeChanged, type.rawValue)
    }

    public func rtcEngineConnectionDidLost(_ engine: WujiRtcEngineKit) {
        callback(RtcEngineEvents.ConnectionLost)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, tokenPrivilegeWillExpire token: String) {
        callback(RtcEngineEvents.TokenPrivilegeWillExpire, token)
    }

    public func rtcEngineRequestToken(_ engine: WujiRtcEngineKit) {
        callback(RtcEngineEvents.RequestToken)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, reportAudioVolumeIndicationOfSpeakers speakers: [WujiRtcAudioVolumeInfo], totalVolume: Int) {
        callback(RtcEngineEvents.AudioVolumeIndication, speakers.toMapList(), totalVolume)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, activeSpeaker speakerUid: UInt) {
        callback(RtcEngineEvents.ActiveSpeaker, speakerUid)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, firstLocalAudioFrame elapsed: Int) {
        callback(RtcEngineEvents.FirstLocalAudioFrame, elapsed)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, firstLocalVideoFrameWith size: CGSize, elapsed: Int) {
        callback(RtcEngineEvents.FirstLocalVideoFrame, Int(size.width), Int(size.height), elapsed)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didVideoMuted muted: Bool, byUid uid: UInt) {
        callback(RtcEngineEvents.UserMuteVideo, uid, muted)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, videoSizeChangedOfUid uid: UInt, size: CGSize, rotation: Int) {
        callback(RtcEngineEvents.VideoSizeChanged, uid, Int(size.width), Int(size.height), rotation)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, remoteVideoStateChangedOfUid uid: UInt, state: WujiVideoRemoteState, reason: WujiVideoRemoteStateReason, elapsed: Int) {
        callback(RtcEngineEvents.RemoteVideoStateChanged, uid, state.rawValue, reason.rawValue, elapsed)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, localVideoStateChange state: WujiLocalVideoStreamState, error: WujiLocalVideoStreamError) {
        callback(RtcEngineEvents.LocalVideoStateChanged, state.rawValue, error.rawValue)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, remoteAudioStateChangedOfUid uid: UInt, state: WujiAudioRemoteState, reason: WujiAudioRemoteStateReason, elapsed: Int) {
        callback(RtcEngineEvents.RemoteAudioStateChanged, uid, state.rawValue, reason.rawValue, elapsed)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, localAudioStateChange state: WujiAudioLocalState, error: WujiAudioLocalError) {
        callback(RtcEngineEvents.LocalAudioStateChanged, state.rawValue, error.rawValue)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didLocalPublishFallbackToAudioOnly isFallbackOrRecover: Bool) {
        callback(RtcEngineEvents.LocalPublishFallbackToAudioOnly, isFallbackOrRecover)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didRemoteSubscribeFallbackToAudioOnly isFallbackOrRecover: Bool, byUid uid: UInt) {
        callback(RtcEngineEvents.RemoteSubscribeFallbackToAudioOnly, uid, isFallbackOrRecover)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didAudioRouteChanged routing: WujiAudioOutputRouting) {
        callback(RtcEngineEvents.AudioRouteChanged, routing.rawValue)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, cameraFocusDidChangedTo rect: CGRect) {
        callback(RtcEngineEvents.CameraFocusAreaChanged, rect.toMap())
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, cameraExposureDidChangedTo rect: CGRect) {
        callback(RtcEngineEvents.CameraExposureAreaChanged, rect.toMap())
    }

    func rtcEngine(_ engine: WujiRtcEngineKit, facePositionDidChangeWidth width: Int32, previewHeight height: Int32, faces: [WujiFacePositionInfo]?) {
        callback(RtcEngineEvents.FacePositionChanged, width, height, faces?.toMapList())
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, reportRtcStats stats: WujiChannelStats) {
        callback(RtcEngineEvents.RtcStats, stats.toMap())
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, lastmileQuality quality: WujiNetworkQuality) {
        callback(RtcEngineEvents.LastmileQuality, quality.rawValue)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, networkQuality uid: UInt, txQuality: WujiNetworkQuality, rxQuality: WujiNetworkQuality) {
        callback(RtcEngineEvents.NetworkQuality, uid, txQuality.rawValue, rxQuality.rawValue)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, lastmileProbeTest result: WujiLastmileProbeResult) {
        callback(RtcEngineEvents.LastmileProbeResult, result.toMap())
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, localVideoStats stats: WujiRtcLocalVideoStats) {
        callback(RtcEngineEvents.LocalVideoStats, stats.toMap())
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, localAudioStats stats: WujiRtcLocalAudioStats) {
        callback(RtcEngineEvents.LocalAudioStats, stats.toMap())
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, remoteVideoStats stats: WujiRtcRemoteVideoStats) {
        callback(RtcEngineEvents.RemoteVideoStats, stats.toMap())
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, remoteAudioStats stats: WujiRtcRemoteAudioStats) {
        callback(RtcEngineEvents.RemoteAudioStats, stats.toMap())
    }

    public func rtcEngineLocalAudioMixingDidFinish(_ engine: WujiRtcEngineKit) {
        callback(RtcEngineEvents.AudioMixingFinished)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, localAudioMixingStateDidChanged state: WujiAudioMixingStateCode, errorCode: WujiAudioMixingErrorCode) {
        callback(RtcEngineEvents.AudioMixingStateChanged, state.rawValue, errorCode.rawValue)
    }

    public func rtcEngineRemoteAudioMixingDidStart(_ engine: WujiRtcEngineKit) {
        // TODO Not in Android
    }

    public func rtcEngineRemoteAudioMixingDidFinish(_ engine: WujiRtcEngineKit) {
        // TODO Not in Android
    }

    public func rtcEngineDidAudioEffectFinish(_ engine: WujiRtcEngineKit, soundId: Int) {
        callback(RtcEngineEvents.AudioEffectFinished, soundId)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, rtmpStreamingChangedToState url: String, state: WujiRtmpStreamingState, errorCode: WujiRtmpStreamingErrorCode) {
        callback(RtcEngineEvents.RtmpStreamingStateChanged, url, state.rawValue, errorCode.rawValue)
    }

    public func rtcEngineTranscodingUpdated(_ engine: WujiRtcEngineKit) {
        callback(RtcEngineEvents.TranscodingUpdated)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, streamInjectedStatusOfUrl url: String, uid: UInt, status: WujiInjectStreamStatus) {
        callback(RtcEngineEvents.StreamInjectedStatus, url, uid, status.rawValue)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, receiveStreamMessageFromUid uid: UInt, streamId: Int, data: Data) {
        callback(RtcEngineEvents.StreamMessage, uid, streamId, String(data: data, encoding: .utf8))
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didOccurStreamMessageErrorFromUid uid: UInt, streamId: Int, error: Int, missed: Int, cached: Int) {
        callback(RtcEngineEvents.StreamMessageError, uid, streamId, error, missed, cached)
    }

    public func rtcEngineMediaEngineDidLoaded(_ engine: WujiRtcEngineKit) {
        callback(RtcEngineEvents.MediaEngineLoadSuccess)
    }

    public func rtcEngineMediaEngineDidStartCall(_ engine: WujiRtcEngineKit) {
        callback(RtcEngineEvents.MediaEngineStartCallSuccess)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, channelMediaRelayStateDidChange state: WujiChannelMediaRelayState, error: WujiChannelMediaRelayError) {
        callback(RtcEngineEvents.ChannelMediaRelayStateChanged, state.rawValue, error.rawValue)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didReceive event: WujiChannelMediaRelayEvent) {
        callback(RtcEngineEvents.ChannelMediaRelayEvent, event.rawValue)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, firstRemoteVideoFrameOfUid uid: UInt, size: CGSize, elapsed: Int) {
        callback(RtcEngineEvents.FirstRemoteVideoFrame, uid, Int(size.width), Int(size.height), elapsed)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, firstRemoteAudioFrameOfUid uid: UInt, elapsed: Int) {
        callback(RtcEngineEvents.FirstRemoteAudioFrame, uid, elapsed)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, firstRemoteAudioFrameDecodedOfUid uid: UInt, elapsed: Int) {
        callback(RtcEngineEvents.FirstRemoteAudioDecoded, uid, elapsed)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didAudioMuted muted: Bool, byUid uid: UInt) {
        callback(RtcEngineEvents.UserMuteAudio, uid, muted)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, streamPublishedWithUrl url: String, errorCode: WujiErrorCode) {
        callback(RtcEngineEvents.StreamPublished, url, errorCode.rawValue)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, streamUnpublishedWithUrl url: String) {
        callback(RtcEngineEvents.StreamUnpublished, url)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, audioTransportStatsOfUid uid: UInt, delay: UInt, lost: UInt, rxKBitRate: UInt) {
        callback(RtcEngineEvents.RemoteAudioTransportStats, uid, delay, lost, rxKBitRate)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, videoTransportStatsOfUid uid: UInt, delay: UInt, lost: UInt, rxKBitRate: UInt) {
        callback(RtcEngineEvents.RemoteVideoTransportStats, uid, delay, lost, rxKBitRate)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didVideoEnabled enabled: Bool, byUid uid: UInt) {
        callback(RtcEngineEvents.UserEnableVideo, uid, enabled)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didLocalVideoEnabled enabled: Bool, byUid uid: UInt) {
        callback(RtcEngineEvents.UserEnableLocalVideo, uid, enabled)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, firstRemoteVideoDecodedOfUid uid: UInt, size: CGSize, elapsed: Int) {
        callback(RtcEngineEvents.FirstRemoteVideoDecoded, uid, Int(size.width), Int(size.height), elapsed)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, didMicrophoneEnabled enabled: Bool) {
        callback(RtcEngineEvents.MicrophoneEnabled, enabled)
    }

    public func rtcEngineConnectionDidInterrupted(_ engine: WujiRtcEngineKit) {
        callback(RtcEngineEvents.ConnectionInterrupted)
    }

    public func rtcEngineConnectionDidBanned(_ engine: WujiRtcEngineKit) {
        callback(RtcEngineEvents.ConnectionBanned)
    }

    public func rtcEngine(_ engine: WujiRtcEngineKit, audioQualityOfUid uid: UInt, quality: WujiNetworkQuality, delay: UInt, lost: UInt) {
        callback(RtcEngineEvents.AudioQuality, uid, quality.rawValue, delay, lost)
    }

    public func rtcEngineCameraDidReady(_ engine: WujiRtcEngineKit) {
        callback(RtcEngineEvents.CameraReady)
    }

    public func rtcEngineVideoDidStop(_ engine: WujiRtcEngineKit) {
        callback(RtcEngineEvents.VideoStopped)
    }
    
    func rtcEngine(_ engine: WujiRtcEngineKit, firstLocalAudioFramePublished elapsed: Int) {
        callback(RtcEngineEvents.FirstLocalAudioFramePublished, elapsed)
    }
    
    func rtcEngine(_ engine: WujiRtcEngineKit, firstLocalVideoFramePublished elapsed: Int) {
        callback(RtcEngineEvents.FirstLocalVideoFramePublished, elapsed)
    }
}
