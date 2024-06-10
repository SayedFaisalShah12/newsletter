import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newslatter/ui/screens/splash_screen/splash_screen_2.dart';
import '../../../core/constants/const_colors.dart';
import '../../../core/constants/const_rich_text.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context){
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(const SplashScreen2());
    });
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
            child: Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Column(
                children: [
                  SizedBox(
                    height: Get.height * 0.4,
                    width: Get.width * 0.6,
                      child: InkWell(
                        child: Image.asset('assets/image/logo.png'),
                        onTap: ()=>Get.to(SplashScreen2()),
                      )
                  ),
                  const RichTextOne(),
                ],
              ),
            ),
          ),
      ),
    );
  }
}

