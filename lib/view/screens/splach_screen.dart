import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class SplachScreen extends StatelessWidget {
  const SplachScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Get.offAndToNamed("/Intro_screen_1");
    });
    return Scaffold(
      body: Container(
        height: SizerUtil.height,
        width: SizerUtil.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splachscreen/splch.png"),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
