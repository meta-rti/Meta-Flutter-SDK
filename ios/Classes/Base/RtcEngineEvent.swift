//
//  RtcEngineEvent.swift
//  RCTMeta
//
//  Created by 3 on 2020/12/7.
//

import Foundation
import MetaRTCFramework
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
    static let ParametersResponse = "ParametersResponse"
//    static let

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
            "ParametersResponse":ParametersResponse,
        ]
    }
}

class RtcEngineEventHandler: NSObject {
    static let PREFIX = "co.meta.rtc."

    var emitter: (_ methodName: String, _ data: Dictionary<String, Any?>?) -> Void

    init(emitter: @escaping (_ methodName: String, _ data: Dictionary<String, Any?>?) -> Void) {
        self.emitter = emitter
    }

    private func callback(_ methodName: String, _ data: Any?...) {
        emitter(methodName, ["data": data])
    }
}

extension RtcEngineEventHandler: MetaRtcEngineDelegate {
    public func rtcEngine(_ engine: MetaRtcEngineKit, didOccurWarning warningCode: MetaWarningCode) {
        callback(RtcEngineEvents.Warning, warningCode.rawValue)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didOccurError errorCode: MetaErrorCode) {
        callback(RtcEngineEvents.Error, errorCode.rawValue)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didApiCallExecute error: Int, api: String, result: String) {
        callback(RtcEngineEvents.ApiCallExecuted, error, api, result)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didJoinChannel channel: String, withUid uid: UInt, elapsed: Int) {
        callback(RtcEngineEvents.JoinChannelSuccess, channel, uid, elapsed)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didRejoinChannel channel: String, withUid uid: UInt, elapsed: Int) {
        callback(RtcEngineEvents.RejoinChannelSuccess, channel, uid, elapsed)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didLeaveChannelWith stats: MetaChannelStats) {
        callback(RtcEngineEvents.LeaveChannel, stats.toMap())
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didRegisteredLocalUser userAccount: String, withUid uid: UInt) {
        callback(RtcEngineEvents.LocalUserRegistered, uid, userAccount)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didUpdatedUserInfo userInfo: MetaUserInfo, withUid uid: UInt) {
        callback(RtcEngineEvents.UserInfoUpdated, uid, userInfo.toMap())
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didClientRoleChanged oldRole: MetaClientRole, newRole: MetaClientRole) {
        callback(RtcEngineEvents.ClientRoleChanged, oldRole.rawValue, newRole.rawValue)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didJoinedOfUid uid: UInt, elapsed: Int) {
        callback(RtcEngineEvents.UserJoined, uid, elapsed)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didOfflineOfUid uid: UInt, reason: MetaUserOfflineReason) {
        callback(RtcEngineEvents.UserOffline, uid, reason.rawValue)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, connectionChangedTo state: MetaConnectionStateType, reason: MetaConnectionChangedReason) {
        callback(RtcEngineEvents.ConnectionStateChanged, state.rawValue, reason.rawValue)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, networkTypeChangedTo type: MetaNetworkType) {
        callback(RtcEngineEvents.NetworkTypeChanged, type.rawValue)
    }

    public func rtcEngineConnectionDidLost(_ engine: MetaRtcEngineKit) {
        callback(RtcEngineEvents.ConnectionLost)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, tokenPrivilegeWillExpire token: String) {
        callback(RtcEngineEvents.TokenPrivilegeWillExpire, token)
    }

    public func rtcEngineRequestToken(_ engine: MetaRtcEngineKit) {
        callback(RtcEngineEvents.RequestToken)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, reportAudioVolumeIndicationOfSpeakers speakers: [MetaRtcAudioVolumeInfo], totalVolume: Int) {
        callback(RtcEngineEvents.AudioVolumeIndication, speakers.toMapList(), totalVolume)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, activeSpeaker speakerUid: UInt) {
        callback(RtcEngineEvents.ActiveSpeaker, speakerUid)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, firstLocalAudioFrame elapsed: Int) {
        callback(RtcEngineEvents.FirstLocalAudioFrame, elapsed)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, firstLocalVideoFrameWith size: CGSize, elapsed: Int) {
        callback(RtcEngineEvents.FirstLocalVideoFrame, Int(size.width), Int(size.height), elapsed)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didVideoMuted muted: Bool, byUid uid: UInt) {
        callback(RtcEngineEvents.UserMuteVideo, uid, muted)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, videoSizeChangedOfUid uid: UInt, size: CGSize, rotation: Int) {
        callback(RtcEngineEvents.VideoSizeChanged, uid, Int(size.width), Int(size.height), rotation)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, remoteVideoStateChangedOfUid uid: UInt, state: MetaVideoRemoteState, reason: MetaVideoRemoteStateReason, elapsed: Int) {
        callback(RtcEngineEvents.RemoteVideoStateChanged, uid, state.rawValue, reason.rawValue, elapsed)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, localVideoStateChange state: MetaLocalVideoStreamState, error: MetaLocalVideoStreamError) {
        callback(RtcEngineEvents.LocalVideoStateChanged, state.rawValue, error.rawValue)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, remoteAudioStateChangedOfUid uid: UInt, state: MetaAudioRemoteState, reason: MetaAudioRemoteStateReason, elapsed: Int) {
        callback(RtcEngineEvents.RemoteAudioStateChanged, uid, state.rawValue, reason.rawValue, elapsed)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, localAudioStateChange state: MetaAudioLocalState, error: MetaAudioLocalError) {
        callback(RtcEngineEvents.LocalAudioStateChanged, state.rawValue, error.rawValue)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didLocalPublishFallbackToAudioOnly isFallbackOrRecover: Bool) {
        callback(RtcEngineEvents.LocalPublishFallbackToAudioOnly, isFallbackOrRecover)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didRemoteSubscribeFallbackToAudioOnly isFallbackOrRecover: Bool, byUid uid: UInt) {
        callback(RtcEngineEvents.RemoteSubscribeFallbackToAudioOnly, uid, isFallbackOrRecover)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didAudioRouteChanged routing: MetaAudioOutputRouting) {
        callback(RtcEngineEvents.AudioRouteChanged, routing.rawValue)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, cameraFocusDidChangedTo rect: CGRect) {
        callback(RtcEngineEvents.CameraFocusAreaChanged, rect.toMap())
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, cameraExposureDidChangedTo rect: CGRect) {
        callback(RtcEngineEvents.CameraExposureAreaChanged, rect.toMap())
    }

    func rtcEngine(_ engine: MetaRtcEngineKit, facePositionDidChangeWidth width: Int32, previewHeight height: Int32, faces: [MetaFacePositionInfo]?) {
        callback(RtcEngineEvents.FacePositionChanged, width, height, faces?.toMapList())
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, reportRtcStats stats: MetaChannelStats) {
        callback(RtcEngineEvents.RtcStats, stats.toMap())
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, lastmileQuality quality: MetaNetworkQuality) {
        callback(RtcEngineEvents.LastmileQuality, quality.rawValue)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, networkQuality uid: UInt, txQuality: MetaNetworkQuality, rxQuality: MetaNetworkQuality) {
        callback(RtcEngineEvents.NetworkQuality, uid, txQuality.rawValue, rxQuality.rawValue)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, lastmileProbeTest result: MetaLastmileProbeResult) {
        callback(RtcEngineEvents.LastmileProbeResult, result.toMap())
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, localVideoStats stats: MetaRtcLocalVideoStats) {
        callback(RtcEngineEvents.LocalVideoStats, stats.toMap())
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, localAudioStats stats: MetaRtcLocalAudioStats) {
        callback(RtcEngineEvents.LocalAudioStats, stats.toMap())
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, remoteVideoStats stats: MetaRtcRemoteVideoStats) {
        callback(RtcEngineEvents.RemoteVideoStats, stats.toMap())
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, remoteAudioStats stats: MetaRtcRemoteAudioStats) {
        callback(RtcEngineEvents.RemoteAudioStats, stats.toMap())
    }

    public func rtcEngineLocalAudioMixingDidFinish(_ engine: MetaRtcEngineKit) {
        callback(RtcEngineEvents.AudioMixingFinished)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, localAudioMixingStateDidChanged state: MetaAudioMixingStateCode, errorCode: MetaAudioMixingErrorCode) {
        callback(RtcEngineEvents.AudioMixingStateChanged, state.rawValue, errorCode.rawValue)
    }

    public func rtcEngineRemoteAudioMixingDidStart(_ engine: MetaRtcEngineKit) {
        // TODO Not in Android
    }

    public func rtcEngineRemoteAudioMixingDidFinish(_ engine: MetaRtcEngineKit) {
        // TODO Not in Android
    }

    public func rtcEngineDidAudioEffectFinish(_ engine: MetaRtcEngineKit, soundId: Int) {
        callback(RtcEngineEvents.AudioEffectFinished, soundId)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, rtmpStreamingChangedToState url: String, state: MetaRtmpStreamingState, errorCode: MetaRtmpStreamingErrorCode) {
        callback(RtcEngineEvents.RtmpStreamingStateChanged, url, state.rawValue, errorCode.rawValue)
    }

    public func rtcEngineTranscodingUpdated(_ engine: MetaRtcEngineKit) {
        callback(RtcEngineEvents.TranscodingUpdated)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, streamInjectedStatusOfUrl url: String, uid: UInt, status: MetaInjectStreamStatus) {
        callback(RtcEngineEvents.StreamInjectedStatus, url, uid, status.rawValue)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, receiveStreamMessageFromUid uid: UInt, streamId: Int, data: Data) {
        callback(RtcEngineEvents.StreamMessage, uid, streamId, String(data: data, encoding: .utf8))
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didOccurStreamMessageErrorFromUid uid: UInt, streamId: Int, error: Int, missed: Int, cached: Int) {
        callback(RtcEngineEvents.StreamMessageError, uid, streamId, error, missed, cached)
    }

    public func rtcEngineMediaEngineDidLoaded(_ engine: MetaRtcEngineKit) {
        callback(RtcEngineEvents.MediaEngineLoadSuccess)
    }

    public func rtcEngineMediaEngineDidStartCall(_ engine: MetaRtcEngineKit) {
        callback(RtcEngineEvents.MediaEngineStartCallSuccess)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, channelMediaRelayStateDidChange state: MetaChannelMediaRelayState, error: MetaChannelMediaRelayError) {
        callback(RtcEngineEvents.ChannelMediaRelayStateChanged, state.rawValue, error.rawValue)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didReceive event: MetaChannelMediaRelayEvent) {
        callback(RtcEngineEvents.ChannelMediaRelayEvent, event.rawValue)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, firstRemoteVideoFrameOfUid uid: UInt, size: CGSize, elapsed: Int) {
        callback(RtcEngineEvents.FirstRemoteVideoFrame, uid, Int(size.width), Int(size.height), elapsed)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, firstRemoteAudioFrameOfUid uid: UInt, elapsed: Int) {
        callback(RtcEngineEvents.FirstRemoteAudioFrame, uid, elapsed)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, firstRemoteAudioFrameDecodedOfUid uid: UInt, elapsed: Int) {
        callback(RtcEngineEvents.FirstRemoteAudioDecoded, uid, elapsed)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didAudioMuted muted: Bool, byUid uid: UInt) {
        callback(RtcEngineEvents.UserMuteAudio, uid, muted)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, streamPublishedWithUrl url: String, errorCode: MetaErrorCode) {
        callback(RtcEngineEvents.StreamPublished, url, errorCode.rawValue)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, streamUnpublishedWithUrl url: String) {
        callback(RtcEngineEvents.StreamUnpublished, url)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, audioTransportStatsOfUid uid: UInt, delay: UInt, lost: UInt, rxKBitRate: UInt) {
        callback(RtcEngineEvents.RemoteAudioTransportStats, uid, delay, lost, rxKBitRate)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, videoTransportStatsOfUid uid: UInt, delay: UInt, lost: UInt, rxKBitRate: UInt) {
        callback(RtcEngineEvents.RemoteVideoTransportStats, uid, delay, lost, rxKBitRate)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didVideoEnabled enabled: Bool, byUid uid: UInt) {
        callback(RtcEngineEvents.UserEnableVideo, uid, enabled)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didLocalVideoEnabled enabled: Bool, byUid uid: UInt) {
        callback(RtcEngineEvents.UserEnableLocalVideo, uid, enabled)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, firstRemoteVideoDecodedOfUid uid: UInt, size: CGSize, elapsed: Int) {
        callback(RtcEngineEvents.FirstRemoteVideoDecoded, uid, Int(size.width), Int(size.height), elapsed)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, didMicrophoneEnabled enabled: Bool) {
        callback(RtcEngineEvents.MicrophoneEnabled, enabled)
    }

    public func rtcEngineConnectionDidInterrupted(_ engine: MetaRtcEngineKit) {
        callback(RtcEngineEvents.ConnectionInterrupted)
    }

    public func rtcEngineConnectionDidBanned(_ engine: MetaRtcEngineKit) {
        callback(RtcEngineEvents.ConnectionBanned)
    }

    public func rtcEngine(_ engine: MetaRtcEngineKit, audioQualityOfUid uid: UInt, quality: MetaNetworkQuality, delay: UInt, lost: UInt) {
        callback(RtcEngineEvents.AudioQuality, uid, quality.rawValue, delay, lost)
    }

    public func rtcEngineCameraDidReady(_ engine: MetaRtcEngineKit) {
        callback(RtcEngineEvents.CameraReady)
    }

    public func rtcEngineVideoDidStop(_ engine: MetaRtcEngineKit) {
        callback(RtcEngineEvents.VideoStopped)
    }
    
    func rtcEngine(_ engine: MetaRtcEngineKit, firstLocalAudioFramePublished elapsed: Int) {
        callback(RtcEngineEvents.FirstLocalAudioFramePublished, elapsed)
    }
    
    func rtcEngine(_ engine: MetaRtcEngineKit, firstLocalVideoFramePublished elapsed: Int) {
        callback(RtcEngineEvents.FirstLocalVideoFramePublished, elapsed)
    }
    func rtcEngine(_ engine: MetaRtcEngineKit, type:Int, onParametersResponse response: String){
        callback(RtcEngineEvents.ParametersResponse, type,response)
    }
}
