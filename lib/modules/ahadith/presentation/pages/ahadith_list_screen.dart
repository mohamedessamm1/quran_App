import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/modules/ahadith/presentation/manager/ahadith_contoller.dart';
import 'package:quran/modules/ahadith/presentation/widgets/ahadith_list.dart';
import 'package:quran/modules/home_screen/presentation/pages/home_screen.dart';
import 'package:quran/shared/widget_shared/AppbarWidget.dart';
import 'package:quran/shared/widget_shared/back_ground_image.dart';

class AhadithScreen extends StatelessWidget {
  const AhadithScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AhadithController>(
      init: AhadithController(),
      builder: (_) => Scaffold(
        appBar:
            appBarWidget(previousScreen: const HomeScreen(), context: context),
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            backGroundImage(imageName: 'background2'),
            SingleChildScrollView(child: ahadithList())
          ],
        ),
      ),
    );
  }
}
