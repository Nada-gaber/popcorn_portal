import 'package:flutter/material.dart';
import 'package:popcorn_portal/popcorn_portal.dart';

import 'core/routing/app_router.dart';


void main() {
  runApp(
    PopcornPortal(
    appRouter: AppRouter(),
  )
  );
}


