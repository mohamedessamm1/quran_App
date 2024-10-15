import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quran/modules/home_screen/presentation/manager/base_control.dart';
import 'package:quran/modules/surahs_list/data/data_sources/surrah_name.dart';
import 'package:quran/modules/surahs_list/presentation/widgets/surah_name_arabic.dart';
import 'package:quran/modules/surahs_list/presentation/widgets/surah_number.dart';
import 'package:quran/modules/surahs_list/presentation/widgets/surrah_name_english.dart';
import 'package:quran/shared/extension/extencion.dart';

Widget surahListWidget() {
  return GetBuilder<AppController>(
    init: AppController(),
    builder: (_) {
      return ListView.separated(
          itemBuilder: (context, index) => InkWell(
                onTap: () {
                  _.getQuranApi(index + 1);
                },
                child: SizedBox(
                  height: 65.h,
                  child: Card(
                    shadowColor: Colors.blue.shade900,
                    color: Colors.transparent,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        20.pw,
                        surrahNumber(index + 1),
                        20.pw,
                        surahNameEnglish(surahNamesEnglish[index]),
                        20.pw,
                        surahNameArabic(surahsName[index]),
                        30.pw,
                      ],
                    ),
                  ),
                ),
              ),
          separatorBuilder: (context, index) => Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Divider(color: Colors.blueAccent, height: 35.h),
              ),
          itemCount: surahsName.length);
    },
  );
}
