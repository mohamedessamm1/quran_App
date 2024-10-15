import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/modules/sebha/presentation/manager/sebha_contoller.dart';

Widget addOneButtonWidget() {
  return GetBuilder<SebhaController>(
      init: SebhaController(),
      builder: (_) => Expanded(
            child: Card(
              color: Colors.transparent,
              child: IconButton(
                  iconSize: 70,
                  onPressed: () {
                    _.addOne();
                    _.dailyCounter();
                  },
                  icon: const Icon(
                    Icons.add,
                    color: Colors.white,
                  )),
            ),
          ));
}
