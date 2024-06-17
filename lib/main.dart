import 'package:flutter/material.dart';
import 'package:popcorn_portal/popcorn_portal.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'core/routing/app_router.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(PopcornPortal(
    appRouter: AppRouter(),
  ));
}
