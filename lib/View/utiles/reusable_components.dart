import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'contants.dart';

robotoText(txt, size, weight, color) {
  return Text(
    txt,
    style: GoogleFonts.roboto(
      textStyle: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    ),
  );
}

interText(txt, size, weight, color) {
  return Text(
    txt,
    textAlign: TextAlign.center,
    style: GoogleFonts.inter(
      textStyle: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    ),
  );
}

jomolhariText(txt, size, weight, color) {
  return Text(
    txt,
    style: GoogleFonts.jomolhari(
      textStyle: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    ),
  );
}

poppinText(txt, size, weight, color) {
  return Text(
    txt,
    textAlign: TextAlign.center,
    style: GoogleFonts.poppins(
      textStyle: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
      ),
    ),
  );
}

formField(
  controller,
  hinttxt,
) {
  return Card(
    elevation: 5.sp,
    child: Container(
      height: 50.h,
      width: 340.w,
      decoration: BoxDecoration(
        border: Border.all(color: greyTextColor),
        borderRadius: BorderRadius.circular(4.h),
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: TextFormField(
            controller: controller,
            obscureText: hinttxt == '****************' ? true : false,
            decoration: InputDecoration(
              isCollapsed: true,
              border: InputBorder.none,
              suffix: SizedBox(
                height: 30.h,
              ),
              suffixIcon: hinttxt == '****************'
                  ? Icon(
                      Icons.visibility,
                      color: greyTextColor,
                    )
                  : SizedBox(),
              hintText: hinttxt,
              hintStyle: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w500,
                color: formTextColor,
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
