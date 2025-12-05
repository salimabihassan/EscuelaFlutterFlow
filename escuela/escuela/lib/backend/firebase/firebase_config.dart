import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDFYSuIzJikOnDaPcUJSAMcK2End4pFJkE",
            authDomain: "escuela-d3d43.firebaseapp.com",
            projectId: "escuela-d3d43",
            storageBucket: "escuela-d3d43.firebasestorage.app",
            messagingSenderId: "78330626720",
            appId: "1:78330626720:web:0bbf0759a93b62e3517fc5"));
  } else {
    await Firebase.initializeApp();
  }
}
