
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pythonx_task/shared/colors.dart';

import 'login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 200.h,),
            SvgPicture.asset(
              'assets/images/onboarding_img.svg',
            ),
            SizedBox(
              height: 60.h,
            ),
            Text(
              'Welcome to',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500),
            ),
            RichText(
              text: TextSpan(
                  text: 'Asparagus',
                  style: TextStyle(
                      color: mainColor,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w500),
                  children: [
                    TextSpan(
                        text: ' Management  app',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w500))
                  ]),
            ),
            SizedBox(
              height: 72.h,
            ),
            SizedBox(
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18.r),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginScreen(),
                        ));
                  },
                  child: Text(
                    'Next',
                    style: TextStyle(color: Colors.white, fontSize: 18.sp),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
