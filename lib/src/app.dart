import 'package:flutter/material.dart';
import 'package:wecode_practic/src/home_screen/home_screen_view.dart';
import 'package:wecode_practic/src/log_screen/login_screen_view.dart';
import 'package:wecode_practic/src/privacy_policy/pravicy_policy_screen.dart';
import 'package:wecode_practic/src/student_screen/student_screen_view.dart';
import 'package:wecode_practic/src/trainers_screen/trainers_screen_view.dart';

class AppView extends StatelessWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/",
      routes: {
        "/": (context) => HomescreenView(),
        "/login": (context) => loginScreen(),
        "/studentScreen": (context) => StudentScreen(),
        "/privacypolicy": (context) => privacypolicy(),
        "/TranersScreenView": (context) => TranersScreenView(),
      },
    );
  }
}
