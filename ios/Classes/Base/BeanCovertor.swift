//
//  BeanCovertor.swift
//  RCTWuji
//
//  Created by 3 on 2020/12/7.
//

import Foundation
import WujiRTCFramework

func mapToPoint(_ map: Dictionary<String, Any>) -> CGPoint {
    var point = CGPoint()
    if let x = map["x"] as? Int {
        point.x = CGFloat(x)
    }
    if let y = map["y"] as? Int {
        point.y = CGFloat(y)
    }
    return point
}

func mapToSize(_ map: Dictionary<String, Any>) -> CGSize {
    var size = CGSize()
    if let width = map["width"] as? Int {
        size.width = CGFloat(width)
    }
    if let height = map["height"] as? Int {
        size.height = CGFloat(height)
    }
    return size
}

func mapToRect(_ map: Dictionary<String, Any>) -> CGRect {
    return CGRect(
            origin: mapToPoint(map),
            size: mapToSize(map)
    )
}

func mapToVideoEncoderConfiguration(_ map: Dictionary<String, Any>) -> WujiVideoEncoderConfiguration {
    let config = WujiVideoEncoderConfiguration()
    if let dimensions = map["dimensions"] as? Dictionary<String, Any> {
        config.dimensions = mapToSize(dimensions)
    }
    if let frameRate = map["frameRate"] as? Int {
        config.frameRate = frameRate
    }
    if let minFrameRate = map["minFrameRate"] as? Int {
        config.minFrameRate = minFrameRate
    }
    if let bitrate = map["bitrate"] as? Int {
        config.bitrate = bitrate
    }
    if let minBitrate = map["minBitrate"] as? Int {
        config.minBitrate = minBitrate
    }
    if let orientationMode = map["orientationMode"] as? Int {
        if let orientationMode = WujiVideoOutputOrientationMode(rawValue: orientationMode) {
            config.orientationMode = orientationMode
        }
    }
    if let degradationPreference = map["degradationPrefer"] as? Int {
        if let degradationPreference = WujiDegradationPreference(rawValue: degradationPreference) {
            config.degradationPreference = degradationPreference
        }
    }
    if let mirrorMode = map["mirrorMode"] as? Int {
        if let mirrorMode = WujiVideoMirrorMode(rawValue: UInt(mirrorMode)) {
            config.mirrorMode = mirrorMode
        }
    }
    return config
}

func mapToBeautyOptions(_ map: Dictionary<String, Any>) -> WujiBeautyOptions {
    let options = WujiBeautyOptions()
    if let lighteningContrastLevel = map["lighteningContrastLevel"] as? Int {
        if let lighteningContrastLevel = WujiLighteningContrastLevel(rawValue: UInt(lighteningContrastLevel)) {
            options.lighteningContrastLevel = lighteningContrastLevel
        }
    }
    if let lighteningLevel = map["lighteningLevel"] as? Float {
        options.lighteningLevel = lighteningLevel
    }
    if let smoothnessLevel = map["smoothnessLevel"] as? Float {
        options.smoothnessLevel = smoothnessLevel
    }
    if let rednessLevel = map["rednessLevel"] as? Float {
        options.rednessLevel = rednessLevel
    }
    return options
}

func mapToWujiImage(_ map: Dictionary<String, Any>) -> WujiImage {
    let image = WujiImage()
    if let url = map["url"] as? String {
        if let url = URL(string: url) {
            image.url = url
        }
    }
    image.rect = mapToRect(map)
    return image
}

func mapToTranscodingUser(_ map: Dictionary<String, Any>) -> WujiLiveTranscodingUser {
    let user = WujiLiveTranscodingUser()
    if let uid = map["uid"] as? Int {
        user.uid = UInt(uid)
    }
    user.rect = mapToRect(map)
    if let zOrder = map["zOrder"] as? Int {
        user.zOrder = zOrder
    }
    if let alpha = map["alpha"] as? Double {
        user.alpha = alpha
    }
    if let audioChannel = map["audioChannel"] as? Int {
        user.audioChannel = audioChannel
    }
    return user
}

func mapToColor(_ map: Dictionary<String, Any>) -> UIColor {
    return UIColor(
            red: CGFloat(map["red"] as! Int),
            green: CGFloat(map["green"] as! Int),
            blue: CGFloat(map["blue"] as! Int),
            alpha: 1.0
    )
}

func mapToLiveTranscoding(_ map: Dictionary<String, Any>) -> WujiLiveTranscoding {
    let transcoding = WujiLiveTranscoding.default()
    transcoding.size = mapToSize(map)
    if let videoBitrate = map["videoBitrate"] as? Int {
        transcoding.videoBitrate = videoBitrate
    }
    if let videoFramerate = map["videoFramerate"] as? Int {
        transcoding.videoFramerate = videoFramerate
    }
    if let lowLatency = map["lowLatency"] as? Bool {
        transcoding.lowLatency = lowLatency
    }
    if let videoGop = map["videoGop"] as? Int {
        transcoding.videoGop = videoGop
    }
    if let watermark = map["watermark"] as? Dictionary<String, Any> {
        transcoding.watermark = mapToWujiImage(watermark)
    }
    if let backgroundImage = map["backgroundImage"] as? Dictionary<String, Any> {
        transcoding.backgroundImage = mapToWujiImage(backgroundImage)
    }
    if let audioSampleRate = map["audioSampleRate"] as? Int {
        if let audioSampleRate = WujiAudioSampleRateType(rawValue: audioSampleRate) {
            transcoding.audioSampleRate = audioSampleRate
        }
    }
    if let audioBitrate = map["audioBitrate"] as? Int {
        transcoding.audioBitrate = audioBitrate
    }
    if let audioChannels = map["audioChannels"] as? Int {
        transcoding.audioChannels = audioChannels
    }
    if let audioCodecProfile = map["audioCodecProfile"] as? Int {
        if let audioCodecProfile = WujiAudioCodecProfileType(rawValue: audioCodecProfile) {
            transcoding.audioCodecProfile = audioCodecProfile
        }
    }
    if let videoCodecProfile = map["videoCodecProfile"] as? Int {
        if let videoCodecProfile = WujiVideoCodecProfileType(rawValue: videoCodecProfile) {
            transcoding.videoCodecProfile = videoCodecProfile
        }
    }
    if let backgroundColor = map["backgroundColor"] as? Dictionary<String, Any> {
        transcoding.backgroundColor = mapToColor(backgroundColor)
    }
    if let userConfigExtraInfo = map["userConfigExtraInfo"] as? String {
        transcoding.transcodingExtraInfo = userConfigExtraInfo
    }
    if let transcodingUsers = map["transcodingUsers"] as? Array<Any> {
        transcodingUsers.forEach { (item) in
            if let item = item as? Dictionary<String, Any> {
                transcoding.add(mapToTranscodingUser(item))
            }
        }
    }
    return transcoding
}

func mapToChannelMediaInfo(_ map: Dictionary<String, Any>) -> WujiChannelMediaRelayInfo {
    let info = WujiChannelMediaRelayInfo()
    if let channelName = map["channelName"] as? String {
        info.channelName = channelName
    }
    if let token = map["token"] as? String {
        info.token = token
    }
    if let uid = map["uid"] as? UInt {
        info.uid = uid
    }
    return info
}

func mapToChannelMediaRelayConfiguration(_ map: Dictionary<String, Any>) -> WujiChannelMediaRelayConfiguration {
    let config = WujiChannelMediaRelayConfiguration()
    if let srcInfo = map["srcInfo"] as? Dictionary<String, Any> {
        config.sourceInfo = mapToChannelMediaInfo(srcInfo)
    }
    if let destInfos = map["destInfos"] as? Array<Any> {
        destInfos.forEach { (item) in
            if let item = item as? Dictionary<String, Any> {
                let info = mapToChannelMediaInfo(item)
                config.setDestinationInfo(info, forChannelName: info.channelName ?? "")
            }
        }
    }
    return config
}

func mapToLastmileProbeConfig(_ map: Dictionary<String, Any>) -> WujiLastmileProbeConfig {
    let config = WujiLastmileProbeConfig()
    if let probeUplink = map["probeUplink"] as? Bool {
        config.probeUplink = probeUplink
    }
    if let probeDownlink = map["probeDownlink"] as? Bool {
        config.probeDownlink = probeDownlink
    }
    if let expectedUplinkBitrate = map["expectedUplinkBitrate"] as? Int {
        config.expectedUplinkBitrate = UInt(expectedUplinkBitrate)
    }
    if let expectedDownlinkBitrate = map["expectedDownlinkBitrate"] as? Int {
        config.expectedDownlinkBitrate = UInt(expectedDownlinkBitrate)
    }
    return config
}

func mapToWatermarkOptions(_ map: Dictionary<String, Any>) -> WatermarkOptions {
    let options = WatermarkOptions()
    if let visibleInPreview = map["visibleInPreview"] as? Bool {
        options.visibleInPreview = visibleInPreview
    }
    if let positionInLandscapeMode = map["positionInLandscapeMode"] as? Dictionary<String, Any> {
        options.positionInLandscapeMode = mapToRect(positionInLandscapeMode)
    }
    if let positionInPortraitMode = map["positionInPortraitMode"] as? Dictionary<String, Any> {
        options.positionInPortraitMode = mapToRect(positionInPortraitMode)
    }
    return options
}

func mapToLiveInjectStreamConfig(_ map: Dictionary<String, Any>) -> WujiLiveInjectStreamConfig {
    let config = WujiLiveInjectStreamConfig.default()
    config.size = mapToSize(map)
    if let videoGop = map["videoGop"] as? Int {
        config.videoGop = videoGop
    }
    if let videoFramerate = map["videoFramerate"] as? Int {
        config.videoFramerate = videoFramerate
    }
    if let videoBitrate = map["videoBitrate"] as? Int {
        config.videoBitrate = videoBitrate
    }
    if let audioSampleRate = map["audioSampleRate"] as? Int {
        if let audioSampleRate = WujiAudioSampleRateType(rawValue: audioSampleRate) {
            config.audioSampleRate = audioSampleRate
        }
    }
    if let audioBitrate = map["audioBitrate"] as? Int {
        config.audioBitrate = audioBitrate
    }
    if let audioChannels = map["audioChannels"] as? Int {
        config.audioChannels = audioChannels
    }
    return config
}

func mapToCameraCapturerConfiguration(_ map: Dictionary<String, Any>) -> WujiCameraCapturerConfiguration {
    let config = WujiCameraCapturerConfiguration()
    config.preference = WujiCameraCaptureOutputPreference(rawValue: map["preference"] as! Int)!
    config.cameraDirection = WujiCameraDirection(rawValue: map["cameraDirection"] as! Int)!
    return config
}

func mapToChannelMediaOptions(_ map: Dictionary<String, Any>) -> WujiRtcChannelMediaOptions {
    let options = WujiRtcChannelMediaOptions()
    if let autoSubscribeAudio = map["autoSubscribeAudio"] as? Bool {
        options.autoSubscribeAudio = autoSubscribeAudio
    }
    if let autoSubscribeVideo = map["autoSubscribeVideo"] as? Bool {
        options.autoSubscribeVideo = autoSubscribeVideo
    }
    return options
}

