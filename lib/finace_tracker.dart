import 'package:flutter/material.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';

class PopcornPortal extends StatelessWidget {
  AppRouter appRouter;
  PopcornPortal({Key? key, required this.appRouter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.home,
      onGenerateRoute: appRouter.generatRoutes,
    );
  }
}
