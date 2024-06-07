import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newslatter/core/constants/const_texts.dart';
import 'package:newslatter/ui/components/custom_logo.dart';
import 'package:newslatter/ui/components/custom_main_container.dart';
import 'package:newslatter/ui/components/custom_password_field.dart';
import 'package:newslatter/ui/components/custom_text_feild.dart';

import '../../../core/constants/const_colors.dart';

class Login extends StatefulWidget {

  const Login({super.key,});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                      SizedBox(height: 20,),
                      Text("Login", style: GoogleFonts.kalam(
                        fontSize: 35.sp,
                      )),

                      SizedBox(height: 40.h,),
                      CustomTextFeild(hint: "Username",),

                      SizedBox(height: 53.h,),
                      CustomPasswordFeild(hint: "Password"),

                      SizedBox(height: 10,),
                      InkWell(
                        child: Text("Forgot Password", style: GoogleFonts.kalam(fontSize: 12, )),
                      )
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
