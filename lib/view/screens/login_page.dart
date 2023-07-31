import 'package:code/controllers/password_show_hide_controller.dart';
import 'package:code/utills/atributes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisibility = false;
  PasswordShowHideController passwordShowHideController =
      Get.put(PasswordShowHideController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.yellow,
            image: DecorationImage(
              image: AssetImage("assets/images/loginscreen/loginscreen.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "English (US)",
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        color: Color(0xff7f8d95),
                        fontSize: 12.sp,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Image.asset(
                    "assets/images/splachscreen/instragram_logo.png",
                    height: 12.h,
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  TextFormField(
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 13.sp,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1.5,
                      ),
                    ),
                    controller: userNameController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Username,email or mobile number",
                      labelStyle: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Color(0xffa7abac),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.3,
                        ),
                      ),
                      hintText: "Username,email or mobile number",
                      hintStyle: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Color(0xffa7abac),
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.3,
                        ),
                      ),
                      suffixIcon: (userNameController.text == "")
                          ? Icon(
                              Icons.clear,
                              color: Colors.white,
                            )
                          : IconButton(
                              onPressed: () {
                                userNameController.clear();
                                setState(() {});
                              },
                              icon: Icon(Icons.close),
                            ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffa7abac),
                        ),
                        borderRadius: BorderRadius.circular(1.5.h),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0xffa7abac),
                        ),
                        borderRadius: BorderRadius.circular(1.5.h),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  GetBuilder<PasswordShowHideController>(builder: (_) {
                    return TextFormField(
                      obscureText: (passwordShowHideController
                              .passwordShowHideModel.isVisibility)
                          ? false
                          : true,
                      obscuringCharacter: "*",
                      style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.5,
                        ),
                      ),
                      controller: passwordController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        labelText: "Password",
                        labelStyle: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Color(0xffa7abac),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.3,
                          ),
                        ),
                        hintText: "Password",
                        hintStyle: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Color(0xffa7abac),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.3,
                          ),
                        ),
                        suffixIcon: IconButton(
                          onPressed: () {
                            // isVisibility = !isVisibility;
                            // setState(() {});
                            passwordShowHideController.changeVisibility();
                          },
                          icon: (passwordShowHideController
                                  .passwordShowHideModel.isVisibility)
                              ? Icon(Icons.visibility)
                              : Icon(Icons.visibility_off),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffa7abac),
                          ),
                          borderRadius: BorderRadius.circular(1.5.h),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Color(0xffa7abac),
                          ),
                          borderRadius: BorderRadius.circular(1.5.h),
                        ),
                      ),
                    );
                  }),
                  SizedBox(
                    height: 1.5.h,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 6.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xff0064e0),
                        borderRadius: BorderRadius.circular(10.h),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Log in",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Text(
                    "Forgot password?",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Color(0xff29303a),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    "-------------- Or sing in with --------------",
                    style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                        color: Color(0xff7f8d95),
                        fontSize: 11.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Container(
                        height: 7.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(1.5.h),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff7fbbd8),
                              spreadRadius: 0,
                              blurRadius: 3,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        child:
                            Image.asset("assets/images/loginscreen/google.png"),
                      ),
                      Spacer(),
                      Container(
                        height: 7.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(1.5.h),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff7fbbd8),
                              spreadRadius: 0,
                              blurRadius: 3,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                              "assets/images/loginscreen/facebook.png"),
                        ),
                      ),
                      Spacer(),
                      Container(
                        height: 7.h,
                        width: 20.w,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(1.5.h),
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xff7fbbd8),
                              spreadRadius: 0,
                              blurRadius: 3,
                              offset: Offset(0, 4),
                            ),
                          ],
                        ),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                              "assets/images/loginscreen/anonymous.png"),
                        ),
                      ),
                      Spacer(),
                    ],
                  ),
                  SizedBox(
                    height: 4.5.h,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      height: 6.h,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.h),
                        border: Border.all(
                          color: Color(0xff1f69dd),
                          width: 2,
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Create new account",
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                            color: Color(0xff1f69dd),
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Image.asset(
                    "assets/images/loginscreen/meta.png",
                    height: 8.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
