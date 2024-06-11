import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newslatter/controller/animated_bottomsheet_controller.dart';
import 'package:newslatter/core/constants/const_colors.dart';
import 'package:newslatter/core/constants/const_rich_text.dart';
import 'package:newslatter/core/constants/const_texts.dart';
import 'package:newslatter/ui/components/custom_logo.dart';
import 'package:newslatter/ui/components/custom_main_button.dart';
import 'package:newslatter/ui/screens/auth_screens/login/login.dart';
import 'package:newslatter/ui/screens/auth_screens/signUp/signUp.dart';

class LoginOrSignUp extends StatefulWidget {
  const LoginOrSignUp({super.key});

  @override
  State<LoginOrSignUp> createState() => _LoginOrSignUpState();
}

class _LoginOrSignUpState extends State<LoginOrSignUp> {
  final bottomSheetController = Get.put(BottomSheetController());
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bottomSheetController.showBottomSheet(context);
    });
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Logo(),
             Expanded(
               child: Container(
                decoration:  BoxDecoration(
                  color: ConstColor.containerBackgroundColor.value,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Column(
                  children: [
                    Align(
                        alignment:Alignment.centerLeft,
                        child: IconButton(onPressed: ()=> Get.back(), icon: const Icon(Icons.arrow_back_ios))
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(30),
                          child: Text(splash1, style: GoogleFonts.kalam(
                            fontSize: 43.sp,
                            color: ConstColor.bgColor.value,
                            fontWeight: FontWeight.bold,
                          )),
                        ),
                        const SizedBox(height: 50),
                        CustomMainButton(title: 'Sign Up', onpressed: ()=> Get.to(const SignUpScreen()) , style: GoogleFonts.kalam(),),
               
                        const SizedBox(height: 60),
                        CustomMainButton(title: 'Login', onpressed: ()=>Get.to(const LoginScreen()) ,style: GoogleFonts.kalam()),
               
                        const SizedBox(height: 70),
                        const RichTextTwo()
                      ],
                    ),
                  ],
                )
                           ),
             ),
              ],
            ),
          ),
      ),

    );
  }
}


