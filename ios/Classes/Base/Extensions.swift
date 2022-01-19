//
//  Extensions.swift
//  RCTMeta
//
//  Created by 3 on 2020/12/7.
//

import Foundation
import MetaRTCFramework

extension MetaUserInfo {
    func toMap() -> Dictionary<String, Any?> {
        return [
            "uid": uid,
            "userAccount": userAccount
        ]
    }
}

extension MetaRtcLocalAudioStats {
    func toMap() -> Dictionary<String, Any?> {
        return [
            "numChannels": numChannels,
            "sentSampleRate": sentSampleRate,
            "sentBitrate": sentBitrate,
//            "txPacketLossRate": txPacketLossRate
        ]
    }
}

extension MetaChannelStats {
    func toMap() -> Dictionary<String, Any?> {
        return [
            "totalDuration": duration,
            "txBytes": txBytes,
            "rxBytes": rxBytes,
            "txAudioBytes": txAudioBytes,
            "txVideoBytes": txVideoBytes,
            "rxAudioBytes": rxAudioBytes,
            "rxVideoBytes": rxVideoBytes,
            "txKBitRate": txKBitrate,
            "rxKBitRate": rxKBitrate,
            "txAudioKBitRate": txAudioKBitrate,
            "rxAudioKBitRate": rxAudioKBitrate,
            "txVideoKBitRate": txVideoKBitrate,
            "rxVideoKBitRate": rxVideoKBitrate,
            "users": userCount,
            "lastmileDelay": lastmileDelay,
            "txPacketLossRate": txPacketLossRate,
            "rxPacketLossRate": rxPacketLossRate,
            "cpuTotalUsage": cpuTotalUsage,
            "cpuAppUsage": cpuAppUsage,
            "gatewayRtt": gatewayRtt,
            "memoryAppUsageRatio": memoryAppUsageRatio,
            "memoryTotalUsageRatio": memoryTotalUsageRatio,
            "memoryAppUsageInKbytes": memoryAppUsageInKbytes
        ]
    }
}

extension CGRect {
    func toMap() -> Dictionary<String, Any?> {
        return [
            "left": origin.x,
            "top": origin.y,
            "right": origin.x + size.width,
            "bottom": origin.y + size.height
        ]
    }
}

extension MetaRtcRemoteAudioStats {
    func toMap() -> Dictionary<String, Any?> {
        return [
            "uid": uid,
            "quality": quality,
            "networkTransportDelay": networkTransportDelay,
            "jitterBufferDelay": jitterBufferDelay,
            "audioLossRate": audioLossRate,
            "numChannels": numChannels,
            "receivedSampleRate": receivedSampleRate,
            "receivedBitrate": receivedBitrate,
            "totalFrozenTime": totalFrozenTime,
            "frozenRate": frozenRate,
            "totalActiveTime": totalActiveTime,
//            "publishDuration": publishDuration
        ]
    }
}

extension MetaRtcLocalVideoStats {
    func toMap() -> Dictionary<String, Any?> {
        return [
            "sentBitrate": sentBitrate,
            "sentFrameRate": sentFrameRate,
            "encoderOutputFrameRate": encoderOutputFrameRate,
            "rendererOutputFrameRate": rendererOutputFrameRate,
            "targetBitrate": sentTargetBitrate,
            "targetFrameRate": sentTargetFrameRate,
            "qualityAdaptIndication": qualityAdaptIndication.rawValue,
            "encodedBitrate": encodedBitrate,
            "encodedFrameWidth": encodedFrameWidth,
            "encodedFrameHeight": encodedFrameHeight,
            "encodedFrameCount": encodedFrameCount,
            "codecType": codecType.rawValue,
//            "txPacketLossRate": txPacketLossRate,
//            "captureFrameRate": captureFrameRate
        ]
    }
}

extension MetaRtcRemoteVideoStats {
    func toMap() -> Dictionary<String, Any?> {
        return [
            "uid": uid,
            "delay": delay,
            "width": width,
            "height": height,
            "receivedBitrate": receivedBitrate,
            "decoderOutputFrameRate": decoderOutputFrameRate,
            "rendererOutputFrameRate": rendererOutputFrameRate,
            "packetLossRate": packetLossRate,
            "rxStreamType": rxStreamType.rawValue,
            "totalFrozenTime": totalFrozenTime,
            "frozenRate": frozenRate,
            "totalActiveTime": totalActiveTime,
//            "publishDuration": publishDuration
        ]
    }
}

extension MetaRtcAudioVolumeInfo {
    func toMap() -> Dictionary<String, Any?> {
        return [
            "uid": uid,
            "volume": volume,
            "vad": vad,
            "channelId": channelId
        ]
    }
}

extension Array where Element: MetaRtcAudioVolumeInfo {
    func toMapList() -> Array<Dictionary<String, Any?>> {
        var list = [Dictionary<String, Any?>]()
        self.forEach { (item) in
            list.append(item.toMap())
        }
        return list
    }
}

extension MetaLastmileProbeOneWayResult {
    func toMap() -> Dictionary<String, Any?> {
        return [
            "packetLossRate": packetLossRate,
            "jitter": jitter,
            "availableBandwidth": availableBandwidth
        ]
    }
}

extension MetaLastmileProbeResult {
    func toMap() -> Dictionary<String, Any?> {
        return [
            "state": state.rawValue,
            "rtt": rtt,
            "uplinkReport": uplinkReport.toMap(),
            "downlinkReport": downlinkReport.toMap()
        ]
    }
}

extension MetaFacePositionInfo {
    func toMap() -> Dictionary<String, Any?> {
        return [
            "x": x,
            "y": y,
            "width": width,
            "height": height,
            "distance": distance
        ]
    }
}

extension Array where Element: MetaFacePositionInfo {
    func toMapList() -> Array<Dictionary<String, Any?>> {
        var list = [Dictionary<String, Any?>]()
        self.forEach { (item) in
            list.append(item.toMap())
        }
        return list
    }
}
