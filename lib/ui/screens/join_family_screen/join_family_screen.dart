import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newslatter/core/constants/const_colors.dart';
import 'package:newslatter/core/constants/const_styles.dart';
import 'package:newslatter/core/constants/const_texts.dart';
import 'package:newslatter/ui/components/custom_main_button.dart';
import 'package:newslatter/ui/components/custom_text_feild.dart';

class JoinFamily extends StatefulWidget {
  const JoinFamily({super.key});

  @override
  State<JoinFamily> createState() => _JoinFamilyState();
}

class _JoinFamilyState extends State<JoinFamily> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                ConstColor.firstColor.value,
                ConstColor.SecondColor.value,
                ConstColor.thirdColor.value,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100.h,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/image/logo.png',
                      height: 100.h,
                      width: 110.w,
                    ),
                    // Container(
                    //   color: Colors.pink,
                    //   height: 90.h,
                    //   child: Column(
                    //     children: [
                    //       Text("Account",style: normalText,),
                    //       Text("Log Out",style: normalText,),
                    //     ],
                    //   ),
                    // )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: ConstColor.containerBackgroundColor.value,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Padding(
                        //   padding:   EdgeInsets.only(top: 32.h),
                        //   child: Text("Your Families", style: titleText),
                        // ),
                        Text(
                          joinFamily,
                          style: homeScreenTitle,
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        Text(
                          joinNow,
                          style: normalText,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 40.h,
                        ),
                        CustomTextFeild(hint: 'Access Code'),
                        Spacer(),
                        CustomMainButton(
                            title: 'Join Family', onpressed: () {}),
                        SizedBox(
                          height: 30,
                        ),

                        // Padding(
                        //   padding:  EdgeInsets.symmetric(horizontal: 10.w),
                        //   child: Container(
                        //     padding: EdgeInsets.only(left: 16.w,right: 16.w,top: 30.h),
                        //     width: double.infinity,
                        //     height: 448.h,
                        //     decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(10.sp),
                        //         border: Border.all(color:ConstColor.outBorderColor.value,width: 2)
                        //     ),
                        //     child: Column(
                        //       children: [
                        //         HomeContainer(title: 'Yao Family',),
                        //         SizedBox(height: 52.h,),
                        //         HomeContainer(title: 'Ullery Family',),
                        //         SizedBox(height: 52.h,),
                        //         HomeContainer(title: 'Johnson Family',)
                        //       ],
                        //     ),
                        //   ),
                        // ),
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
