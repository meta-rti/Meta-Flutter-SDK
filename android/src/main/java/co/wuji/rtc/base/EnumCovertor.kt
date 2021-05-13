package co.wuji.rtc.base

//import co.wuji.rtc.internal.EncryptionConfig
import co.wuji.rtc.live.LiveInjectStreamConfig
import co.wuji.rtc.live.LiveTranscoding
import co.wuji.rtc.video.CameraCapturerConfiguration
import co.wuji.rtc.video.VideoEncoderConfiguration

fun intToFrameRate(@Annotations.WujiVideoFrameRate intValue: Int): VideoEncoderConfiguration.FRAME_RATE {
    for (value in VideoEncoderConfiguration.FRAME_RATE.values()) {
        if (value.value == intValue) {
            return value
        }
    }
    throw RuntimeException("VideoEncoderConfiguration.FRAME_RATE not contains $intValue")
}

fun intToOrientationMode(@Annotations.WujiVideoOutputOrientationMode intValue: Int): VideoEncoderConfiguration.ORIENTATION_MODE {
    for (value in VideoEncoderConfiguration.ORIENTATION_MODE.values()) {
        if (value.value == intValue) {
            return value
        }
    }
    throw RuntimeException("VideoEncoderConfiguration.ORIENTATION_MODE not contains $intValue")
}

fun intToDegradationPreference(@Annotations.WujiDegradationPreference intValue: Int): VideoEncoderConfiguration.DEGRADATION_PREFERENCE {
    for (value in VideoEncoderConfiguration.DEGRADATION_PREFERENCE.values()) {
        if (value.value == intValue) {
            return value
        }
    }
    throw RuntimeException("VideoEncoderConfiguration.DEGRADATION_PREFERENCE not contains $intValue")
}

fun intToLiveTranscodingAudioSampleRate(@Annotations.WujiAudioSampleRateType intValue: Int): LiveTranscoding.AudioSampleRateType {
    for (value in LiveTranscoding.AudioSampleRateType.values()) {
        if (LiveTranscoding.AudioSampleRateType.getValue(value) == intValue) {
            return value
        }
    }
    throw RuntimeException("LiveTranscoding.AudioSampleRateType not contains $intValue")
}

fun intToLiveInjectStreamConfigAudioSampleRate(@Annotations.WujiAudioSampleRateType intValue: Int): LiveInjectStreamConfig.AudioSampleRateType {
    for (value in LiveInjectStreamConfig.AudioSampleRateType.values()) {
        if (LiveInjectStreamConfig.AudioSampleRateType.getValue(value) == intValue) {
            return value
        }
    }
    throw RuntimeException("LiveInjectStreamConfig.AudioSampleRateType not contains $intValue")
}

fun intToAudioCodecProfile(@Annotations.WujiAudioCodecProfileType intValue: Int): LiveTranscoding.AudioCodecProfileType {
    for (value in LiveTranscoding.AudioCodecProfileType.values()) {
        if (LiveTranscoding.AudioCodecProfileType.getValue(value) == intValue) {
            return value
        }
    }
    throw RuntimeException("LiveTranscoding.AudioCodecProfileType not contains $intValue")
}

fun intToVideoCodecProfile(@Annotations.WujiVideoCodecProfileType intValue: Int): LiveTranscoding.VideoCodecProfileType {
    for (value in LiveTranscoding.VideoCodecProfileType.values()) {
        if (LiveTranscoding.VideoCodecProfileType.getValue(value) == intValue) {
            return value
        }
    }
    throw RuntimeException("LiveTranscoding.VideoCodecProfileType not contains $intValue")
}

fun intToCapturerOutputPreference(@Annotations.WujiCameraCaptureOutputPreference intValue: Int): CameraCapturerConfiguration.CAPTURER_OUTPUT_PREFERENCE {
    for (value in CameraCapturerConfiguration.CAPTURER_OUTPUT_PREFERENCE.values()) {
        if (value.value == intValue) {
            return value
        }
    }
    throw RuntimeException("CameraCapturerConfiguration.CAPTURER_OUTPUT_PREFERENCE not contains $intValue")
}

fun intToCameraDirection(@Annotations.WujiCameraDirection intValue: Int): CameraCapturerConfiguration.CAMERA_DIRECTION {
    for (value in CameraCapturerConfiguration.CAMERA_DIRECTION.values()) {
        if (value.value == intValue) {
            return value
        }
    }
    throw RuntimeException("CameraCapturerConfiguration.CAMERA_DIRECTION not contains $intValue")
}

//fun intToEncryptionMode(@Annotations.WujiEncryptionMode intValue: Int): EncryptionConfig.EncryptionMode {
//    for (value in EncryptionConfig.EncryptionMode.values()) {
//        if (value.value == intValue) {
//            return value
//        }
//    }
//    throw RuntimeException("EncryptionConfig.EncryptionMode not contains $intValue")
//}
