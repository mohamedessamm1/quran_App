import 'package:flutter/material.dart';
import 'package:quran/modules/azkar/presentation/widgets/azkar_widget.dart';

import '../../../../shared/widget_shared/AppbarWidget.dart';
import '../../../../shared/widget_shared/back_ground_image.dart';
import '../../../home_screen/presentation/pages/home_screen.dart';

class AzkarScreen extends StatelessWidget {
  const AzkarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
          appBarWidget(previousScreen: const HomeScreen(), context: context),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          backGroundImage(imageName: 'background2'),
          SingleChildScrollView(child: azkarList())
        ],
      ),
    );
  }
}
