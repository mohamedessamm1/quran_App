import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget prayTimeItem(String title, String time, IconData icon, Color color) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Icon(
        icon,
        color: color,
      ),
      Text(
        '${title}',
        style: TextStyle(
            color: Colors.white, fontSize: 16.sp, fontWeight: FontWeight.bold),
      ),
      Text(
        '${time}',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14.sp),
      ),
    ],
  );
}
