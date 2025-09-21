import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAvIBFH_aXLWq2K6FK0eMNRSO_d080kYOA",
            authDomain: "to-do-obupnh.firebaseapp.com",
            projectId: "to-do-obupnh",
            storageBucket: "to-do-obupnh.firebasestorage.app",
            messagingSenderId: "89628096609",
            appId: "1:89628096609:web:742ba3faba0ccaa80c9220"));
  } else {
    await Firebase.initializeApp();
  }
}
