import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:newslatter/core/constants/const_colors.dart';
import 'package:newslatter/core/constants/const_styles.dart';
import 'package:newslatter/core/constants/const_texts.dart';
import 'package:newslatter/generated/assets.dart';
import 'package:newslatter/ui/components/custom_main_button.dart';

import '../family_screen.dart';

class FamilyDesScreen extends StatefulWidget {
  const FamilyDesScreen({super.key});

  @override
  State<FamilyDesScreen> createState() => _FamilyDesScreenState();
}

class _FamilyDesScreenState extends State<FamilyDesScreen> {
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(account, style: normalText),
                        InkWell(
                            onTap: () {},
                            child: Text(logOut, style: normalText)),
                      ],
                    ),
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
                    child: Padding(
                      padding: const EdgeInsets.only(left: 9, right: 9),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 29.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 11.w,
                              ),
                              Image.asset(
                                Assets.back_button,
                                height: 28.h,
                                width: 28.h,
                              ),
                              SizedBox(
                                width: 39.w,
                              ),
                              Text(
                                postTitle,
                                style: normalText,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 18.h,
                          ),
                          Container(
                            height: 230.h,
                            width: 369.w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  postSubTitle,
                                  style: postHeading,
                                ),
                                Text(postAdmin, style: postHeading),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Text(
                                  textAlign: TextAlign.left,
                                  postDetail,
                                  style: postHeading.copyWith(
                                      fontWeight: FontWeight.w400),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 131.h,
                            width: double.infinity.w,
                            child: HorizontalImageList(),
                          ),
                          SizedBox(
                            height: 16.h,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 18, right: 18),
                            child: Image.asset(Assets.reactions_button),
                          ),
                          SizedBox(
                            height: 50.h,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 69.h,
                              width: 311.w,
                              decoration: BoxDecoration(
                                color: ConstColor.textFieldColor.value,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'David Says:',
                                      style: postHeading.copyWith(
                                          color: ConstColor.kWhite.value),
                                    ),
                                    Text(
                                      'Good Job Jackson!',
                                      style: postHeading.copyWith(
                                          color: ConstColor.kWhite.value),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 19.h,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              height: 69.h,
                              width: 311.w,
                              decoration: BoxDecoration(
                                color: ConstColor.textFieldColor.value,
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 15),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'David Says:',
                                      style: postHeading.copyWith(
                                          color: ConstColor.kWhite.value),
                                    ),
                                    Text(
                                      'Good Job Jackson!',
                                      style: postHeading.copyWith(
                                          color: ConstColor.kWhite.value),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: GestureDetector(
                              onTap: () {
                                Get.defaultDialog(
                                  title: '',
                                  backgroundColor: ConstColor.firstColor.value,
                                  content: Column(
                                    children: [
                                      Text(
                                        addYourComment,
                                        style: mediumText.copyWith(
                                            color: ConstColor.kblack.value),
                                      ),
                                      Container(
                                        height:322.h,
                                        width: 338.w,
                                        color: ConstColor.commentBox.value,
                                        child: TextField(
                                          maxLines: 12,
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                          ),

                                        ),
                                      ),
                                      SizedBox(height: 26.h,),
                                      CustomMainButton(title: 'Post It', onpressed: (){
                                        Get.back();
                                        Get.defaultDialog(
                                          title: '',
                                          backgroundColor:
                                          ConstColor.containerBackgroundColor.value,
                                          content: Column(
                                            children: [
                                              Image.asset(
                                                Assets.heart,
                                                height: 207.h,
                                                width: 199.w,
                                              ),
                                              Text(
                                                congrats,
                                                style: homeScreenTitle,
                                              ),
                                              Text(
                                                textAlign: TextAlign.center,
                                                commentDone,
                                                style:
                                                normalText.copyWith(fontSize: 16.sp),
                                              ),
                                              SpinKitFadingCircle(
                                                color: ConstColor.wordsColor2.value,
                                                duration: const Duration(seconds: 3),
                                              ),
                                            ],
                                          ),
                                        );
                                        Future.delayed(const Duration(seconds: 3), () {
                                          // Close the dialog
                                          Get.back();

                                          // Navigate to the login screen
                                          Get.offAll(()=>FamilyDesScreen());
                                        });
                                      }),
                                    ],
                                  ),
                                );
                              },
                              child: Container(
                                height: 69.h,
                                width: 186.w,
                                decoration: BoxDecoration(
                                  color: ConstColor.textFieldColor.value,
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                child: Center(
                                    child: Text(
                                  addComment,
                                  style: normalText.copyWith(
                                      color: ConstColor.kWhite.value),
                                )),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HorizontalImageList extends StatelessWidget {
  final List<String> imageUrls = [
    'assets/image/postpic1.png',
    'assets/image/postpic2.png',
    'assets/image/pospic3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: imageUrls.length,
      itemBuilder: (context, index) {
        return Container(
          margin: EdgeInsets.all(8.0),
          child: Image.asset(
            imageUrls[index],
            height: 130,
            width: 130,
          ),
        );
      },
    );
  }
}
