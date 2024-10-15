import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quran/modules/home_screen/presentation/manager/base_control.dart';
import 'package:quran/shared/extension/extencion.dart';

import '../../../../shared/Cache/local_network.dart';
import '../../../select_goverment/presentation/pages/select_goverment_Screen.dart';

Widget chipsWidget() {
  return GetBuilder<AppController>(
    init: AppController(),
    builder: (_) => Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Card(
          color: Colors.blueAccent.withOpacity(0.9),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              _.getDayName().toString(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  color: Colors.white),
            ),
          ),
        ),
        Card(
          color: Colors.blueAccent.withOpacity(0.9),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              '${CacheHelper.getdata(key: 'currentGovernmentArabic')}',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 12.sp,
                  color: Colors.white),
            ),
          ),
        ),
        Badge(
          backgroundColor: Colors.green,
          label: Icon(
            Icons.edit,
            size: 10.w,
            color: Colors.white,
          ),
          child: InkWell(
            onTap: () {
              Get.to(SelectGovernmentScreen());
            },
            child: Card(
              color: Colors.blueAccent.withOpacity(0.9),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(
                  'تعديل مواقيت الصلاه',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.sp,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ),
        20.pw
      ],
    ),
  );
}
