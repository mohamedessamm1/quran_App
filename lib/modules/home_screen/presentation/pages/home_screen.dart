import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/modules/home_screen/presentation/manager/base_control.dart';
import 'package:quran/modules/home_screen/presentation/widgets/azkar_container.dart';
import 'package:quran/modules/home_screen/presentation/widgets/chips_widget.dart';
import 'package:quran/modules/home_screen/presentation/widgets/moshaf_container.dart';
import 'package:quran/modules/home_screen/presentation/widgets/pray_time_container.dart';
import 'package:quran/modules/home_screen/presentation/widgets/sebha_container.dart';
import 'package:quran/shared/extension/extencion.dart';
import 'package:quran/shared/widget_shared/back_ground_image.dart';

import '../widgets/hadith_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      init: AppController(),
      builder: (_) {
        return Scaffold(
          body: Stack(
            children: [
              backGroundImage(),
              SingleChildScrollView(
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      100.ph,
                      chipsWidget(),
                      prayTimeContainer(),
                      moshafContainer(context),
                      azkarContainer(),
                      25.ph,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          sebhaContainer(context: context),
                          20.pw,
                          hadithContainer(context: context),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
