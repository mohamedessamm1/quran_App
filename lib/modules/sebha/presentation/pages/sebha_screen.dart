import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:quran/modules/home_screen/presentation/pages/home_screen.dart';
import 'package:quran/modules/sebha/data/data_sources/tasbeh_azkar.dart';
import 'package:quran/modules/sebha/presentation/manager/sebha_contoller.dart';
import 'package:quran/modules/sebha/presentation/widgets/add_one_sebha_widget.dart';
import 'package:quran/modules/sebha/presentation/widgets/counter_widget.dart';
import 'package:quran/modules/sebha/presentation/widgets/daily_tasbeh_widget.dart';
import 'package:quran/modules/sebha/presentation/widgets/reset_button_widget.dart';
import 'package:quran/shared/extension/extencion.dart';
import 'package:quran/shared/widget_shared/AppbarWidget.dart';
import 'package:quran/shared/widget_shared/back_ground_image.dart';

class TasbehScreen extends StatefulWidget {
  const TasbehScreen({super.key});

  @override
  State<TasbehScreen> createState() => _TasbehScreenState();
}

class _TasbehScreenState extends State<TasbehScreen> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<SebhaController>(
      init: SebhaController(),
      builder: (_) {
        return Scaffold(
          appBar: appBarWidget(previousScreen: HomeScreen(), context: context),
          extendBodyBehindAppBar: true,
          body: Stack(
            children: [
              backGroundImage(imageName: 'background2'),
              Column(
                children: [
                  70.ph,
                  dailyTasbehWidget(),
                  70.ph,
                  Text(
                    '${azkar[Random().nextInt(5)]}',
                    style: TextStyle(color: Colors.white, fontSize: 35.sp),
                  ),
                  70.ph,
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LinearProgressBar(
                      minHeight: 20.h,
                      maxSteps: 100,
                      progressType: LinearProgressBar
                          .progressTypeLinear, // Use Linear progress
                      currentStep: _.sebhaCounter,
                      progressColor: Colors.white,
                      backgroundColor: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(15), //  NEW
                    ),
                  ),
                  counterWidget(),
                  80.ph,
                  Expanded(
                    child: Row(
                      children: [addOneButtonWidget(), resetButtonWidget()],
                    ),
                  ),
                  const Expanded(child: SizedBox()),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
