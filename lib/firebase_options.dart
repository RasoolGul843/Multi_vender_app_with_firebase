// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyDhrLY1TPAqXpu1Rqw66UewkJUcDAvXTu0',
    appId: '1:225418999366:web:440d5f11da7a6689f8fc47',
    messagingSenderId: '225418999366',
    projectId: 'fypar-819e4',
    authDomain: 'fypar-819e4.firebaseapp.com',
    storageBucket: 'fypar-819e4.appspot.com',
    measurementId: 'G-PJ9ZQ148D6',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAb3Dkvcai88ZDDXz01k82JuXg7VXAS3tk',
    appId: '1:225418999366:android:848e345d92a6ad10f8fc47',
    messagingSenderId: '225418999366',
    projectId: 'fypar-819e4',
    storageBucket: 'fypar-819e4.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD3gxlviBkr485ACzTIkqkj2bqbGLr2SCk',
    appId: '1:225418999366:ios:a72e58ab8f77ad90f8fc47',
    messagingSenderId: '225418999366',
    projectId: 'fypar-819e4',
    storageBucket: 'fypar-819e4.appspot.com',
    androidClientId: '225418999366-jfs8273i5og01otvh8ilccev8n3gvagf.apps.googleusercontent.com',
    iosClientId: '225418999366-fnugtvn9tmlk0v38h37se32i16dg42jr.apps.googleusercontent.com',
    iosBundleId: 'com.example.multiVenderAppWithFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD3gxlviBkr485ACzTIkqkj2bqbGLr2SCk',
    appId: '1:225418999366:ios:a72e58ab8f77ad90f8fc47',
    messagingSenderId: '225418999366',
    projectId: 'fypar-819e4',
    storageBucket: 'fypar-819e4.appspot.com',
    androidClientId: '225418999366-jfs8273i5og01otvh8ilccev8n3gvagf.apps.googleusercontent.com',
    iosClientId: '225418999366-fnugtvn9tmlk0v38h37se32i16dg42jr.apps.googleusercontent.com',
    iosBundleId: 'com.example.multiVenderAppWithFirebase',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyDhrLY1TPAqXpu1Rqw66UewkJUcDAvXTu0',
    appId: '1:225418999366:web:c60c9e4ed46f81b5f8fc47',
    messagingSenderId: '225418999366',
    projectId: 'fypar-819e4',
    authDomain: 'fypar-819e4.firebaseapp.com',
    storageBucket: 'fypar-819e4.appspot.com',
    measurementId: 'G-B8HQLTZTPK',
  );
}
