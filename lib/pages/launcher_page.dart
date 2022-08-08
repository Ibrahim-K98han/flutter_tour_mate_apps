import 'package:flutter/material.dart';
import 'package:flutter_tour_mate_apps/auth/firebase_authentication.dart';
import 'package:flutter_tour_mate_apps/pages/home_page.dart';
import 'package:flutter_tour_mate_apps/pages/login_page.dart';

class LauncherPage extends StatefulWidget {
  static final routeName = '/launcher';
  const LauncherPage({Key? key}) : super(key: key);

  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  late FirebaseAuthenticationService authenticationService;
  @override
  initState(){
    authenticationService = FirebaseAuthenticationService();
    Future.delayed(Duration.zero, (){
      authenticationService.currentUser == null ?
      Navigator.pushReplacementNamed(context, LoginPage.routeName) :
      Navigator.pushReplacementNamed(context, HomePage.routeName);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
