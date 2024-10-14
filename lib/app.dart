import 'package:flutter/material.dart';
import 'package:idealmart/route/routes.dart';
import 'package:idealmart/share/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: '!DealMart',
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      routerDelegate: TGoRoute.routes.routerDelegate,
      routeInformationParser: TGoRoute.routes.routeInformationParser,
      routeInformationProvider: TGoRoute.routes.routeInformationProvider,
    );
  }
}
