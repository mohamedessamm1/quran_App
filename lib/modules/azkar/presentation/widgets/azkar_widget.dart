import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:quran/modules/home_screen/presentation/manager/base_control.dart';
import 'package:quran/shared/extension/extencion.dart';

import '../../data/data_sources/azkarData.dart';

Widget azkarList() {
  return GetBuilder<AppController>(
    init: AppController(),
    builder: (_) {
      return ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                    child: SizedBox(
                      width: 200.w,
                      height: 55.h,
                      child: Card(
                        color: Colors.blue.shade900,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset('assets/images/octagon_shape.png'),
                                Text(
                                  '${index + 1}',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  10.ph,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      textAlign: TextAlign.start,
                      '${azkarData[index]['text']}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 18.sp),
                    ),
                  ),
                  10.ph,
                ],
              ),
          separatorBuilder: (context, index) => Divider(),
          itemCount: azkarData.length);
    },
  );
}
