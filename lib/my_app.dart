import 'package:flutter/material.dart';
import 'package:qatana/core/route/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Qatana',
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
    );
  }
}
