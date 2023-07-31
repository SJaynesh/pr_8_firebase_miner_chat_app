import 'package:code/view/screens/intro_screen_1.dart';
import 'package:code/view/screens/intro_screen_2.dart';
import 'package:code/view/screens/intro_screen_3.dart';
import 'package:code/view/screens/login_page.dart';
import 'package:code/view/screens/splach_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(
    Sizer(
      builder: (context, orientation, deviceType) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
        ),
        getPages: [
          GetPage(
            name: "/",
            page: () => SplachScreen(),
            transition: Transition.circularReveal,
            curve: Curves.easeInOut,
          ),
          GetPage(
            name: "/Intro_screen_1",
            page: () => IntroScreen1(),
            transition: Transition.circularReveal,
            curve: Curves.easeInOut,
          ),
          GetPage(
            name: "/Intro_screen_2",
            page: () => IntroScreen2(),
            transition: Transition.circularReveal,
            curve: Curves.easeInOut,
          ),
          GetPage(
            name: "/Intro_screen_3",
            page: () => IntroScreen3(),
            transition: Transition.circularReveal,
            curve: Curves.easeInOut,
          ),
          GetPage(
            name: "/login_page",
            page: () => LoginPage(),
            transition: Transition.circularReveal,
            curve: Curves.easeInOut,
          ),
        ],
      ),
    ),
  );
}
