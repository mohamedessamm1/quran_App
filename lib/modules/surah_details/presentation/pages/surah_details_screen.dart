import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/modules/home_screen/presentation/manager/base_control.dart';
import 'package:quran/modules/surah_details/presentation/widgets/ayah_item.dart';
import 'package:quran/modules/surah_details/presentation/widgets/container_widget.dart';
import 'package:quran/modules/surahs_list/presentation/pages/surahs_list_screen.dart';
import 'package:quran/shared/extension/extencion.dart';
import 'package:quran/shared/widget_shared/AppbarWidget.dart';
import 'package:quran/shared/widget_shared/back_ground_image.dart';

class SurahDetailsScreen extends StatelessWidget {
  const SurahDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AppController>(
      init: AppController(),
      builder: (_) {
        return Scaffold(
          appBar: appBarWidget(
              previousScreen: SurahsListScreen(), context: context),
          extendBodyBehindAppBar: true,
          body: Stack(
            alignment: Alignment.center,
            children: [
              backGroundImage(imageName: 'background2'),
              SingleChildScrollView(
                child: Column(
                  children: [
                    Column(
                      children: [
                        65.ph,
                        containerSurahWidget(
                            '${_.surahData['data']['name']}',
                            '${_.surahData['data']['englishName']}',
                            '${_.surahData['data']['revelationType']}'),
                      ],
                    ),
                    ayahList(),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
