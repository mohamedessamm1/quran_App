import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quran/modules/sebha/presentation/manager/sebha_contoller.dart';
import 'package:quran/shared/Cache/local_network.dart';

Widget dailyTasbehWidget() {
  return GetBuilder<SebhaController>(
      init: SebhaController(),
      builder: (_) => Padding(
            padding: EdgeInsets.all(16.0.w),
            child: Align(
              alignment: Alignment.topRight,
              child: Card(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text(
                        '  إجمالى عدد التسبيحات   ',
                        style: TextStyle(color: Colors.white, fontSize: 11.sp),
                      ),
                      Text(
                        '${CacheHelper.getdata(key: 'dailyCounter') == null ? '0' : CacheHelper.getdata(key: 'dailyCounter')}',
                        style: TextStyle(color: Colors.white, fontSize: 22.sp),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ));
}
