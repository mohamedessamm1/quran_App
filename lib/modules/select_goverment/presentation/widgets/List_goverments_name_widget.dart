import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quran/modules/select_goverment/presentation/manager/selectGoverment_controller.dart';

import '../../../../shared/Cache/local_network.dart';
import '../../../../shared/Colors/colors.dart';
import '../../data/data_sources/govenment_names.dart';

Widget listGovernment() {
  return GetBuilder<SelectGovermentController>(
    init: SelectGovermentController(),
    builder: (_) => Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () async {
                CacheHelper.savedata(
                    key: 'currentGoverment', value: egyptGovernorates[index]);
                _.getCurrentIndex(index);
              },
              child: Card(
                color: _.currentIndex == index
                    ? mainColor
                    : Colors.blueGrey.shade100,
                child: SizedBox(
                    height: 50.h,
                    child: Center(
                      child: Text(
                        '${egyptGovernoratesArabic[index]}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                          color: _.currentIndex == index
                              ? Colors.white
                              : mainColor,
                        ),
                      ),
                    )),
              ),
            );
          },
          separatorBuilder: (context, index) => Divider(),
          itemCount: egyptGovernoratesArabic.length),
    ),
  );
}
