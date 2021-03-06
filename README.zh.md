# meta_rtc_engine

![pub package](https://img.shields.io/pub/v/meta_rtc_engine.svg?include_prereleases)

[English](README.md)

此 Flutter 插件 是对 [meta 视频 SDK](https://docs.wuji.co/cn/Video/API%20Reference/java/v3.0.1.1/index.html) 的包装。

meta.io 通过一个简单而强大的 SDK 为您提供了添加实时语音和视频通信的构建块。您可以集成此 SDK 以便在您自己的应用程序中快速实现实时通信。

## 如何使用

为了使用此插件, 添加 `meta_rtc_engine` 到您的 [pubspec.yaml](https://flutter.dev/docs/development/packages-and-plugins/using-packages) 文件中。

## 快速开始

* 参阅 [example](example) 目录，这是一个一对一视频聊天的示例。
* 或者检出 [Tutorial](https://github.com/meta-rti/Basic-Video-Call/tree/main/One-to-One-Video) ，这是一个直播场景的示例.

## 设备权限

meta 视频 SDK 需要 `摄像头` 和 `麦克风` 权限来开始视频通话。

### Android

打开 `AndroidManifest.xml` 文件并且添加必备的权限到此文件中.

```xml
<manifest>
    ...
    <uses-permission android:name="android.permission.READ_PHONE_STATE"/>
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.RECORD_AUDIO" />
    <uses-permission android:name="android.permission.CAMERA" />
    <uses-permission android:name="android.permission.MODIFY_AUDIO_SETTINGS" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    
    <!-- The Meta SDK requires Bluetooth permissions in case users are using Bluetooth devices.-->
    <uses-permission android:name="android.permission.BLUETOOTH" android:maxSdkVersion="30"/>
    ...
</manifest>
```

- 如果您的项目targetVersion 大于30 ，即Android 12 及以上需要适配蓝牙权限。在manifest中注册权限并动态申请。
```xml
<manifest>
  ...
  <uses-permission android:name="android.permission.BLUETOOTH_SCAN" />
  <uses-permission android:name="android.permission.BLUETOOTH_CONNECT" />
  <uses-permission android:name="android.permission.BLUETOOTH_ADVERTISE" />
  ...
</manifest>

private val PERMISSION_REQ_CODE = 10000
private val PERMISSIONS = arrayOf(
    Manifest.permission.BLUETOOTH_SCAN,
    Manifest.permission.BLUETOOTH_CONNECT,
    Manifest.permission.BLUETOOTH_ADVERTISE
)
private fun requestPermissions() {
    if (Build.VERSION.SDK_INT>=Build.VERSION_CODES.S){
        ActivityCompat.requestPermissions(this@MainActivity, PERMISSIONS, PERMISSION_REQ_CODE)
    }
}
```

ProGuard

-keep class co.meta.** {*;}

-keep class org.webrtc.** {*;}

### iOS

打开 `info.plist` 文件并且添加：

- `Privacy - Microphone Usage Description`，并且在 `Value` 列中添加描述。
- `Privacy - Camera Usage Description`, 并且在 `Value` 列中添加描述。

您的程序可以在后台运行音视频通话，前提是您开启了后台模式。在 Xcode 中选择您的 app target，点击 **Capabilities** 标签，开启 **Background Modes**，并且检查 **Audio、AirPlay 和 Picture in Picture**。

## Flutter2 支持

### 空安全

我们在 [2.0.3](https://pub.dev/packages/meta_rtc_engine/versions) 版本已经正式支持了空安全。
此版本不向下兼容，需要您的工程迁移至空安全，具体参考 [迁移至空安全](https://dart.cn/null-safety/migration-guide) 。


## 常见问题

### iOS 无法显示视频（Android 是好的）

我们的 SDK 使用 `PlatformView`，您需要设置 `io.flutter.embedded_views_preview` 为 `YES` 在您的 **info.plist** 中。

### iOS 内存泄漏

如果您使用 `stable` 版本的 `flutter`，`PlatformView` 会导致内存泄漏，您可以运行 `flutter channel beta`

您可以参考这个 [pull request](https://github.com/flutter/engine/pull/14326)

## API

* [Flutter API](https://docs.wuji.co/cn/Video/API%20Reference/java/v3.0.1.1/index.html)
* [Android API](https://docs.wuji.co/cn/Video/API%20Reference/java/v3.0.1.1/index.html)
* [iOS API](https://docs.wuji.co/cn/Video/API%20Reference/oc/v3.0.1.1/docs/headers/Meta-Objective-C-API-Overview.html)


