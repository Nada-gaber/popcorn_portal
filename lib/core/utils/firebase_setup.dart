import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:popcorn_portal/firebase_options.dart';

Future<void> firebaseSetup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
}