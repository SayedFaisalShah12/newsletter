import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newslatter/ui/components/custom_main_button2.dart';
import 'package:newslatter/ui/components/custom_main_container.dart';
import '../../../../controller/image_picker_controller.dart';
import '../../../../core/constants/const_colors.dart';
import '../../../../core/constants/const_styles.dart';
import '../../../../core/constants/const_texts.dart';
import '../../../components/custom_logo.dart';

class AcountInformationPayment extends StatefulWidget {
  const AcountInformationPayment({super.key});

  @override
  State<AcountInformationPayment> createState() => _AcountInformationPaymentState();
}

class _AcountInformationPaymentState extends State<AcountInformationPayment> {
  final ImageController = Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: Logo(),
              ),
              CustomContainer(
                widget: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 14.h,),
                    Row(
                      children: [
                        IconButton(
                            onPressed: (){
                              Get.back();
                            },
                            icon: Icon(Icons.arrow_back_ios_new)),
                        SizedBox(width: 64.w,),
                        Text(paymentPlan, style: titleText,),
                      ],
                    ),
                    SizedBox(height: 29.h,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(subscription, style: normalText,),
                        SizedBox(height: 50.h,),
                        Text("$currentPayment: 2830", style: normalText,),
                        SizedBox(height: 37.h,),
                        Text(paymentStarted, style: normalText,),
                        SizedBox(height: 37.h,),
                        Text(nextPayment, style: normalText,),

                        SizedBox(height: 175.h,),
                        CustomMainButtonTwo(
                          title: 'Change Method',
                          width: 275.w,
                          height: 50.h,
                          fontsize: 20,
                          onpressed:(){},
                        ),

                        SizedBox(height: 33.h,),
                        CustomMainButtonTwo(
                          title: 'Cancel Plan',
                          width: 275.w,
                          height: 50.h,
                          fontsize: 20,
                          onpressed:(){},
                        ),

                        SizedBox(height: 33.h,),
                        CustomMainButtonTwo(
                          title: 'Change Plan',
                          width: 275.w,
                          height: 50.h,
                          fontsize: 20,
                          onpressed:(){},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
