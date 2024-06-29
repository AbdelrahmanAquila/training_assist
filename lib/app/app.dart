import 'package:flutter/material.dart';
import 'package:team_m/presentation/res/route_manager.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.red,
      ),
      onGenerateRoute: RouteManager.getRoute,
      initialRoute: Routes.splashRoute,
    );
  }
}
