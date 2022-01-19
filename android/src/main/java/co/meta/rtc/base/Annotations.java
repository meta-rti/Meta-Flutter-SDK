package co.meta.rtc.base;

import androidx.annotation.IntDef;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

import co.meta.rtc.Constants;
import co.meta.rtc.video.BeautyOptions;
import co.meta.rtc.video.VideoCanvas;


@SuppressWarnings("deprecation")
public class Annotations {
    @IntDef({
            MetaRtcAppType.NATIVE,
            MetaRtcAppType.COCOS,
            MetaRtcAppType.UNITY,
            MetaRtcAppType.ELECTRON,
            MetaRtcAppType.FLUTTER,
            MetaRtcAppType.UNREAL,
            MetaRtcAppType.XAMARIN,
            MetaRtcAppType.APICLOUD,
            MetaRtcAppType.REACTNATIVE,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaRtcAppType {
        int NATIVE = 0;
        int COCOS = 1;
        int UNITY = 2;
        int ELECTRON = 3;
        int FLUTTER = 4;
        int UNREAL = 5;
        int XAMARIN = 6;
        int APICLOUD = 7;
        int REACTNATIVE = 8;
    }

    @IntDef({
            MetaAudioCodecProfileType.LC_AAC,
            MetaAudioCodecProfileType.HE_AAC,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaAudioCodecProfileType {
        int LC_AAC = 0;
        int HE_AAC = 1;
    }

    @IntDef({
            Constants.AUDIO_EQUALIZATION_BAND_31,
            Constants.AUDIO_EQUALIZATION_BAND_62,
            Constants.AUDIO_EQUALIZATION_BAND_125,
            Constants.AUDIO_EQUALIZATION_BAND_250,
            Constants.AUDIO_EQUALIZATION_BAND_500,
            Constants.AUDIO_EQUALIZATION_BAND_1K,
            Constants.AUDIO_EQUALIZATION_BAND_2K,
            Constants.AUDIO_EQUALIZATION_BAND_4K,
            Constants.AUDIO_EQUALIZATION_BAND_8K,
            Constants.AUDIO_EQUALIZATION_BAND_16K,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaAudioEqualizationBandFrequency {
    }

    @IntDef({
            Constants.LOCAL_AUDIO_STREAM_ERROR_OK,
            Constants.LOCAL_AUDIO_STREAM_ERROR_FAILURE,
            Constants.LOCAL_AUDIO_STREAM_ERROR_DEVICE_NO_PERMISSION,
            Constants.LOCAL_AUDIO_STREAM_ERROR_DEVICE_BUSY,
            Constants.LOCAL_AUDIO_STREAM_ERROR_CAPTURE_FAILURE,
            Constants.LOCAL_AUDIO_STREAM_ERROR_ENCODE_FAILURE,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaAudioLocalError {
    }

    @IntDef({
            Constants.LOCAL_AUDIO_STREAM_STATE_STOPPED,
            Constants.LOCAL_AUDIO_STREAM_STATE_CAPTURING,
            Constants.LOCAL_AUDIO_STREAM_STATE_ENCODING,
            Constants.LOCAL_AUDIO_STREAM_STATE_FAILED,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaAudioLocalState {
    }

    @IntDef({
            Constants.MEDIA_ENGINE_AUDIO_ERROR_MIXING_OPEN,
            Constants.MEDIA_ENGINE_AUDIO_ERROR_MIXING_TOO_FREQUENT,
            Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_INTERRUPTED_EOF,
            MetaAudioMixingErrorCode.MEDIA_ENGINE_AUDIO_ERROR_OK,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaAudioMixingErrorCode {
        int MEDIA_ENGINE_AUDIO_ERROR_OK = 0;
    }

    @IntDef({
            Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_PLAY,
            Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_PAUSED,
            Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_STOPPED,
            Constants.MEDIA_ENGINE_AUDIO_EVENT_MIXING_ERROR,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaAudioMixingStateCode {
    }

    @IntDef({
            Constants.AUDIO_ROUTE_DEFAULT,
            Constants.AUDIO_ROUTE_HEADSET,
            Constants.AUDIO_ROUTE_EARPIECE,
            Constants.AUDIO_ROUTE_HEADSETNOMIC,
            Constants.AUDIO_ROUTE_SPEAKERPHONE,
            Constants.AUDIO_ROUTE_LOUDSPEAKER,
            Constants.AUDIO_ROUTE_HEADSETBLUETOOTH,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaAudioOutputRouting {
    }

    @IntDef({
            Constants.AUDIO_PROFILE_DEFAULT,
            Constants.AUDIO_PROFILE_SPEECH_STANDARD,
            Constants.AUDIO_PROFILE_MUSIC_STANDARD,
            Constants.AUDIO_PROFILE_MUSIC_STANDARD_STEREO,
            Constants.AUDIO_PROFILE_MUSIC_HIGH_QUALITY,
            Constants.AUDIO_PROFILE_MUSIC_HIGH_QUALITY_STEREO,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaAudioProfile {
    }

    @IntDef({
            Constants.AUDIO_RECORDING_QUALITY_LOW,
            Constants.AUDIO_RECORDING_QUALITY_MEDIUM,
            Constants.AUDIO_RECORDING_QUALITY_HIGH,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaAudioRecordingQuality {
    }

    @IntDef({
            Constants.REMOTE_AUDIO_STATE_STOPPED,
            Constants.REMOTE_AUDIO_STATE_STARTING,
            Constants.REMOTE_AUDIO_STATE_DECODING,
            Constants.REMOTE_AUDIO_STATE_FROZEN,
            Constants.REMOTE_AUDIO_STATE_FAILED,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaAudioRemoteState {
    }

    @IntDef({
            Constants.REMOTE_AUDIO_REASON_INTERNAL,
            Constants.REMOTE_AUDIO_REASON_NETWORK_CONGESTION,
            Constants.REMOTE_AUDIO_REASON_NETWORK_RECOVERY,
            Constants.REMOTE_AUDIO_REASON_LOCAL_MUTED,
            Constants.REMOTE_AUDIO_REASON_LOCAL_UNMUTED,
            Constants.REMOTE_AUDIO_REASON_REMOTE_MUTED,
            Constants.REMOTE_AUDIO_REASON_REMOTE_UNMUTED,
            Constants.REMOTE_AUDIO_REASON_REMOTE_OFFLINE,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaAudioRemoteStateReason {
    }

    @IntDef({
            Constants.AUDIO_REVERB_OFF,
            Constants.AUDIO_REVERB_POPULAR,
            Constants.AUDIO_REVERB_RNB,
            Constants.AUDIO_REVERB_ROCK,
            Constants.AUDIO_REVERB_HIPHOP,
            Constants.AUDIO_REVERB_VOCAL_CONCERT,
            Constants.AUDIO_REVERB_KTV,
            Constants.AUDIO_REVERB_STUDIO,
//            Constants.AUDIO_REVERB_FX_KTV,
//            Constants.AUDIO_REVERB_FX_VOCAL_CONCERT,
//            Constants.AUDIO_REVERB_FX_UNCLE,
//            Constants.AUDIO_REVERB_FX_SISTER,
//            Constants.AUDIO_REVERB_FX_STUDIO,
//            Constants.AUDIO_REVERB_FX_POPULAR,
//            Constants.AUDIO_REVERB_FX_RNB,
//            Constants.AUDIO_REVERB_FX_PHONOGRAPH,
//            Constants.AUDIO_VIRTUAL_STEREO,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaAudioReverbPreset {
    }

    @IntDef({
            Constants.AUDIO_REVERB_DRY_LEVEL,
            Constants.AUDIO_REVERB_WET_LEVEL,
            Constants.AUDIO_REVERB_ROOM_SIZE,
            Constants.AUDIO_REVERB_WET_DELAY,
            Constants.AUDIO_REVERB_STRENGTH,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaAudioReverbType {
    }

    @IntDef({
            MetaAudioSampleRateType.TYPE_32000,
            MetaAudioSampleRateType.TYPE_44100,
            MetaAudioSampleRateType.TYPE_48000,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaAudioSampleRateType {
        int TYPE_32000 = 32000;
        int TYPE_44100 = 44100;
        int TYPE_48000 = 48000;
    }

    @IntDef({
            Constants.AUDIO_SCENARIO_DEFAULT,
            Constants.AUDIO_SCENARIO_CHATROOM_ENTERTAINMENT,
            Constants.AUDIO_SCENARIO_EDUCATION,
            Constants.AUDIO_SCENARIO_GAME_STREAMING,
            Constants.AUDIO_SCENARIO_SHOWROOM,
            Constants.AUDIO_SCENARIO_CHATROOM_GAMING,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaAudioScenario {
    }

    @IntDef({
            Constants.VOICE_CHANGER_OFF,
            Constants.VOICE_CHANGER_OLDMAN,
            Constants.VOICE_CHANGER_BABYBOY,
            Constants.VOICE_CHANGER_BABYGIRL,
            Constants.VOICE_CHANGER_ZHUBAJIE,
            Constants.VOICE_CHANGER_ETHEREAL,
            Constants.VOICE_CHANGER_HULK,
//            Constants.VOICE_BEAUTY_VIGOROUS,
//            Constants.VOICE_BEAUTY_DEEP,
//            Constants.VOICE_BEAUTY_MELLOW,
//            Constants.VOICE_BEAUTY_FALSETTO,
//            Constants.VOICE_BEAUTY_FULL,
//            Constants.VOICE_BEAUTY_CLEAR,
//            Constants.VOICE_BEAUTY_RESOUNDING,
//            Constants.VOICE_BEAUTY_RINGING,
//            Constants.VOICE_BEAUTY_SPACIAL,
//            Constants.GENERAL_BEAUTY_VOICE_MALE_MAGNETIC,
//            Constants.GENERAL_BEAUTY_VOICE_FEMALE_FRESH,
//            Constants.GENERAL_BEAUTY_VOICE_FEMALE_VITALITY,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaAudioVoiceChanger {
    }

    @IntDef({
            MetaCameraCaptureOutputPreference.CAPTURER_OUTPUT_PREFERENCE_AUTO,
            MetaCameraCaptureOutputPreference.CAPTURER_OUTPUT_PREFERENCE_PERFORMANCE,
            MetaCameraCaptureOutputPreference.CAPTURER_OUTPUT_PREFERENCE_PREVIEW,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaCameraCaptureOutputPreference {
        int CAPTURER_OUTPUT_PREFERENCE_AUTO = 0;
        int CAPTURER_OUTPUT_PREFERENCE_PERFORMANCE = 1;
        int CAPTURER_OUTPUT_PREFERENCE_PREVIEW = 2;
    }

    @IntDef({
            MetaCameraDirection.CAMERA_REAR,
            MetaCameraDirection.CAMERA_FRONT,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaCameraDirection {
        int CAMERA_REAR = 0;
        int CAMERA_FRONT = 1;
    }

    @IntDef({
            Constants.RELAY_OK,
            Constants.RELAY_ERROR_SERVER_ERROR_RESPONSE,
            Constants.RELAY_ERROR_SERVER_NO_RESPONSE,
            Constants.RELAY_ERROR_NO_RESOURCE_AVAILABLE,
            Constants.RELAY_ERROR_FAILED_JOIN_SRC,
            Constants.RELAY_ERROR_FAILED_JOIN_DEST,
            Constants.RELAY_ERROR_FAILED_PACKET_RECEIVED_FROM_SRC,
            Constants.RELAY_ERROR_FAILED_PACKET_SENT_TO_DEST,
            Constants.RELAY_ERROR_SERVER_CONNECTION_LOST,
            Constants.RELAY_ERROR_INTERNAL_ERROR,
            Constants.RELAY_ERROR_SRC_TOKEN_EXPIRED,
            Constants.RELAY_ERROR_DEST_TOKEN_EXPIRED,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaChannelMediaRelayError {
    }

    @IntDef({
            Constants.RELAY_EVENT_NETWORK_DISCONNECTED,
            Constants.RELAY_EVENT_NETWORK_CONNECTED,
            Constants.RELAY_EVENT_PACKET_JOINED_SRC_CHANNEL,
            Constants.RELAY_EVENT_PACKET_JOINED_DEST_CHANNEL,
            Constants.RELAY_EVENT_PACKET_SENT_TO_DEST_CHANNEL,
            Constants.RELAY_EVENT_PACKET_RECEIVED_VIDEO_FROM_SRC,
            Constants.RELAY_EVENT_PACKET_RECEIVED_AUDIO_FROM_SRC,
            Constants.RELAY_EVENT_PACKET_UPDATE_DEST_CHANNEL,
            Constants.RELAY_EVENT_PACKET_UPDATE_DEST_CHANNEL_REFUSED,
            Constants.RELAY_EVENT_PACKET_UPDATE_DEST_CHANNEL_NOT_CHANGE,
            Constants.RELAY_EVENT_PACKET_UPDATE_DEST_CHANNEL_IS_NULL,
            Constants.RELAY_EVENT_VIDEO_PROFILE_UPDATE,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaChannelMediaRelayEvent {
    }

    @IntDef({
            Constants.RELAY_STATE_IDLE,
            Constants.RELAY_STATE_CONNECTING,
            Constants.RELAY_STATE_RUNNING,
            Constants.RELAY_STATE_FAILURE,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaChannelMediaRelayState {
    }

    @IntDef({
            Constants.CHANNEL_PROFILE_COMMUNICATION,
            Constants.CHANNEL_PROFILE_LIVE_BROADCASTING,
            Constants.CHANNEL_PROFILE_GAME,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaChannelProfile {
    }

    @IntDef({
            Constants.CLIENT_ROLE_BROADCASTER,
            Constants.CLIENT_ROLE_AUDIENCE,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaClientRole {
    }

    @IntDef({
            Constants.CONNECTION_CHANGED_CONNECTING,
            Constants.CONNECTION_CHANGED_JOIN_SUCCESS,
            Constants.CONNECTION_CHANGED_INTERRUPTED,
            Constants.CONNECTION_CHANGED_BANNED_BY_SERVER,
            Constants.CONNECTION_CHANGED_JOIN_FAILED,
            Constants.CONNECTION_CHANGED_LEAVE_CHANNEL,
            Constants.CONNECTION_CHANGED_INVALID_APP_ID,
            Constants.CONNECTION_CHANGED_INVALID_CHANNEL_NAME,
            Constants.CONNECTION_CHANGED_INVALID_TOKEN,
            Constants.CONNECTION_CHANGED_TOKEN_EXPIRED,
            Constants.CONNECTION_CHANGED_REJECTED_BY_SERVER,
            Constants.CONNECTION_CHANGED_SETTING_PROXY_SERVER,
            Constants.CONNECTION_CHANGED_RENEW_TOKEN,
            Constants.CONNECTION_CHANGED_CLIENT_IP_ADDRESS_CHANGED,
            Constants.CONNECTION_CHANGED_KEEP_ALIVE_TIMEOUT,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaConnectionChangedReason {
    }

    @IntDef({
            Constants.CONNECTION_STATE_DISCONNECTED,
            Constants.CONNECTION_STATE_CONNECTING,
            Constants.CONNECTION_STATE_CONNECTED,
            Constants.CONNECTION_STATE_RECONNECTING,
            Constants.CONNECTION_STATE_FAILED,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaConnectionStateType {
    }

    @IntDef({
            MetaDegradationPreference.MAINTAIN_QUALITY,
            MetaDegradationPreference.MAINTAIN_FRAMERATE,
            MetaDegradationPreference.MAINTAIN_BALANCED,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaDegradationPreference {
        int MAINTAIN_QUALITY = 0;
        int MAINTAIN_FRAMERATE = 1;
        int MAINTAIN_BALANCED = 2;
    }

    @IntDef({
            MetaEncryptionMode.NONE,
            MetaEncryptionMode.AES128XTS,
            MetaEncryptionMode.AES128ECB,
            MetaEncryptionMode.AES256XTS,
            MetaEncryptionMode.SM4128ECB,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaEncryptionMode {
        int NONE = 0;
        int AES128XTS = 1;
        int AES128ECB = 2;
        int AES256XTS = 3;
        int SM4128ECB = 4;
    }

    @IntDef({
            Constants.ERR_OK,
            Constants.ERR_FAILED,
            Constants.ERR_INVALID_ARGUMENT,
            Constants.ERR_NOT_READY,
            Constants.ERR_NOT_SUPPORTED,
            Constants.ERR_REFUSED,
            Constants.ERR_BUFFER_TOO_SMALL,
            Constants.ERR_NOT_INITIALIZED,
            Constants.ERR_NO_PERMISSION,
            Constants.ERR_TIMEDOUT,
            Constants.ERR_CANCELED,
            Constants.ERR_TOO_OFTEN,
            Constants.ERR_BIND_SOCKET,
            Constants.ERR_NET_DOWN,
            Constants.ERR_NET_NOBUFS,
            Constants.ERR_JOIN_CHANNEL_REJECTED,
            Constants.ERR_LEAVE_CHANNEL_REJECTED,
            Constants.ERR_ALREADY_IN_USE,
            Constants.ERR_INVALID_APP_ID,
            Constants.ERR_INVALID_CHANNEL_NAME,
//            Constants.ERR_NO_SERVER_RESOURCES,
            Constants.ERR_TOKEN_EXPIRED,
            Constants.ERR_INVALID_TOKEN,
            Constants.ERR_CONNECTION_INTERRUPTED,
            Constants.ERR_CONNECTION_LOST,
            Constants.ERR_NOT_IN_CHANNEL,
            Constants.ERR_SIZE_TOO_LARGE,
            Constants.ERR_BITRATE_LIMIT,
            Constants.ERR_TOO_MANY_DATA_STREAMS,
            Constants.ERR_DECRYPTION_FAILED,
            Constants.ERR_CLIENT_IS_BANNED_BY_SERVER,
            Constants.ERR_WATERMARK_PARAM,
            Constants.ERR_WATERMARK_PATH,
            Constants.ERR_WATERMARK_PNG,
            Constants.ERR_WATERMARKR_INFO,
            Constants.ERR_WATERMARK_ARGB,
            Constants.ERR_WATERMARK_READ,
            Constants.ERR_ENCRYPTED_STREAM_NOT_ALLOWED_PUBLISHED,
            Constants.ERR_INVALID_USER_ACCOUNT,
            Constants.ERR_PUBLISH_STREAM_CDN_ERROR,
            Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT,
            Constants.ERR_PUBLISH_STREAM_NOT_AUTHORIZED,
            Constants.ERR_PUBLISH_STREAM_INTERNAL_SERVER_ERROR,
            Constants.ERR_PUBLISH_STREAM_NOT_FOUND,
            Constants.ERR_PUBLISH_STREAM_FORMAT_NOT_SUPPORTED,
            Constants.ERR_LOAD_MEDIA_ENGINE,
            Constants.ERR_START_CALL,
            Constants.ERR_START_CAMERA,
            Constants.ERR_START_VIDEO_RENDER,
            Constants.ERR_ADM_GENERAL_ERROR,
            Constants.ERR_ADM_JAVA_RESOURCE,
            Constants.ERR_ADM_SAMPLE_RATE,
            Constants.ERR_ADM_INIT_PLAYOUT,
            Constants.ERR_ADM_START_PLAYOUT,
            Constants.ERR_ADM_STOP_PLAYOUT,
            Constants.ERR_ADM_INIT_RECORDING,
            Constants.ERR_ADM_START_RECORDING,
            Constants.ERR_ADM_STOP_RECORDING,
            Constants.ERR_ADM_RUNTIME_PLAYOUT_ERROR,
            Constants.ERR_ADM_RUNTIME_RECORDING_ERROR,
            Constants.ERR_ADM_RECORD_AUDIO_FAILED,
            Constants.ERR_ADM_INIT_LOOPBACK,
            Constants.ERR_ADM_START_LOOPBACK,
            Constants.ERR_AUDIO_BT_SCO_FAILED,
            Constants.ERR_ADM_NO_RECORDING_DEVICE,
            Constants.ERR_ADM_NO_PLAYOUT_DEVICE,
            Constants.ERR_VDM_CAMERA_NOT_AUTHORIZED,
            Constants.ERR_VCM_UNKNOWN_ERROR,
            Constants.ERR_VCM_ENCODER_INIT_ERROR,
            Constants.ERR_VCM_ENCODER_ENCODE_ERROR,
//            Constants.ERR_VCM_ENCODER_SET_ERROR,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaErrorCode {
    }

    @IntDef({
            Constants.INJECT_STREAM_STATUS_START_SUCCESS,
            Constants.INJECT_STREAM_STATUS_START_ALREADY_EXISTS,
            Constants.INJECT_STREAM_STATUS_START_UNAUTHORIZED,
            Constants.INJECT_STREAM_STATUS_START_TIMEDOUT,
            Constants.INJECT_STREAM_STATUS_START_FAILED,
            Constants.INJECT_STREAM_STATUS_STOP_SUCCESS,
            Constants.INJECT_STREAM_STATUS_STOP_NOT_FOUND,
            Constants.INJECT_STREAM_STATUS_STOP_UNAUTHORIZED,
            Constants.INJECT_STREAM_STATUS_STOP_TIMEDOUT,
            Constants.INJECT_STREAM_STATUS_STOP_FAILED,
            Constants.INJECT_STREAM_STATUS_BROKEN,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaInjectStreamStatus {
    }

    @IntDef({
            Constants.LASTMILE_PROBE_RESULT_COMPLETE,
            Constants.LASTMILE_PROBE_RESULT_INCOMPLETE_NO_BWE,
            Constants.LASTMILE_PROBE_RESULT_UNAVAILABLE,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaLastmileProbeResultState {
    }

    @IntDef({
            BeautyOptions.LIGHTENING_CONTRAST_LOW,
            BeautyOptions.LIGHTENING_CONTRAST_NORMAL,
            BeautyOptions.LIGHTENING_CONTRAST_HIGH,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaLighteningContrastLevel {
    }

    @IntDef({
            Constants.LOCAL_VIDEO_STREAM_ERROR_OK,
            Constants.LOCAL_VIDEO_STREAM_ERROR_FAILURE,
            Constants.LOCAL_VIDEO_STREAM_ERROR_DEVICE_NO_PERMISSION,
            Constants.LOCAL_VIDEO_STREAM_ERROR_DEVICE_BUSY,
            Constants.LOCAL_VIDEO_STREAM_ERROR_CAPTURE_FAILURE,
            Constants.LOCAL_VIDEO_STREAM_ERROR_ENCODE_FAILURE,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaLocalVideoStreamError {
    }

    @IntDef({
            Constants.LOCAL_VIDEO_STREAM_STATE_STOPPED,
            Constants.LOCAL_VIDEO_STREAM_STATE_CAPTURING,
            Constants.LOCAL_VIDEO_STREAM_STATE_ENCODING,
            Constants.LOCAL_VIDEO_STREAM_STATE_FAILED,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaLocalVideoStreamState {
    }

    @IntDef({
            Constants.LOG_FILTER_OFF,
            Constants.LOG_FILTER_DEBUG,
            Constants.LOG_FILTER_INFO,
            Constants.LOG_FILTER_WARNING,
            Constants.LOG_FILTER_ERROR,
            Constants.LOG_FILTER_CRITICAL,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaLogFilter {
    }

    @IntDef({
            Constants.QUALITY_UNKNOWN,
            Constants.QUALITY_EXCELLENT,
            Constants.QUALITY_GOOD,
            Constants.QUALITY_POOR,
            Constants.QUALITY_BAD,
            Constants.QUALITY_VBAD,
            Constants.QUALITY_DOWN,
            Constants.QUALITY_UNSUPPORTED,
            Constants.QUALITY_DETECTING,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaNetworkQuality {
    }

    @IntDef({
            Constants.NETWORK_TYPE_UNKNOWN,
            Constants.NETWORK_TYPE_DISCONNECTED,
            Constants.NETWORK_TYPE_LAN,
            Constants.NETWORK_TYPE_WIFI,
            Constants.NETWORK_TYPE_MOBILE_2G,
            Constants.NETWORK_TYPE_MOBILE_3G,
            Constants.NETWORK_TYPE_MOBILE_4G,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaNetworkType {
    }

    @IntDef({
            Constants.RTMP_STREAM_PUBLISH_ERROR_OK,
            Constants.RTMP_STREAM_PUBLISH_ERROR_INVALID_ARGUMENT,
            Constants.RTMP_STREAM_PUBLISH_ERROR_ENCRYPTED_STREAM_NOT_ALLOWED,
            Constants.RTMP_STREAM_PUBLISH_ERROR_CONNECTION_TIMEOUT,
            Constants.RTMP_STREAM_PUBLISH_ERROR_INTERNAL_SERVER_ERROR,
            Constants.RTMP_STREAM_PUBLISH_ERROR_RTMP_SERVER_ERROR,
            Constants.RTMP_STREAM_PUBLISH_ERROR_TOO_OFTEN,
            Constants.RTMP_STREAM_PUBLISH_ERROR_REACH_LIMIT,
            Constants.RTMP_STREAM_PUBLISH_ERROR_NOT_AUTHORIZED,
            Constants.RTMP_STREAM_PUBLISH_ERROR_STREAM_NOT_FOUND,
            Constants.RTMP_STREAM_PUBLISH_ERROR_FORMAT_NOT_SUPPORTED,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaRtmpStreamingErrorCode {
    }

    @IntDef({
            Constants.RTMP_STREAM_PUBLISH_STATE_IDLE,
            Constants.RTMP_STREAM_PUBLISH_STATE_CONNECTING,
            Constants.RTMP_STREAM_PUBLISH_STATE_RUNNING,
            Constants.RTMP_STREAM_PUBLISH_STATE_RECOVERING,
            Constants.RTMP_STREAM_PUBLISH_STATE_FAILURE,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaRtmpStreamingState {
    }

    @IntDef({
            Constants.STREAM_FALLBACK_OPTION_DISABLED,
            Constants.STREAM_FALLBACK_OPTION_VIDEO_STREAM_LOW,
            Constants.STREAM_FALLBACK_OPTION_AUDIO_ONLY,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaStreamFallbackOptions {
    }

    @IntDef({
            Constants.USER_OFFLINE_QUIT,
            Constants.USER_OFFLINE_DROPPED,
            Constants.USER_OFFLINE_BECOME_AUDIENCE,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaUserOfflineReason {
    }

    @IntDef({
            Constants.USER_PRIORITY_HIGH,
            Constants.USER_PRIORITY_NORANL,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaUserPriority {
    }

    @IntDef({
            MetaVideoCodecProfileType.BASELINE,
            MetaVideoCodecProfileType.MAIN,
            MetaVideoCodecProfileType.HIGH,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaVideoCodecProfileType {
        int BASELINE = 66;
        int MAIN = 77;
        int HIGH = 100;
    }

    @IntDef({
            MetaVideoFrameRate.FRAME_RATE_FPS_1,
            MetaVideoFrameRate.FRAME_RATE_FPS_7,
            MetaVideoFrameRate.FRAME_RATE_FPS_10,
            MetaVideoFrameRate.FRAME_RATE_FPS_15,
            MetaVideoFrameRate.FRAME_RATE_FPS_24,
            MetaVideoFrameRate.FRAME_RATE_FPS_30,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaVideoFrameRate {
        int FRAME_RATE_FPS_1 = 1;
        int FRAME_RATE_FPS_7 = 7;
        int FRAME_RATE_FPS_10 = 10;
        int FRAME_RATE_FPS_15 = 15;
        int FRAME_RATE_FPS_24 = 24;
        int FRAME_RATE_FPS_30 = 30;
    }

    @IntDef({
            Constants.VIDEO_MIRROR_MODE_AUTO,
            Constants.VIDEO_MIRROR_MODE_ENABLED,
            Constants.VIDEO_MIRROR_MODE_DISABLED,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaVideoMirrorMode {
    }

    @IntDef({
            MetaVideoOutputOrientationMode.ORIENTATION_MODE_ADAPTIVE,
            MetaVideoOutputOrientationMode.ORIENTATION_MODE_FIXED_LANDSCAPE,
            MetaVideoOutputOrientationMode.ORIENTATION_MODE_FIXED_PORTRAIT,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaVideoOutputOrientationMode {
        int ORIENTATION_MODE_ADAPTIVE = 0;
        int ORIENTATION_MODE_FIXED_LANDSCAPE = 1;
        int ORIENTATION_MODE_FIXED_PORTRAIT = 2;
    }

    @IntDef({
            Constants.ADAPT_NONE,
            Constants.ADAPT_UP_BANDWIDTH,
            Constants.ADAPT_DOWN_BANDWIDTH,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaVideoQualityAdaptIndication {
    }

    @IntDef({
            Constants.REMOTE_VIDEO_STATE_STOPPED,
            Constants.REMOTE_VIDEO_STATE_STARTING,
            Constants.REMOTE_VIDEO_STATE_DECODING,
            Constants.REMOTE_VIDEO_STATE_FROZEN,
            Constants.REMOTE_VIDEO_STATE_FAILED,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaVideoRemoteState {
    }

    @IntDef({
            Constants.REMOTE_VIDEO_STATE_REASON_INTERNAL,
            Constants.REMOTE_VIDEO_STATE_REASON_NETWORK_CONGESTION,
            Constants.REMOTE_VIDEO_STATE_REASON_NETWORK_RECOVERY,
            Constants.REMOTE_VIDEO_STATE_REASON_LOCAL_MUTED,
            Constants.REMOTE_VIDEO_STATE_REASON_LOCAL_UNMUTED,
            Constants.REMOTE_VIDEO_STATE_REASON_REMOTE_MUTED,
            Constants.REMOTE_VIDEO_STATE_REASON_REMOTE_UNMUTED,
            Constants.REMOTE_VIDEO_STATE_REASON_REMOTE_OFFLINE,
            Constants.REMOTE_VIDEO_STATE_REASON_AUDIO_FALLBACK,
            Constants.REMOTE_VIDEO_STATE_REASON_AUDIO_FALLBACK_RECOVERY,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaVideoRemoteStateReason {
    }

    @IntDef({
            VideoCanvas.RENDER_MODE_HIDDEN,
            VideoCanvas.RENDER_MODE_FIT,
            VideoCanvas.RENDER_MODE_ADAPTIVE,
            VideoCanvas.RENDER_MODE_FILL,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaVideoRenderMode {
    }

    @IntDef({
            Constants.VIDEO_STREAM_HIGH,
            Constants.VIDEO_STREAM_LOW,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaVideoStreamType {
    }

    @IntDef({
            Constants.WARN_INVALID_VIEW,
            Constants.WARN_INIT_VIDEO,
            Constants.WARN_PENDING,
            Constants.WARN_NO_AVAILABLE_CHANNEL,
            Constants.WARN_LOOKUP_CHANNEL_TIMEOUT,
            Constants.WARN_LOOKUP_CHANNEL_REJECTED,
            Constants.WARN_OPEN_CHANNEL_TIMEOUT,
            Constants.WARN_OPEN_CHANNEL_REJECTED,
            Constants.WARN_SWITCH_LIVE_VIDEO_TIMEOUT,
            Constants.WARN_SET_CLIENT_ROLE_TIMEOUT,
            Constants.WARN_SET_CLIENT_ROLE_NOT_AUTHORIZED,
            Constants.WARN_OPEN_CHANNEL_INVALID_TICKET,
            Constants.WARN_OPEN_CHANNEL_TRY_NEXT_VOS,
            Constants.WARN_AUDIO_MIXING_OPEN_ERROR,
            Constants.WARN_ADM_RUNTIME_PLAYOUT_WARNING,
            Constants.WARN_ADM_RUNTIME_RECORDING_WARNING,
            Constants.WARN_ADM_RECORD_AUDIO_SILENCE,
//            Constants.WARN_ADM_PLAYOUT_ABNORMAL_FREQUENCY,
//            Constants.WARN_ADM_RECORD_ABNORMAL_FREQUENCY,
            Constants.WARN_ADM_CALL_INTERRUPTION,
            Constants.WARN_ADM_RECORD_AUDIO_LOWLEVEL,
            Constants.WARN_ADM_PLAYOUT_AUDIO_LOWLEVEL,
            Constants.WARN_ADM_RECORD_IS_OCCUPIED,
            Constants.WARN_APM_HOWLING,
            Constants.WARN_ADM_GLITCH_STATE,
//            Constants.WARN_APM_RESIDUAL_ECHO,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaWarningCode {
    }

//    @IntDef({
//            RtcEngineConfig.AreaCode.AREA_CODE_CN,
//            RtcEngineConfig.AreaCode.AREA_CODE_NA,
//            RtcEngineConfig.AreaCode.AREA_CODE_EU,
//            RtcEngineConfig.AreaCode.AREA_CODE_AS,
//            RtcEngineConfig.AreaCode.AREA_CODE_JP,
//            RtcEngineConfig.AreaCode.AREA_CODE_IN,
//            RtcEngineConfig.AreaCode.AREA_CODE_GLOB,
//    })
//    @Retention(RetentionPolicy.SOURCE)
//    public @interface MetaAreaCode {
//    }

    @IntDef({
//            Constants.SUB_STATE_IDLE,
//            Constants.SUB_STATE_NO_SUBSCRIBED,
//            Constants.SUB_STATE_SUBSCRIBING,
//            Constants.SUB_STATE_SUBSCRIBED,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaStreamSubscribeState {
    }

    @IntDef({
//            Constants.PUB_STATE_IDLE,
//            Constants.PUB_STATE_NO_PUBLISHED,
//            Constants.PUB_STATE_PUBLISHING,
//            Constants.PUB_STATE_PUBLISHED,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaStreamPublishState {
    }

    @IntDef({
//            Constants.RTMP_STREAMING_EVENT_FAILED_LOAD_IMAGE,
    })
    @Retention(RetentionPolicy.SOURCE)
    public @interface MetaRtmpStreamingEvent {
    }
}
