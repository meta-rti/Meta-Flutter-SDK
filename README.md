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

- If the targetVersion of your project is greater than 30, that is, Android 12 and above need to adapt to the Bluetooth permission. Register permissions in manifest and apply dynamically.
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

#### iOS & macOS

Open the `Info.plist` and add:

- `Privacy - Microphone Usage Description`，and add some description into the `Value` column.
- `Privacy - Camera Usage Description`, and add some description into the `Value` column.


## Flutter2 support

### Null Safety

Null safety is supported from [2.0.3](https://pub.dev/packages/meta_rtc_engine/versions) version. 
This version is not backwards compatible, your project needs to be migrated to null safety. For more information, please refer to [Migrating to null safety](https://dart.dev/null-safety/migration-guide).

This project is a starting point for a Flutter
[plug-in package](https://flutter.dev/developing-packages/),
a specialized package that includes platform-specific implementation code for
Android and/or iOS.

For help getting started with Flutter, view our
[online documentation](https://flutter.dev/docs), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

