import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'modules/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  FlutterNativeSplash.remove();
  await Hive.initFlutter();
  await Hive.openBox('reminders');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Team M',
      theme: ThemeData(
        // scaffoldBackgroundColor: Color.fromARGB(96, 170, 49, 49),
        // bottomNavigationBarTheme: BottomNavigationBarThemeData(
        //   backgroundColor: Colors.black87,
        //   unselectedItemColor: Colors.grey,
        //   selectedItemColor: Color.fromARGB(255, 190, 175, 31),
        // ),
        primarySwatch: Colors.red,
      ),
      home: LoginScreen(),
    );
  }
}
