// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'classes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserInfo _$UserInfoFromJson(Map<String, dynamic> json) {
  return UserInfo(
    json['uid'] as int,
    json['userAccount'] as String);
}

Map<String, dynamic> _$UserInfoToJson(UserInfo instance) => <String, dynamic>{
      'uid': instance.uid,
      'userAccount': instance.userAccount,
    };

VideoDimensions _$VideoDimensionsFromJson(Map<String, dynamic> json) {
  return VideoDimensions(
    json['width'] as int,
    json['height'] as int,
  );
}

Map<String, dynamic> _$VideoDimensionsToJson(VideoDimensions instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
    };

VideoEncoderConfiguration _$VideoEncoderConfigurationFromJson(
        Map<String, dynamic> json) =>
    VideoEncoderConfiguration(
      dimensions: json['dimensions'] == null
          ? null
          : VideoDimensions.fromJson(
              json['dimensions'] as Map<String, dynamic>),
      frameRate:
          $enumDecodeNullable(_$VideoFrameRateEnumMap, json['frameRate']),
      minFrameRate:
          $enumDecodeNullable(_$VideoFrameRateEnumMap, json['minFrameRate']),
      bitrate: json['bitrate'] as int?,
      minBitrate: json['minBitrate'] as int?,
      orientationMode: $enumDecodeNullable(
          _$VideoOutputOrientationModeEnumMap, json['orientationMode']),
      degradationPrefer: $enumDecodeNullable(
          _$DegradationPreferenceEnumMap, json['degradationPreference']),
      mirrorMode:
          $enumDecodeNullable(_$VideoMirrorModeEnumMap, json['mirrorMode']),
    );

Map<String, dynamic> _$VideoEncoderConfigurationToJson(
    VideoEncoderConfiguration instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('dimensions', instance.dimensions?.toJson());
  writeNotNull('frameRate', _$VideoFrameRateEnumMap[instance.frameRate]);
  writeNotNull('minFrameRate', _$VideoFrameRateEnumMap[instance.minFrameRate]);
  writeNotNull('bitrate', instance.bitrate);
  writeNotNull('minBitrate', instance.minBitrate);
  writeNotNull('orientationMode',
      _$VideoOutputOrientationModeEnumMap[instance.orientationMode]);
  writeNotNull('degradationPrefer',
      _$DegradationPreferenceEnumMap[instance.degradationPrefer]);
  writeNotNull('mirrorMode', _$VideoMirrorModeEnumMap[instance.mirrorMode]);
  return val;
}

const _$VideoFrameRateEnumMap = {
  VideoFrameRate.Min: -1,
  VideoFrameRate.Fps1: 1,
  VideoFrameRate.Fps7: 7,
  VideoFrameRate.Fps10: 10,
  VideoFrameRate.Fps15: 15,
  VideoFrameRate.Fps24: 24,
  VideoFrameRate.Fps30: 30,
  VideoFrameRate.Fps60: 60,
};

const _$VideoOutputOrientationModeEnumMap = {
  VideoOutputOrientationMode.Adaptative: 0,
  VideoOutputOrientationMode.FixedLandscape: 1,
  VideoOutputOrientationMode.FixedPortrait: 2,
};

const _$DegradationPreferenceEnumMap = {
  DegradationPreference.MaintainQuality: 0,
  DegradationPreference.MaintainFramerate: 1,
  DegradationPreference.Balanced: 2,
};

const _$VideoMirrorModeEnumMap = {
  VideoMirrorMode.Auto: 0,
  VideoMirrorMode.Enabled: 1,
  VideoMirrorMode.Disabled: 2,
};

BeautyOptions _$BeautyOptionsFromJson(Map<String, dynamic> json) {
  return BeautyOptions(
    lighteningContrastLevel: $enumDecodeNullable(
        _$LighteningContrastLevelEnumMap, json['lighteningContrastLevel']),
    lighteningLevel: (json['lighteningLevel'] as num?)?.toDouble(),
    smoothnessLevel: (json['smoothnessLevel'] as num?)?.toDouble(),
    rednessLevel: (json['rednessLevel'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$BeautyOptionsToJson(BeautyOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('lighteningContrastLevel',
      _$LighteningContrastLevelEnumMap[instance.lighteningContrastLevel]);
  writeNotNull('lighteningLevel', instance.lighteningLevel);
  writeNotNull('smoothnessLevel', instance.smoothnessLevel);
  writeNotNull('rednessLevel', instance.rednessLevel);
  return val;
}

const _$LighteningContrastLevelEnumMap = {
  LighteningContrastLevel.Low: 0,
  LighteningContrastLevel.Normal: 1,
  LighteningContrastLevel.High: 2,
};

MetaImage _$MetaImageFromJson(Map<String, dynamic> json) {
  return MetaImage(
    json['url'] as String,
    json['x'] as int,
    json['y'] as int,
    json['width'] as int,
    json['height'] as int,
  );
}

Map<String, dynamic> _$MetaImageToJson(MetaImage instance) =>
    <String, dynamic>{
      'url': instance.url,
      'x': instance.x,
      'y': instance.y,
      'width': instance.width,
      'height': instance.height,
    };

TranscodingUser _$TranscodingUserFromJson(Map<String, dynamic> json) {
  return TranscodingUser(
    json['uid'] as int,
    json['x'] as int,
    json['y'] as int,
    width: json['width'] as int,
    height: json['height'] as int,
    zOrder: json['zOrder'] as int,
    alpha: (json['alpha'] as num?)?.toDouble(),
    audioChannel:
        $enumDecodeNullable(_$AudioChannelEnumMap, json['audioChannel']),
  );
}

Map<String, dynamic> _$TranscodingUserToJson(TranscodingUser instance) {
  final val = <String, dynamic>{
    'uid': instance.uid,
    'x': instance.x,
    'y': instance.y,
    'width': instance.width,
    'height': instance.height,
    'zOrder': instance.zOrder,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('alpha', instance.alpha);
  val['audioChannel'] = _$AudioChannelEnumMap[instance.audioChannel];
  return val;
}

const _$AudioChannelEnumMap = {
  AudioChannel.Channel0: 0,
  AudioChannel.Channel1: 1,
  AudioChannel.Channel2: 2,
  AudioChannel.Channel3: 3,
  AudioChannel.Channel4: 4,
  AudioChannel.Channel5: 5,
};

Color _$ColorFromJson(Map<String, dynamic> json) {
  return Color(
    json['red'] as int,
    json['green'] as int,
    json['blue'] as int,
  );
}

Map<String, dynamic> _$ColorToJson(Color instance) => <String, dynamic>{
      'red': instance.red,
      'green': instance.green,
      'blue': instance.blue,
    };

LiveTranscoding _$LiveTranscodingFromJson(Map<String, dynamic> json) {
  return LiveTranscoding(
    (json['transcodingUsers'] as List<dynamic>)
          .map((e) => TranscodingUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    width: json['width'] as int,
    height: json['height'] as int,
    videoBitrate: json['videoBitrate'] as int,
    videoFramerate:
        $enumDecodeNullable(_$VideoFrameRateEnumMap, json['videoFramerate']),
    lowLatency: json['lowLatency'] as bool,
    videoGop: json['videoGop'] as int,
    watermark: json['watermark'] == null
        ? null
        : MetaImage.fromJson(json['watermark'] as Map<String, dynamic>),
    backgroundImage: json['backgroundImage'] == null
        ? null
        : MetaImage.fromJson(json['backgroundImage'] as Map<String, dynamic>),
    audioSampleRate: $enumDecodeNullable(
        _$AudioSampleRateTypeEnumMap, json['audioSampleRate']),
    audioBitrate: json['audioBitrate'] as int,
    audioChannels:
        $enumDecodeNullable(_$AudioChannelEnumMap, json['audioChannels']),
    audioCodecProfile: $enumDecodeNullable(
        _$AudioCodecProfileTypeEnumMap, json['audioCodecProfile']),
    videoCodecProfile: $enumDecodeNullable(
        _$VideoCodecProfileTypeEnumMap, json['videoCodecProfile']),
    backgroundColor: json['backgroundColor'] == null
        ? null
        : Color.fromJson(json['backgroundColor'] as Map<String, dynamic>),
    userConfigExtraInfo: json['userConfigExtraInfo'] as String,
  );
}

Map<String, dynamic> _$LiveTranscodingToJson(LiveTranscoding instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('width', instance.width);
  writeNotNull('height', instance.height);
  writeNotNull('videoBitrate', instance.videoBitrate);
  writeNotNull(
      'videoFramerate', _$VideoFrameRateEnumMap[instance.videoFramerate]);
  writeNotNull('lowLatency', instance.lowLatency);
  writeNotNull('videoGop', instance.videoGop);
  writeNotNull('watermark', instance.watermark?.toJson());
  writeNotNull('backgroundImage', instance.backgroundImage?.toJson());
  writeNotNull('audioSampleRate',
      _$AudioSampleRateTypeEnumMap[instance.audioSampleRate]);
  writeNotNull('audioBitrate', instance.audioBitrate);
  writeNotNull('audioChannels', _$AudioChannelEnumMap[instance.audioChannels]);
  writeNotNull('audioCodecProfile',
      _$AudioCodecProfileTypeEnumMap[instance.audioCodecProfile]);
  writeNotNull('videoCodecProfile',
      _$VideoCodecProfileTypeEnumMap[instance.videoCodecProfile]);
  writeNotNull('backgroundColor', instance.backgroundColor?.toJson());
  writeNotNull('userConfigExtraInfo', instance.userConfigExtraInfo);
  val['transcodingUsers'] =
      instance.transcodingUsers.map((e) => e.toJson()).toList();
  return val;
}

const _$AudioSampleRateTypeEnumMap = {
  AudioSampleRateType.Type32000: 32000,
  AudioSampleRateType.Type44100: 44100,
  AudioSampleRateType.Type48000: 48000,
};

const _$AudioCodecProfileTypeEnumMap = {
  AudioCodecProfileType.LCAAC: 0,
  AudioCodecProfileType.HEAAC: 1,
};

const _$VideoCodecProfileTypeEnumMap = {
  VideoCodecProfileType.BaseLine: 66,
  VideoCodecProfileType.Main: 77,
  VideoCodecProfileType.High: 100,
};

ChannelMediaInfo _$ChannelMediaInfoFromJson(Map<String, dynamic> json) {
  return ChannelMediaInfo(
     json['channelName'] as String,
     json['uid'] as int,
     json['token'] as String,
  );
}

Map<String, dynamic> _$ChannelMediaInfoToJson(ChannelMediaInfo instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('channelName', instance.channelName);
  writeNotNull('token', instance.token);
  val['uid'] = instance.uid;
  return val;
}

ChannelMediaRelayConfiguration _$ChannelMediaRelayConfigurationFromJson(
    Map<String, dynamic> json) {
  return ChannelMediaRelayConfiguration(
     ChannelMediaInfo.fromJson(json['srcInfo'] as Map<String, dynamic>),
   (json['destInfos'] as List<dynamic>)
          .map((e) => ChannelMediaInfo.fromJson(e as Map<String, dynamic>))
          .toList(),
  );
}

Map<String, dynamic> _$ChannelMediaRelayConfigurationToJson(
        ChannelMediaRelayConfiguration instance) =>
    <String, dynamic>{
      'srcInfo': instance.srcInfo.toJson(),
      'destInfos': instance.destInfos.map((e) => e.toJson()).toList(),
    };

LastmileProbeConfig _$LastmileProbeConfigFromJson(Map<String, dynamic> json) {
  return LastmileProbeConfig(
    json['probeUplink'] as bool,
    json['probeDownlink'] as bool,
    json['expectedUplinkBitrate'] as int,
    json['expectedDownlinkBitrate'] as int,
  );
}

Map<String, dynamic> _$LastmileProbeConfigToJson(
        LastmileProbeConfig instance) =>
    <String, dynamic>{
      'probeUplink': instance.probeUplink,
      'probeDownlink': instance.probeDownlink,
      'expectedUplinkBitrate': instance.expectedUplinkBitrate,
      'expectedDownlinkBitrate': instance.expectedDownlinkBitrate,
    };

Rectangle _$RectangleFromJson(Map<String, dynamic> json) {
  return Rectangle(
     x: json['x'] as int?,
     y: json['y'] as int?,
     width: json['width'] as int?,
     height: json['height'] as int?,
  );
}

Map<String, dynamic> _$RectangleToJson(Rectangle instance) => <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'width': instance.width,
      'height': instance.height,
    };

WatermarkOptions _$WatermarkOptionsFromJson(Map<String, dynamic> json) {
  return WatermarkOptions(
    json['positionInLandscapeMode'] == null
        ? null
        : Rectangle.fromJson(
            json['positionInLandscapeMode'] as Map<String, dynamic>),
    json['positionInPortraitMode'] == null
        ? null
        : Rectangle.fromJson(
            json['positionInPortraitMode'] as Map<String, dynamic>),
    visibleInPreview: json['visibleInPreview'] as bool,
  );
}

Map<String, dynamic> _$WatermarkOptionsToJson(WatermarkOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('visibleInPreview', instance.visibleInPreview);
  val['positionInLandscapeMode'] = instance.positionInLandscapeMode?.toJson();
  val['positionInPortraitMode'] = instance.positionInPortraitMode?.toJson();
  return val;
}

LiveInjectStreamConfig _$LiveInjectStreamConfigFromJson(
    Map<String, dynamic> json) {
  return LiveInjectStreamConfig(
    width: json['width'] as int,
    height: json['height'] as int,
    videoGop: json['videoGop'] as int,
    videoFramerate:
        $enumDecodeNullable(_$VideoFrameRateEnumMap, json['videoFramerate']),
    videoBitrate: json['videoBitrate'] as int,
    audioSampleRate: $enumDecodeNullable(
        _$AudioSampleRateTypeEnumMap, json['audioSampleRate']),
    audioBitrate: json['audioBitrate'] as int,
    audioChannels:
        $enumDecodeNullable(_$AudioChannelEnumMap, json['audioChannels']),
  );
}

Map<String, dynamic> _$LiveInjectStreamConfigToJson(
    LiveInjectStreamConfig instance) {
  final val = <String, dynamic>{
    'width': instance.width,
    'height': instance.height,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('videoGop', instance.videoGop);
  writeNotNull(
      'videoFramerate', _$VideoFrameRateEnumMap[instance.videoFramerate]);
  writeNotNull('videoBitrate', instance.videoBitrate);
  writeNotNull('audioSampleRate',
      _$AudioSampleRateTypeEnumMap[instance.audioSampleRate]);
  writeNotNull('audioBitrate', instance.audioBitrate);
  writeNotNull('audioChannels', _$AudioChannelEnumMap[instance.audioChannels]);
  return val;
}

CameraCapturerConfiguration _$CameraCapturerConfigurationFromJson(
    Map<String, dynamic> json) {
  return CameraCapturerConfiguration(
    $enumDecodeNullable(
        _$CameraCaptureOutputPreferenceEnumMap, json['preference']),
    $enumDecodeNullable(_$CameraDirectionEnumMap, json['cameraDirection']),
  );
}

Map<String, dynamic> _$CameraCapturerConfigurationToJson(
        CameraCapturerConfiguration instance) =>
    <String, dynamic>{
      'preference': _$CameraCaptureOutputPreferenceEnumMap[instance.preference],
      'cameraDirection': _$CameraDirectionEnumMap[instance.cameraDirection],
    };

const _$CameraCaptureOutputPreferenceEnumMap = {
  CameraCaptureOutputPreference.Auto: 0,
  CameraCaptureOutputPreference.Performance: 1,
  CameraCaptureOutputPreference.Preview: 2,
  CameraCaptureOutputPreference.Unkown: 3,
};

const _$CameraDirectionEnumMap = {
  CameraDirection.Rear: 0,
  CameraDirection.Front: 1,
};

ChannelMediaOptions _$ChannelMediaOptionsFromJson(Map<String, dynamic> json) {
  return ChannelMediaOptions(
    json['autoSubscribeAudio'] as bool,
    json['autoSubscribeVideo'] as bool,
  );
}

Map<String, dynamic> _$ChannelMediaOptionsToJson(
        ChannelMediaOptions instance) =>
    <String, dynamic>{
      'autoSubscribeAudio': instance.autoSubscribeAudio,
      'autoSubscribeVideo': instance.autoSubscribeVideo,
    };

EncryptionConfig _$EncryptionConfigFromJson(Map<String, dynamic> json) {
  return EncryptionConfig(
    $enumDecodeNullable(_$EncryptionModeEnumMap, json['encryptionMode']),
    json['encryptionKey'] as String,
  );
}

Map<String, dynamic> _$EncryptionConfigToJson(EncryptionConfig instance) =>
    <String, dynamic>{
      'encryptionMode': _$EncryptionModeEnumMap[instance.encryptionMode],
      'encryptionKey': instance.encryptionKey,
    };

const _$EncryptionModeEnumMap = {
  EncryptionMode.None: 0,
  EncryptionMode.AES128XTS: 1,
  EncryptionMode.AES128ECB: 2,
  EncryptionMode.AES256XTS: 3,
  EncryptionMode.SM4128ECB: 4,
};

RtcStats _$RtcStatsFromJson(Map<String, dynamic> json) {
  return RtcStats(
    json['totalDuration'] as int,
    json['txBytes'] as int,
    json['rxBytes'] as int,
    json['txAudioBytes'] as int,
    json['txVideoBytes'] as int,
    json['rxAudioBytes'] as int,
    json['rxVideoBytes'] as int,
    json['txKBitRate'] as int,
    json['rxKBitRate'] as int,
    json['txAudioKBitRate'] as int,
    json['rxAudioKBitRate'] as int,
    json['txVideoKBitRate'] as int,
    json['rxVideoKBitRate'] as int,
    json['users'] as int,
    json['lastmileDelay'] as int,
    json['txPacketLossRate'] as int,
    json['rxPacketLossRate'] as int,
    (json['cpuTotalUsage'] as num).toDouble(),
    (json['cpuAppUsage'] as num).toDouble(),
    json['gatewayRtt'] as int,
    (json['memoryAppUsageRatio'] as num).toDouble(),
    (json['memoryTotalUsageRatio'] as num).toDouble(),
    json['memoryAppUsageInKbytes'] as int,
  );
}

Map<String, dynamic> _$RtcStatsToJson(RtcStats instance) => <String, dynamic>{
      'totalDuration': instance.totalDuration,
      'txBytes': instance.txBytes,
      'rxBytes': instance.rxBytes,
      'txAudioBytes': instance.txAudioBytes,
      'txVideoBytes': instance.txVideoBytes,
      'rxAudioBytes': instance.rxAudioBytes,
      'rxVideoBytes': instance.rxVideoBytes,
      'txKBitRate': instance.txKBitRate,
      'rxKBitRate': instance.rxKBitRate,
      'txAudioKBitRate': instance.txAudioKBitRate,
      'rxAudioKBitRate': instance.rxAudioKBitRate,
      'txVideoKBitRate': instance.txVideoKBitRate,
      'rxVideoKBitRate': instance.rxVideoKBitRate,
      'users': instance.users,
      'lastmileDelay': instance.lastmileDelay,
      'txPacketLossRate': instance.txPacketLossRate,
      'rxPacketLossRate': instance.rxPacketLossRate,
      'cpuTotalUsage': instance.cpuTotalUsage,
      'cpuAppUsage': instance.cpuAppUsage,
      'gatewayRtt': instance.gatewayRtt,
      'memoryAppUsageRatio': instance.memoryAppUsageRatio,
      'memoryTotalUsageRatio': instance.memoryTotalUsageRatio,
      'memoryAppUsageInKbytes': instance.memoryAppUsageInKbytes,
    };

AudioVolumeInfo _$AudioVolumeInfoFromJson(Map<String, dynamic> json) {
  return AudioVolumeInfo(json['uid'] as int,
  json['volume'] as int,
  json['vad'] as int,
  json['channelId'] as String);
}

Map<String, dynamic> _$AudioVolumeInfoToJson(AudioVolumeInfo instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'volume': instance.volume,
      'vad': instance.vad,
      'channelId': instance.channelId,
    };

Rect _$RectFromJson(Map<String, dynamic> json) {
  return Rect(json['left'] as int,
              json['top'] as int,
              json['right'] as int,
              json['bottom'] as int,
              );
}

Map<String, dynamic> _$RectToJson(Rect instance) => <String, dynamic>{
      'left': instance.left,
      'top': instance.top,
      'right': instance.right,
      'bottom': instance.bottom,
    };

LastmileProbeOneWayResult _$LastmileProbeOneWayResultFromJson(
    Map<String, dynamic> json) {
  return LastmileProbeOneWayResult(
    json['packetLossRate'] as int,
  json['jitter'] as int,
  json['availableBandwidth'] as int);
}

Map<String, dynamic> _$LastmileProbeOneWayResultToJson(
        LastmileProbeOneWayResult instance) =>
    <String, dynamic>{
      'packetLossRate': instance.packetLossRate,
      'jitter': instance.jitter,
      'availableBandwidth': instance.availableBandwidth,
    };

LastmileProbeResult _$LastmileProbeResultFromJson(Map<String, dynamic> json) {

    LastmileProbeResultState state  = $enumDecode(_$LastmileProbeResultStateEnumMap, json['state']);
    int rtt =  json['rtt'] as int;
      LastmileProbeOneWayResult? uplinkReport = json['uplinkReport'] == null ? null
        : LastmileProbeOneWayResult.fromJson(
            json['uplinkReport'] as Map<String, dynamic>);

  LastmileProbeOneWayResult? downlinkReport = json['downlinkReport'] == null
        ? null
        : LastmileProbeOneWayResult.fromJson(
            json['downlinkReport'] as Map<String, dynamic>);

  return LastmileProbeResult(state,rtt,uplinkReport,downlinkReport); 
}

Map<String, dynamic> _$LastmileProbeResultToJson(
        LastmileProbeResult instance) =>
    <String, dynamic>{
      'state': _$LastmileProbeResultStateEnumMap[instance.state],
      'rtt': instance.rtt,
      'uplinkReport': instance.uplinkReport?.toJson(),
      'downlinkReport': instance.downlinkReport?.toJson(),
    };

const _$LastmileProbeResultStateEnumMap = {
  LastmileProbeResultState.Complete: 1,
  LastmileProbeResultState.IncompleteNoBwe: 2,
  LastmileProbeResultState.Unavailable: 3,
};

LocalAudioStats _$LocalAudioStatsFromJson(Map<String, dynamic> json) {
  return LocalAudioStats(json['numChannels'] as int,
  json['sentSampleRate'] as int,
  json['sentBitrate'] as int);
  //json['txPacketLossRate'] as int);
}

Map<String, dynamic> _$LocalAudioStatsToJson(LocalAudioStats instance) =>
    <String, dynamic>{
      'numChannels': instance.numChannels,
      'sentSampleRate': instance.sentSampleRate,
      'sentBitrate': instance.sentBitrate,
      //'txPacketLossRate': instance.txPacketLossRate,
    };

LocalVideoStats _$LocalVideoStatsFromJson(Map<String, dynamic> json) {
  return LocalVideoStats(
    json['sentBitrate'] as int,
   json['sentFrameRate'] as int,
   json['encoderOutputFrameRate'] as int,
   json['rendererOutputFrameRate'] as int,
   json['targetBitrate'] as int,
   json['targetFrameRate'] as int,
   $enumDecode(
        _$VideoQualityAdaptIndicationEnumMap, json['qualityAdaptIndication']),
   json['encodedBitrate'] as int,
   json['encodedFrameWidth'] as int,
   json['encodedFrameHeight'] as int,
   json['encodedFrameCount'] as int,
   $enumDecode(_$VideoCodecTypeEnumMap, json['codecType']),
   // json['txPacketLossRate'] as int,
   // json['captureFrameRate'] as int,
  );
}

Map<String, dynamic> _$LocalVideoStatsToJson(LocalVideoStats instance) =>
    <String, dynamic>{
      'sentBitrate': instance.sentBitrate,
      'sentFrameRate': instance.sentFrameRate,
      'encoderOutputFrameRate': instance.encoderOutputFrameRate,
      'rendererOutputFrameRate': instance.rendererOutputFrameRate,
      'targetBitrate': instance.targetBitrate,
      'targetFrameRate': instance.targetFrameRate,
      'qualityAdaptIndication':
          _$VideoQualityAdaptIndicationEnumMap[instance.qualityAdaptIndication],
      'encodedBitrate': instance.encodedBitrate,
      'encodedFrameWidth': instance.encodedFrameWidth,
      'encodedFrameHeight': instance.encodedFrameHeight,
      'encodedFrameCount': instance.encodedFrameCount,
      'codecType': _$VideoCodecTypeEnumMap[instance.codecType],
      // 'txPacketLossRate': instance.txPacketLossRate,
      // 'captureFrameRate': instance.captureFrameRate,
    };

const _$VideoQualityAdaptIndicationEnumMap = {
  VideoQualityAdaptIndication.AdaptNone: 0,
  VideoQualityAdaptIndication.AdaptUpBandwidth: 1,
  VideoQualityAdaptIndication.AdaptDownBandwidth: 2,
};

const _$VideoCodecTypeEnumMap = {
  VideoCodecType.VP8: 1,
  VideoCodecType.H264: 2,
  VideoCodecType.EVP: 3,
  VideoCodecType.E264: 4,
};

RemoteAudioStats _$RemoteAudioStatsFromJson(Map<String, dynamic> json) {
  return RemoteAudioStats(
   json['uid'] as int,
   $enumDecode(_$NetworkQualityEnumMap, json['quality']),
   json['networkTransportDelay'] as int,
   json['jitterBufferDelay'] as int,
   json['audioLossRate'] as int,
   json['numChannels'] as int,
   json['receivedSampleRate'] as int,
   json['receivedBitrate'] as int,
   json['totalFrozenTime'] as int,
   json['frozenRate'] as int,
   json['totalActiveTime'] as int,
   //json['publishDuration'] as int,
  );
}

Map<String, dynamic> _$RemoteAudioStatsToJson(RemoteAudioStats instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'quality': _$NetworkQualityEnumMap[instance.quality],
      'networkTransportDelay': instance.networkTransportDelay,
      'jitterBufferDelay': instance.jitterBufferDelay,
      'audioLossRate': instance.audioLossRate,
      'numChannels': instance.numChannels,
      'receivedSampleRate': instance.receivedSampleRate,
      'receivedBitrate': instance.receivedBitrate,
      'totalFrozenTime': instance.totalFrozenTime,
      'frozenRate': instance.frozenRate,
      'totalActiveTime': instance.totalActiveTime,
      //'publishDuration': instance.publishDuration,
    };

const _$NetworkQualityEnumMap = {
  NetworkQuality.Unknown: 0,
  NetworkQuality.Excellent: 1,
  NetworkQuality.Good: 2,
  NetworkQuality.Poor: 3,
  NetworkQuality.Bad: 4,
  NetworkQuality.VBad: 5,
  NetworkQuality.Down: 6,
  NetworkQuality.Unsupported: 7,
  NetworkQuality.Detecting: 8,
};

RemoteVideoStats _$RemoteVideoStatsFromJson(Map<String, dynamic> json) {
  return RemoteVideoStats(json['uid'] as int,
  json['delay'] as int,
  json['width'] as int,
  json['height'] as int,
  json['receivedBitrate'] as int,
  json['decoderOutputFrameRate'] as int,
  json['rendererOutputFrameRate'] as int,
  json['packetLossRate'] as int,
  $enumDecode(_$VideoStreamTypeEnumMap, json['rxStreamType']),
  json['totalFrozenTime'] as int,
  json['frozenRate'] as int,
  json['totalActiveTime'] as int,
  //json['publishDuration'] as int,
  );
}

Map<String, dynamic> _$RemoteVideoStatsToJson(RemoteVideoStats instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'delay': instance.delay,
      'width': instance.width,
      'height': instance.height,
      'receivedBitrate': instance.receivedBitrate,
      'decoderOutputFrameRate': instance.decoderOutputFrameRate,
      'rendererOutputFrameRate': instance.rendererOutputFrameRate,
      'packetLossRate': instance.packetLossRate,
      'rxStreamType': _$VideoStreamTypeEnumMap[instance.rxStreamType],
      'totalFrozenTime': instance.totalFrozenTime,
      'frozenRate': instance.frozenRate,
      'totalActiveTime': instance.totalActiveTime,
      //'publishDuration': instance.publishDuration,
    };

const _$VideoStreamTypeEnumMap = {
  VideoStreamType.High: 0,
  VideoStreamType.Low: 1,
};

FacePositionInfo _$FacePositionInfoFromJson(Map<String, dynamic> json) {
  int x = json['x'] as int;
  int y = json['y'] as int;
  int width = json['width'] as int;
  int height = json['height'] as int;
  int distance = json['distance'] as int;
  return FacePositionInfo(x,y,width,height,distance);

}

Map<String, dynamic> _$FacePositionInfoToJson(FacePositionInfo instance) =>
    <String, dynamic>{
      'x': instance.x,
      'y': instance.y,
      'width': instance.width,
      'height': instance.height,
      'distance': instance.distance,
    };

MediaRecordConfig _$MediaRecordConfigFromJson(Map<String, dynamic> json) {
  return MediaRecordConfig()
    ..access_key_id = json['access_key_id'] as String
    ..secret_access_key = json['secret_access_key'] as String
    ..server = json['server'] as String
    ..bucket = json['bucket'] as String
    ..videoBitsPerSecond = json['videoBitsPerSecond'] as int
    ..fileName = json['fileName'] as String
    ..fragmentDuration = json['fragmentDuration'] as int
    ..retryCount = json['retryCount'] as int
    ..retrySleepMs = json['retrySleepMs'] as int
    ..width = json['width'] as int
    ..height = json['height'] as int
    ..fileNamePrefix = json['fileNamePrefix'] as String
    ..audioBitsPerSecond = json['audioBitsPerSecond'] as int;
}

Map<String, dynamic> _$MediaRecordConfigToJson(MediaRecordConfig instance) =>
    <String, dynamic>{
      'access_key_id': instance.access_key_id,
      'secret_access_key': instance.secret_access_key,
      'server': instance.server,
      'bucket': instance.bucket,
      'fileName': instance.fileName,
      'fragmentDuration': instance.fragmentDuration,
      'retryCount': instance.retryCount,
      'retrySleepMs': instance.retrySleepMs,
      'audioBitsPerSecond': instance.audioBitsPerSecond,
      'videoBitsPerSecond': instance.videoBitsPerSecond,
      'width': instance.width,
      'height': instance.height,
      'fileNamePrefix': instance.fileNamePrefix,
    };
