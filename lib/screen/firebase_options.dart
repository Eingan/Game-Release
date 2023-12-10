// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDLK_WYaITF2jzHd16DLvk85KyDDV6lU88',
    appId: '1:390262035446:web:85f36e22c4403fbaacedd7',
    messagingSenderId: '390262035446',
    projectId: 'gamerelease-c997a',
    authDomain: 'gamerelease-c997a.firebaseapp.com',
    databaseURL: 'https://gamerelease-c997a-default-rtdb.firebaseio.com',
    storageBucket: 'gamerelease-c997a.appspot.com',
    measurementId: 'G-NZ7PW3KLEB',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDuLn9L_99fBe8fftLlrO_vRvh_0QL7EOE',
    appId: '1:390262035446:android:44b9498ed3aaa891acedd7',
    messagingSenderId: '390262035446',
    projectId: 'gamerelease-c997a',
    databaseURL: 'https://gamerelease-c997a-default-rtdb.firebaseio.com',
    storageBucket: 'gamerelease-c997a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD7hjTLQTPz6P36EsXHultczLJgR393iHg',
    appId: '1:390262035446:ios:23aff2222bf1150aacedd7',
    messagingSenderId: '390262035446',
    projectId: 'gamerelease-c997a',
    databaseURL: 'https://gamerelease-c997a-default-rtdb.firebaseio.com',
    storageBucket: 'gamerelease-c997a.appspot.com',
    iosBundleId: 'com.example.gameRelease',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD7hjTLQTPz6P36EsXHultczLJgR393iHg',
    appId: '1:390262035446:ios:d13907fdf7f7dfc9acedd7',
    messagingSenderId: '390262035446',
    projectId: 'gamerelease-c997a',
    databaseURL: 'https://gamerelease-c997a-default-rtdb.firebaseio.com',
    storageBucket: 'gamerelease-c997a.appspot.com',
    iosBundleId: 'com.example.gameRelease.RunnerTests',
  );
}