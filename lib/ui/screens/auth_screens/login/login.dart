import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newslatter/controller/circular_progress_controller.dart';
import 'package:newslatter/core/constants/const_colors.dart';
import 'package:newslatter/core/constants/const_styles.dart';
import 'package:newslatter/ui/components/custom_icon_button.dart';
import 'package:newslatter/ui/components/custom_logo.dart';
import 'package:newslatter/ui/components/custom_main_button.dart';
import 'package:newslatter/ui/components/custom_main_container.dart';
import 'package:newslatter/ui/components/custom_password_field.dart';
import 'package:newslatter/ui/components/custom_text_feild.dart';
import 'package:newslatter/ui/screens/auth_screens/forget_password_screen/forget_screen.dart';
import 'package:newslatter/ui/screens/home_screen/home_screen.dart';


class LoginScreen extends StatefulWidget {

  const LoginScreen({super.key,});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final ProgressController progressController = Get.put(ProgressController());
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
                      SizedBox(height: 20.h,),
                      Padding(
                        padding:   EdgeInsets.all(10.h),
                        child: Row(
                          children: [
                            InkWell(child: Icon(Icons.arrow_back_ios), onTap: ()=> Get.back(),),
                            SizedBox(width: 131.h,),
                            Text("Login", style: GoogleFonts.kalam(fontSize: 35.sp,)),
                          ],
                        ),
                      ),

                      SizedBox(height: 40.h,),
                      const CustomTextFeild(hint: "Username",),

                      SizedBox(height: 20.h,),
                      const CustomPasswordFeild(hint: "Password"),

                      SizedBox(height: 12.h,),
                      InkWell(
                          onTap: (){
                            Get.to(()=>ForgetPasswordScreen());
                          },
                          child: Text("Forgot Password", style: normalText)),

                      SizedBox(height: 12.h,),
                      Obx(() {
                         return progressController.isLoading.value
                            ? CircularProgressIndicator( color: ConstColor.wordsColor2.value,)
                            : Container();

                      }),

                      SizedBox(height: 70.h,),
                      Text("or Continue with", style: mediumText,),

                      SizedBox(height: 22.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(image: Image.asset("assets/icon/google.png")),
                          SizedBox(width: 20.h,),
                          CustomIconButton(image: Image.asset("assets/icon/apple.png")),
                        ],
                      ),

                      SizedBox(height: 40.h,),
                      CustomMainButton(title: 'Login', onpressed:(){
                       progressController.startLoading();
                       Get.to(const HomeScreen());
                      }
                      ),

                      SizedBox(height: 7.h,),
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
