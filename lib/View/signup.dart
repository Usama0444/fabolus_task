import 'package:fabolus_task/View/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utiles/contants.dart';
import 'utiles/reusable_components.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: whiteColor,
        body: ListView(
          padding: EdgeInsets.only(top: 200.h),
          children: [
            headPortion(),
            signinForm(),
          ],
        ),
      ),
    );
  }
}

headPortion() {
  return SizedBox(
    height: 80.h,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        robotoText(
          'Sign Up',
          32.sp,
          FontWeight.w600,
          textColor,
        ),
      ],
    ),
  );
}

signinForm() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 40.w, vertical: 0.h),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 10.h,
        ),
        poppinText('Email ID', 13.sp, FontWeight.w700, formTextColor),
        SizedBox(
          height: 10.h,
        ),
        formField(TextEditingController(), 'Example@gmail.com'),
        SizedBox(
          height: 10.h,
        ),
        poppinText('Password', 13.sp, FontWeight.w700, formTextColor),
        SizedBox(
          height: 10.h,
        ),
        formField(TextEditingController(), '****************'),
        SizedBox(
          height: 10.h,
        ),
        SizedBox(
          height: 10.h,
        ),
        poppinText('Confirm Password', 13.sp, FontWeight.w700, formTextColor),
        SizedBox(
          height: 10.h,
        ),
        formField(TextEditingController(), '****************'),
        SizedBox(
          height: 10.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Get.offAll(LoginView());
              },
              child: Container(
                width: 240.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: textColor,
                ),
                child: const Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20.h,
        ),
      ],
    ),
  );
}
