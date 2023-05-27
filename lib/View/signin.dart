import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'signup.dart';
import 'utiles/contants.dart';
import 'utiles/reusable_components.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

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
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        robotoText(
          'Log in',
          32.sp,
          FontWeight.w700,
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
        poppinText('Email ID', 13.sp, FontWeight.w700, formTextColor),
        SizedBox(
          height: 15.h,
        ),
        formField(TextEditingController(), 'Example@gmail.com'),
        SizedBox(
          height: 15.h,
        ),
        poppinText('Password', 13.sp, FontWeight.w700, formTextColor),
        SizedBox(
          height: 15.h,
        ),
        formField(TextEditingController(), '****************'),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [],
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 240.w,
                height: 50.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.sp),
                  color: textColor,
                ),
                child: const Center(
                  child: Text(
                    'Log in',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            poppinText('New Here? ', 13.sp, FontWeight.w500, greyTextColor),
            GestureDetector(
              onTap: () {
                Get.offAll(SignUpView());
              },
              child: poppinText('Register', 14.sp, FontWeight.w700, textColor),
            ),
          ],
        ),
      ],
    ),
  );
}
