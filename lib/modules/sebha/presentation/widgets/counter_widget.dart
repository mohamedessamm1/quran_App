import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:quran/modules/sebha/presentation/manager/sebha_contoller.dart';

Widget counterWidget() {
  return GetBuilder<SebhaController>(
    init: SebhaController(),
    builder: (_) => Card(
      color: Colors.transparent,
      child: SizedBox(
        height: 80.h,
        width: 80.w,
        child: Center(
          child: Text(
            '${_.sebhaCounter.toString()}',
            style: TextStyle(
              fontSize: 40.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ),
  );
}
