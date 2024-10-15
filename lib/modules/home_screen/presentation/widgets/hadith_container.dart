import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quran/modules/ahadith/presentation/manager/ahadith_contoller.dart';

Widget hadithContainer({required context}) {
  return GetBuilder<AhadithController>(
    init: AhadithController(),
    builder: (_) {
      return InkWell(
        onTap: () {
          _.getAhadith(context: context);
        },
        child: SizedBox(
          width: 150.w,
          height: 200.h,
          child: Card(
            color: Colors.blueAccent.withOpacity(0.5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/hadith.png',
                  width: 100.w,
                  height: 100.h,
                ),
                Text(
                  "الأحاديث",
                  style: TextStyle(
                      fontSize: 20.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      );
    },
  );
}
