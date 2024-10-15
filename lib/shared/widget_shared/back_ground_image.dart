import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget backGroundImage({imageName = 'home_screen'}) {
  return Image.asset('assets/images/$imageName.png',
      width: double.infinity, fit: BoxFit.fill, height: 1000.h);
}
