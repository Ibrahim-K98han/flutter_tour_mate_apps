import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tour_mate_apps/pages/home_page.dart';
import 'package:flutter_tour_mate_apps/pages/launcher_page.dart';
import 'package:flutter_tour_mate_apps/pages/login_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LauncherPage(),
      routes: {
        LauncherPage.routeName:(context) => LauncherPage(),
        LoginPage.routeName:(context) => LoginPage(),
        HomePage.routeName:(context) => HomePage(),
      },
    );
  }
}

