import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/modules/select_goverment/presentation/manager/selectGoverment_controller.dart';
import 'package:quran/modules/select_goverment/presentation/widgets/List_goverments_name_widget.dart';
import 'package:quran/modules/select_goverment/presentation/widgets/header_container.dart';
import 'package:quran/shared/extension/extencion.dart';

class SelectGovernmentScreen extends StatelessWidget {
  const SelectGovernmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SelectGovermentController>(
      init: SelectGovermentController(),
      builder: (_) => Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [20.ph, headerContainer(), 20.ph, listGovernment()],
          ),
        ),
      ),
    );
  }
}
