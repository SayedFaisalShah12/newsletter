import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newslatter/core/constants/const_texts.dart';
import 'package:newslatter/ui/components/custom_icon_button.dart';
import 'package:newslatter/ui/components/custom_logo.dart';
import 'package:newslatter/ui/components/custom_main_button.dart';
import 'package:newslatter/ui/components/custom_main_container.dart';
import 'package:newslatter/ui/components/custom_text_feild.dart';
import '../../../controller/circular_progress_controller.dart';
import '../../../controller/signUp_controller.dart';
import '../../../core/constants/const_colors.dart';

class SignUpScreen extends StatefulWidget {

  const SignUpScreen({super.key,});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final  signUpController = Get.put(SignUpController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [ConstColor.firstColor.value, ConstColor.SecondColor.value, ConstColor.thirdColor.value,],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Logo()
              ),
              CustomContainer(
                widget: Column(
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          InkWell(child: Icon(Icons.arrow_back_ios), onTap: ()=> Get.back(),),
                          SizedBox(width: 131.h,),
                          Text("Sign Up ", style: GoogleFonts.kalam(fontSize: 35.sp,)),
                        ],
                      ),
                    ),

                    SizedBox(height: 20.h,),
                    CustomTextFeild(hint: "Email",),

                    SizedBox(height: 21.h,),
                    CustomTextFeild(hint: "Username"),

                    SizedBox(height: 21.h,),
                    CustomTextFeild(hint: "Password"),

                    SizedBox(height: 21.h,),
                    CustomTextFeild(hint: "Confirm Password"),

                    SizedBox(height: 10.h,),
                    Text("or Continue with", style: mediumText,),

                    SizedBox(height: 12.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomIconButton(image: Image.asset("assets/icon/google.png")),
                        SizedBox(width: 20.h,),
                        CustomIconButton(image: Image.asset("assets/icon/apple.png")),
                      ],
                    ),

                    SizedBox(height: 20.h,),
                    CustomMainButton(title: 'Sign Up', onpressed:(){
                      signUpController.signUp();
                    }
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
