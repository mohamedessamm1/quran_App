import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/modules/home_screen/presentation/pages/home_screen.dart';
import 'package:quran/modules/surahs_list/presentation/widgets/surah_list.dart';
import 'package:quran/shared/extension/extencion.dart';
import 'package:quran/shared/widget_shared/back_ground_image.dart';

class SurahsListScreen extends StatelessWidget {
  const SurahsListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        backGroundImage(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            25.ph,
            IconButton(
                onPressed: () {
                  Get.off(const HomeScreen());
                },
                icon: const Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.white,
                )),
            Expanded(child: surahListWidget())
          ],
        )
      ]),
    );
  }
}
