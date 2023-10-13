import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAbZh1Hot4mjKQKWmP6sp6oGLx14_v5roI",
            authDomain: "flutterflowgems.firebaseapp.com",
            projectId: "flutterflowgems",
            storageBucket: "flutterflowgems.appspot.com",
            messagingSenderId: "670798848151",
            appId: "1:670798848151:web:9b188bb7935df05b4b49d2",
            measurementId: "G-DG0J82L864"));
  } else {
    await Firebase.initializeApp();
  }
}
