import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newslatter/core/constants/const_texts.dart';
import 'package:newslatter/ui/screens/auth_screens/Signup_or_login/signup_or_login.dart';

import '../../../core/constants/const_colors.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [ConstColor.firstColor.value, ConstColor.SecondColor.value, ConstColor.thirdColor.value,],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: SizedBox(
                        height: Get.height * 0.35,
                        width: Get.width * 0.6,
                        child: Column(
                          children: [
                            InkWell(
                              child: Image.asset('assets/image/logo.png'),
                              onTap: (){
                                Get.to( LoginOrSignUp());
                              },
                            ),
                            Text("Tap to Continue!", style: GoogleFonts.kalam(
                              color: Colors.white,
                              fontSize: 20.sp,
                            )),
                          ],
                        ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: Get.height * 0.6,
                      width: Get.width ,
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(250, 250, 210, 0.9),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(40), topRight: Radius.circular(40)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(splash1, style: GoogleFonts.kalam(
                              fontSize: 40.sp,
                              color: Colors.pinkAccent,
                              fontWeight: FontWeight.bold,),
                            ),
                            SizedBox(height: 20,),
                            Text(splash2, style: GoogleFonts.kalam(
                              fontSize: 26.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.normal,),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),
    );
  }
}
