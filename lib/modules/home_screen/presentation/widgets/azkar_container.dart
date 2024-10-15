import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quran/modules/home_screen/presentation/manager/base_control.dart';
import 'package:quran/shared/extension/extencion.dart';

import '../../../../shared/Colors/colors.dart';
import '../../../azkar/presentation/pages/azkar_screen.dart';

Widget azkarContainer() {
  return GetBuilder<AppController>(
    init: AppController(),
    builder: (_) => Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: InkWell(
        onTap: () {
          Get.to(() => AzkarScreen());
        },
        child: Card(
            shadowColor: containerColor,
            elevation: 8,
            color: containerColor.withOpacity(0.6),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                10.pw,
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    textDirection: TextDirection.rtl,
                    'الأذكار و الأدعيه اليوميه',
                    style: TextStyle(fontSize: 22.sp, color: Colors.white),
                  ),
                ),
              ],
            )),
      ),
    ),
  );
}
