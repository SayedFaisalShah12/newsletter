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
import 'account_information_payment.dart';

class AcountInformationPremium extends StatefulWidget {
  const AcountInformationPremium({super.key});

  @override
  State<AcountInformationPremium> createState() => _AcountInformationPremiumState();
}

class _AcountInformationPremiumState extends State<AcountInformationPremium> {
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
                          Text(yourAccount, style: titleText,),
                        ],
                      ),
                      SizedBox(height: 2.h,),
                      Obx(() {
                        return Center(
                          child: TextButton(
                            onPressed: () {
                              ImageController.pickImage();
                            },
                            child: ImageController.pickedImage.value != null
                                ? Image.file(
                              File(ImageController.pickedImage.value!.path),
                              height: 159.h,
                              width: 176.w,
                            )
                                : Image.asset(
                              "assets/image/user.png",
                              height: 200,
                              width: 200,
                            ),
                          ),
                        );
                      }),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Column(
                            children: [
                              Text(username, style: normalText,),
                              SizedBox(height: 18.h,),
                              Text(email, style: normalText,),
                              SizedBox(height: 15.h,),
                              Text(password, style: normalText,),
                              SizedBox(height: 109.h,),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Your Are Already a Valued FFF+ Member', style: GoogleFonts.kalam(fontSize: 40.h, wordSpacing: 2), ),
                          Text(subscription, style: normalText,),
                        ],
                      ),
                      SizedBox(height: 13.h,),
                      CustomMainButtonTwo(
                          title: "Payment Plan", width: 352.w, height: 72.h, fontsize: 30, onpressed: (){
                            Get.to(()=> const AcountInformationPayment());
                      }),
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
