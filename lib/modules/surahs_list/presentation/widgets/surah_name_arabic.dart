import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget surahNameArabic(String surahName) {
  return SizedBox(
    width: 120.w,
    child: Text(
      textDirection: TextDirection.rtl,
      '$surahName',
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 22.sp,
          color: Colors.blueAccent.shade100),
    ),
  );
}
