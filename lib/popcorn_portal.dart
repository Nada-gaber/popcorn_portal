import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class PopcornPortal extends StatelessWidget {
  final AppRouter appRouter;
  const PopcornPortal({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: const Color(0xFF0E0F0F)),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      onGenerateRoute: appRouter.generatRoutes,
    );
  }
}
