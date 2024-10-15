import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/modules/sebha/presentation/manager/sebha_contoller.dart';

Widget resetButtonWidget() {
  return GetBuilder<SebhaController>(
      init: SebhaController(),
      builder: (_) => Expanded(
            child: IconButton(
                iconSize: 70,
                onPressed: () {
                  _.reset();
                },
                icon: const Icon(
                  Icons.refresh_rounded,
                  color: Colors.grey,
                )),
          ));
}
