import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:newslatter/controller/image_picker_controller.dart';
import 'package:newslatter/core/constants/const_colors.dart';
import 'package:newslatter/core/constants/const_styles.dart';
import 'package:newslatter/core/constants/const_texts.dart';
import 'package:newslatter/ui/components/custom_main_button.dart';
import 'package:newslatter/ui/components/custom_main_button2.dart';
import 'package:newslatter/ui/screens/home_screen/account_information/acount_information_premium.dart';


class AccountInformationScreen extends StatefulWidget {
  const AccountInformationScreen({super.key});

  @override
  State<AccountInformationScreen> createState() => _AccountInformationScreenState();
}

class _AccountInformationScreenState extends State<AccountInformationScreen> {
  final ImageController = Get.put(ImagePickerController());
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
                  children: [
                    Image.asset(
                      'assets/image/logo.png',
                      height: 100.h,
                      width: 110.w,
                    ),
                    const Spacer(),
                    const SizedBox(
                      width: 13,
                    ),
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
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                                height: 167.h,
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
                        SizedBox(height: 46.h),
                        Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(username, style: normalText,),
                              SizedBox(height: 18.h,),
                              Text(email, style: normalText,),
                              SizedBox(height: 15.h,),
                              Text(password, style: normalText,),
                              SizedBox(height: 180.h,),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomMainButtonTwo(
                                title: "Learn More About FFF+",
                                width: 353.w,
                                height: 72.h,
                                fontsize: 30,
                                onpressed: (){Get.to(()=>const AcountInformationPremium());},
                            ),
                          ],
                        )
                     ],
              ),
          ),
        ),
        ]
          ),
    ),
    ),
    );
  }
}
