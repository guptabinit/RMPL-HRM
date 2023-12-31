import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyCERFPJbkKo1NAcgcBlBq0PE79MfR9sz_Y',
    appId: '1:650911172279:web:22142e6d8bb95f056c2f32',
    messagingSenderId: '650911172279',
    projectId: 'rmpl-hrm',
    authDomain: 'rmpl-hrm.firebaseapp.com',
    storageBucket: 'rmpl-hrm.appspot.com',
    measurementId: 'G-ERCL0RREQW',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXcIblaRRZf4vKA8ty_7j-ONuWBOuwOuY',
    appId: '1:650911172279:android:30d41d47202fd5396c2f32',
    messagingSenderId: '650911172279',
    projectId: 'rmpl-hrm',
    storageBucket: 'rmpl-hrm.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCW9vVwvFsZyQUpbvwiHcLWxhRWcVo78Oo',
    appId: '1:650911172279:ios:ed83d9fbc3d351546c2f32',
    messagingSenderId: '650911172279',
    projectId: 'rmpl-hrm',
    storageBucket: 'rmpl-hrm.appspot.com',
    iosBundleId: 'com.rmpl.rmplHrm',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCW9vVwvFsZyQUpbvwiHcLWxhRWcVo78Oo',
    appId: '1:650911172279:ios:f704bcc2878c901f6c2f32',
    messagingSenderId: '650911172279',
    projectId: 'rmpl-hrm',
    storageBucket: 'rmpl-hrm.appspot.com',
    iosBundleId: 'com.rmpl.rmplHrm.RunnerTests',
  );
}
