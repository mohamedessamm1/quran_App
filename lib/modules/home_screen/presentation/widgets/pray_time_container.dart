import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quran/modules/home_screen/presentation/widgets/prayTimeItem.dart';
import 'package:quran/modules/select_goverment/presentation/manager/selectGoverment_controller.dart';
import 'package:quran/shared/Cache/local_network.dart';
import 'package:quran/shared/Colors/colors.dart';
import 'package:quran/shared/extension/extencion.dart';

Widget prayTimeContainer() {
  return GetBuilder<SelectGovermentController>(
    init: SelectGovermentController(),
    builder: (_) => Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Card(
        color: Colors.blueAccent.withOpacity(0.9),
        child: SizedBox(
          height: 100,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              prayTimeItem('العشا', '${CacheHelper.getdata(key: 'isha')}',
                  Icons.nightlight_round_sharp, mainColor),
              13.pw,
              prayTimeItem('المغرب', '${CacheHelper.getdata(key: 'maghrib')}',
                  Icons.nightlight, mainColor),
              13.pw,
              prayTimeItem('العصر', '${CacheHelper.getdata(key: 'asr')}',
                  Icons.sunny_snowing, Colors.orangeAccent),
              13.pw,
              prayTimeItem('الضهر', '${CacheHelper.getdata(key: 'dhuhr')}',
                  Icons.sunny, Colors.orange),
              13.pw,
              prayTimeItem('الفجر', '${CacheHelper.getdata(key: 'fajr')}',
                  Icons.nights_stay_outlined, mainColor),
            ],
          ),
        ),
      ),
    ),
  );
}
