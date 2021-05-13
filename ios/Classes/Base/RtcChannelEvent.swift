//
//  RtcChannelEvent.swift
//  RCTWuji
//
//  Created by 3 on 2020/12/7.
//

import Foundation
import WujiRTCFramework

class RtcChannelEvents {
    static let Warning = "Warning"
    static let Error = "Error"
    static let JoinChannelSuccess = "JoinChannelSuccess"
    static let RejoinChannelSuccess = "RejoinChannelSuccess"
    static let LeaveChannel = "LeaveChannel"
    static let ClientRoleChanged = "ClientRoleChanged"
    static let UserJoined = "UserJoined"
    static let UserOffline = "UserOffline"
    static let ConnectionStateChanged = "ConnectionStateChanged"
    static let ConnectionLost = "ConnectionLost"
    static let TokenPrivilegeWillExpire = "TokenPrivilegeWillExpire"
    static let RequestToken = "RequestToken"
    static let ActiveSpeaker = "ActiveSpeaker"
    static let VideoSizeChanged = "VideoSizeChanged"
    static let RemoteVideoStateChanged = "RemoteVideoStateChanged"
    static let RemoteAudioStateChanged = "RemoteAudioStateChanged"
    static let LocalPublishFallbackToAudioOnly = "LocalPublishFallbackToAudioOnly"
    static let RemoteSubscribeFallbackToAudioOnly = "RemoteSubscribeFallbackToAudioOnly"
    static let RtcStats = "RtcStats"
    static let NetworkQuality = "NetworkQuality"
    static let RemoteVideoStats = "RemoteVideoStats"
    static let RemoteAudioStats = "RemoteAudioStats"
    static let RtmpStreamingStateChanged = "RtmpStreamingStateChanged"
    static let TranscodingUpdated = "TranscodingUpdated"
    static let StreamInjectedStatus = "StreamInjectedStatus"
    static let StreamMessage = "StreamMessage"
    static let StreamMessageError = "StreamMessageError"
    static let ChannelMediaRelayStateChanged = "ChannelMediaRelayStateChanged"
    static let ChannelMediaRelayEvent = "ChannelMediaRelayEvent"
    static let MetadataReceived = "MetadataReceived"
    static let AudioPublishStateChanged = "AudioPublishStateChanged"
    static let VideoPublishStateChanged = "VideoPublishStateChanged"
    static let AudioSubscribeStateChanged = "AudioSubscribeStateChanged"
    static let VideoSubscribeStateChanged = "VideoSubscribeStateChanged"
    static let RtmpStreamingEvent = "RtmpStreamingEvent"

    static func toMap() -> Dictionary<String, String> {
        return [
            "Warning": Warning,
            "Error": Error,
            "JoinChannelSuccess": JoinChannelSuccess,
            "RejoinChannelSuccess": RejoinChannelSuccess,
            "LeaveChannel": LeaveChannel,
            "ClientRoleChanged": ClientRoleChanged,
            "UserJoined": UserJoined,
            "UserOffline": UserOffline,
            "ConnectionStateChanged": ConnectionStateChanged,
            "ConnectionLost": ConnectionLost,
            "TokenPrivilegeWillExpire": TokenPrivilegeWillExpire,
            "RequestToken": RequestToken,
            "ActiveSpeaker": ActiveSpeaker,
            "VideoSizeChanged": VideoSizeChanged,
            "RemoteVideoStateChanged": RemoteVideoStateChanged,
            "RemoteAudioStateChanged": RemoteAudioStateChanged,
            "LocalPublishFallbackToAudioOnly": LocalPublishFallbackToAudioOnly,
            "RemoteSubscribeFallbackToAudioOnly": RemoteSubscribeFallbackToAudioOnly,
            "RtcStats": RtcStats,
            "NetworkQuality": NetworkQuality,
            "RemoteVideoStats": RemoteVideoStats,
            "RemoteAudioStats": RemoteAudioStats,
            "RtmpStreamingStateChanged": RtmpStreamingStateChanged,
            "TranscodingUpdated": TranscodingUpdated,
            "StreamInjectedStatus": StreamInjectedStatus,
            "StreamMessage": StreamMessage,
            "StreamMessageError": StreamMessageError,
            "ChannelMediaRelayStateChanged": ChannelMediaRelayStateChanged,
            "ChannelMediaRelayEvent": ChannelMediaRelayEvent,
            "MetadataReceived": MetadataReceived,
            "AudioPublishStateChanged": AudioPublishStateChanged,
            "VideoPublishStateChanged": VideoPublishStateChanged,
            "AudioSubscribeStateChanged": AudioSubscribeStateChanged,
            "VideoSubscribeStateChanged": VideoSubscribeStateChanged,
            "RtmpStreamingEvent": RtmpStreamingEvent,
        ]
    }
}

class RtcChannelEventHandler: NSObject {
    static let PREFIX = "co.wuji.rtc."

    var emitter: (_ methodName: String, _ data: Dictionary<String, Any?>?) -> Void

    init(_ emitter: @escaping (_ methodName: String, _ data: Dictionary<String, Any?>?) -> Void) {
        self.emitter = emitter
    }

    private func callback(_ methodName: String, _ channel: WujiRtcChannel, _ data: Any?...) {
        emitter(methodName, [
            "channelId": channel.getId(),
            "data": data
        ])
    }
}

extension RtcChannelEventHandler: WujiRtcChannelDelegate {
    public func rtcChannel(_ rtcChannel: WujiRtcChannel, didOccurWarning warningCode: WujiWarningCode) {
        callback(RtcChannelEvents.Warning, rtcChannel, warningCode.rawValue)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, didOccurError errorCode: WujiErrorCode) {
        callback(RtcChannelEvents.Error, rtcChannel, errorCode.rawValue)
    }

    public func rtcChannelDidJoin(_ rtcChannel: WujiRtcChannel, withUid uid: UInt, elapsed: Int) {
        callback(RtcChannelEvents.JoinChannelSuccess, rtcChannel, rtcChannel.getId(), uid, elapsed)
    }

    public func rtcChannelDidRejoin(_ rtcChannel: WujiRtcChannel, withUid uid: UInt, elapsed: Int) {
        callback(RtcChannelEvents.RejoinChannelSuccess, rtcChannel, rtcChannel.getId(), uid, elapsed)
    }

    public func rtcChannelDidLeave(_ rtcChannel: WujiRtcChannel, with stats: WujiChannelStats) {
        callback(RtcChannelEvents.LeaveChannel, rtcChannel, stats.toMap())
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, didClientRoleChanged oldRole: WujiClientRole, newRole: WujiClientRole) {
        callback(RtcChannelEvents.ClientRoleChanged, rtcChannel, oldRole.rawValue, newRole.rawValue)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, didJoinedOfUid uid: UInt, elapsed: Int) {
        callback(RtcChannelEvents.UserJoined, rtcChannel, uid, elapsed)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, didOfflineOfUid uid: UInt, reason: WujiUserOfflineReason) {
        callback(RtcChannelEvents.UserOffline, rtcChannel, uid, reason.rawValue)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, connectionChangedTo state: WujiConnectionStateType, reason: WujiConnectionChangedReason) {
        callback(RtcChannelEvents.ConnectionStateChanged, rtcChannel, state.rawValue, reason.rawValue)
    }

    public func rtcChannelDidLost(_ rtcChannel: WujiRtcChannel) {
        callback(RtcChannelEvents.ConnectionLost, rtcChannel)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, tokenPrivilegeWillExpire token: String) {
        callback(RtcChannelEvents.TokenPrivilegeWillExpire, rtcChannel, token)
    }

    public func rtcChannelRequestToken(_ rtcChannel: WujiRtcChannel) {
        callback(RtcChannelEvents.RequestToken, rtcChannel)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, activeSpeaker speakerUid: UInt) {
        callback(RtcChannelEvents.ActiveSpeaker, rtcChannel, speakerUid)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, videoSizeChangedOfUid uid: UInt, size: CGSize, rotation: Int) {
        callback(RtcChannelEvents.VideoSizeChanged, rtcChannel, uid, Int(size.width), Int(size.height), rotation)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, remoteVideoStateChangedOfUid uid: UInt, state: WujiVideoRemoteState, reason: WujiVideoRemoteStateReason, elapsed: Int) {
        callback(RtcChannelEvents.RemoteVideoStateChanged, rtcChannel, uid, state.rawValue, reason.rawValue, elapsed)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, remoteAudioStateChangedOfUid uid: UInt, state: WujiAudioRemoteState, reason: WujiVideoRemoteStateReason, elapsed: Int) {
        callback(RtcChannelEvents.RemoteAudioStateChanged, rtcChannel, uid, state.rawValue, reason.rawValue, elapsed)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, didLocalPublishFallbackToAudioOnly isFallbackOrRecover: Bool) {
        callback(RtcChannelEvents.LocalPublishFallbackToAudioOnly, rtcChannel, isFallbackOrRecover)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, didRemoteSubscribeFallbackToAudioOnly isFallbackOrRecover: Bool, byUid uid: UInt) {
        callback(RtcChannelEvents.RemoteSubscribeFallbackToAudioOnly, rtcChannel, uid, isFallbackOrRecover)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, reportRtcStats stats: WujiChannelStats) {
        callback(RtcChannelEvents.RtcStats, rtcChannel, stats.toMap())
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, networkQuality uid: UInt, txQuality: WujiNetworkQuality, rxQuality: WujiNetworkQuality) {
        callback(RtcChannelEvents.NetworkQuality, rtcChannel, uid, txQuality.rawValue, rxQuality.rawValue)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, remoteVideoStats stats: WujiRtcRemoteVideoStats) {
        callback(RtcChannelEvents.RemoteVideoStats, rtcChannel, stats.toMap())
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, remoteAudioStats stats: WujiRtcRemoteAudioStats) {
        callback(RtcChannelEvents.RemoteAudioStats, rtcChannel, stats.toMap())
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, rtmpStreamingChangedToState url: String, state: WujiRtmpStreamingState, errorCode: WujiRtmpStreamingErrorCode) {
        callback(RtcChannelEvents.RtmpStreamingStateChanged, rtcChannel, url, state.rawValue, errorCode.rawValue)
    }

    public func rtcChannelTranscodingUpdated(_ rtcChannel: WujiRtcChannel) {
        callback(RtcChannelEvents.TranscodingUpdated, rtcChannel)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, streamInjectedStatusOfUrl url: String, uid: UInt, status: WujiInjectStreamStatus) {
        callback(RtcChannelEvents.StreamInjectedStatus, rtcChannel, url, uid, status.rawValue)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, receiveStreamMessageFromUid uid: UInt, streamId: Int, data: Data) {
        callback(RtcChannelEvents.StreamMessage, rtcChannel, uid, streamId, String(data: data, encoding: .utf8))
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, didOccurStreamMessageErrorFromUid uid: UInt, streamId: Int, error: Int, missed: Int, cached: Int) {
        callback(RtcChannelEvents.StreamMessageError, rtcChannel, uid, streamId, error, missed, cached)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, channelMediaRelayStateDidChange state: WujiChannelMediaRelayState, error: WujiChannelMediaRelayError) {
        callback(RtcChannelEvents.ChannelMediaRelayStateChanged, rtcChannel, state.rawValue, error.rawValue)
    }

    public func rtcChannel(_ rtcChannel: WujiRtcChannel, didReceive event: WujiChannelMediaRelayEvent) {
        callback(RtcChannelEvents.ChannelMediaRelayEvent, rtcChannel, event.rawValue)
    }
}
