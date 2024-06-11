import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:newslatter/core/constants/const_colors.dart';
import 'package:newslatter/core/constants/const_styles.dart';
import 'package:newslatter/core/constants/const_texts.dart';
import 'package:newslatter/generated/assets.dart';
import 'package:newslatter/ui/components/custom_main_button.dart';
import 'package:newslatter/ui/screens/home_screen/family_screen/family_des_screen/family_des_screen.dart';

class FamilyScreen extends StatefulWidget {
  const FamilyScreen({super.key});

  @override
  State<FamilyScreen> createState() => _FamilyScreenState();
}

class _FamilyScreenState extends State<FamilyScreen> {
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
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(account, style: normalText),
                        InkWell(
                            onTap: () {
                              Get.bottomSheet(
                                Container(
                                  height: 330.h,
                                  width: 430.w,
                                  color: ConstColor.bottomSheetBack.value,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 38.h,
                                      ),
                                      Text(
                                        textAlign: TextAlign.center,
                                        logOut,
                                        style: titleText.copyWith(
                                            color:
                                                ConstColor.wordsColor2.value),
                                      ),
                                      SizedBox(
                                        height: 5.h,
                                      ),
                                      Divider(
                                        thickness: 2,
                                        color: ConstColor.kWhite.value,
                                      ),
                                      SizedBox(
                                        height: 32.h,
                                      ),
                                      Text(
                                        textAlign: TextAlign.center,
                                        logoutDes,
                                        style: normalText,
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Row(
                                        children: [
                                          SizedBox(
                                            width: 15,
                                          ),
                                          BottomButton(
                                            color: ConstColor.kWhite.value,
                                            title: 'Cancel',
                                            borderColor:
                                                ConstColor.kWhite.value,
                                            textColor:
                                                ConstColor.wordsColor2.value,
                                          ),
                                          SizedBox(
                                            width: 59.w,
                                          ),
                                          BottomButton(
                                            color: ConstColor.wordsColor2.value,
                                            title: 'Logout',
                                            borderColor:
                                                ConstColor.border.value,
                                            textColor: ConstColor.kWhite.value,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                barrierColor: Colors.transparent,
                                isDismissible: true,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                enableDrag: false,
                              );
                            },
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 15.w,
                            ),
                            Image.asset(
                              Assets.menu_button,
                              height: 49.h,
                              width: 43.w,
                            ),
                            SizedBox(
                              width: 65.w,
                            ),
                            Text(
                              yaoFamily,
                              style: titleText,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        PostContainer(
                          onTap: () {
                            Get.to(() => FamilyDesScreen());
                          },
                          title: postTitle,
                          subtitle: postSubTitle,
                          des: postDes,
                        ),
                        SizedBox(
                          height: 28.h,
                        ),
                        PostContainer(
                          onTap: () {},
                          title: postTitle2,
                          subtitle: postSubTitle2,
                          des: postDes,
                        ),
                        const Spacer(),
                        CustomMainButton(title: 'Post', onpressed: () {}),
                        const SizedBox(
                          height: 30,
                        ),
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

class BottomButton extends StatelessWidget {
  String title;
  Color color;
  Color borderColor;
  Color textColor;

  BottomButton({
    required this.title,
    required this.color,
    required this.borderColor,
    required this.textColor,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 49.h,
      width: 162.w,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(25),
          border: Border.all(color: borderColor, strokeAlign: 1)),
      child: Center(
          child: Text(title, style: titleText.copyWith(color: textColor))),
    );
  }
}

class PostContainer extends StatelessWidget {
  final String title;
  final String subtitle;
  final String des;
  final VoidCallback onTap;
  const PostContainer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.des,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 168.h,
        width: 395.w,
        decoration: BoxDecoration(
          color: ConstColor.wordsColor2.value,
          borderRadius: BorderRadius.circular(25.r),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: normalText.copyWith(
                      fontSize: 25.sp, color: ConstColor.kWhite.value),
                ),
                Text(
                  subtitle,
                  style: normalText.copyWith(
                      color: ConstColor.kWhite.value,
                      fontSize: 15.sp,
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  des,
                  style: normalText.copyWith(
                      fontSize: 15, color: ConstColor.kWhite.value),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
