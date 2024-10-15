import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quran/modules/select_goverment/presentation/manager/selectGoverment_controller.dart';
import 'package:quran/shared/extension/extencion.dart';

import '../../../../shared/Colors/colors.dart';

Widget headerContainer() {
  return GetBuilder<SelectGovermentController>(
    init: SelectGovermentController(),
    builder: (_) => Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FloatingActionButton(
          backgroundColor: mainColor,
          child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () {
            _.currentIndex != null
                ? _.getPrayTime()
                : Get.defaultDialog(
                    title: 'يرجى اختيار المحافظه',
                    middleText: '',
                  );
          },
        ),
        120.pw,
        Text(
          'أختر المحافظه الخاصه بك',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.sp,
              color: Colors.black),
        ),
      ],
    ),
  );
}
