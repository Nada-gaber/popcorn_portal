import 'package:flutter/material.dart';
import 'package:popcorn_portal/popcorn_portal.dart';
import 'core/utils/firebase_setup.dart';
import 'core/routing/app_router.dart';

void main() async {
  await firebaseSetup();
  runApp(PopcornPortal(
    appRouter: AppRouter(),
  ));
}
