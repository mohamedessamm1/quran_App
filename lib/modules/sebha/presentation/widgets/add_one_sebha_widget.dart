import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quran/modules/sebha/presentation/manager/sebha_contoller.dart';
import 'package:quran/shared/Colors/colors.dart';
import 'package:ripple_wave/ripple_wave.dart';

Widget addOneButtonWidget() {
  return GetBuilder<SebhaController>(
      init: SebhaController(),
      builder: (_) => InkWell(
            onTap: () {
              _.addOne();
              _.dailyCounter();
            },
            child: SizedBox(
              height: 252.h,
              width: 252.w,
              child: RippleWave(
                  color: mainColor,
                  repeat: true,
                  waveCount: 5,
                  child: Icon(
                    size: 45.w,
                    Icons.add,
                    color: Colors.white,
                  )),
            ),
          ));
}
