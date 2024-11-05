import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDRSuBnXOj2WIrNSottMZfHSFPBxKJ8bwA",
            authDomain: "modie-936dc.firebaseapp.com",
            projectId: "modie-936dc",
            storageBucket: "modie-936dc.appspot.com",
            messagingSenderId: "732082109116",
            appId: "1:732082109116:web:b19144911fa6daa89aeeb9",
            measurementId: "G-1BKY3677KL"));
  } else {
    await Firebase.initializeApp();
  }
}
