# meta_rtc_engine

A new flutter plugin project.

## Getting Started

### Android

Open the `AndroidManifest.xml` file and add the necessary permissions to this file.

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
    <uses-permission android:name="android.permission.BLUETOOTH" />
    ...
</manifest>
```
ProGuard
-keep class co.meta.** {*;}
-keep class org.webrtc.** {*;}

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

