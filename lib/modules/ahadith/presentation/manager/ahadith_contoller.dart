import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quran/shared/Dio/App_Dio.dart';

import '../pages/ahadith_list_screen.dart';

class AhadithController extends GetxController {
  var ahadith;

  getAhadith({required context}) {
    AppDioHelper.getdata(
            url:
                'https://hadithapi.com/public/api/hadiths?apiKey=\$2y\$10\$yMsaA96WFHtd4pohbX4U9uMM5hVGce4386M2WNGJll8QdWrRKHCy')
        .then((value) {
      ahadith = value.data;
      print(ahadith['hadiths']['data'][0]['hadithArabic']);
      Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 900),
          pageBuilder: (context, animation, secondAnimation) =>
              const AhadithScreen(),
          transitionsBuilder: (context, animation, secondAnimation, child) {
            var begin = const Offset(0.0, 1.0);
            var end = Offset.zero;
            var curve = Curves.ease;
            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            return SlideTransition(
              position: animation.drive(tween),
              child: child,
            );
          },
        ),
      );
    }).catchError((error) {
      print(error.toString());
    });
    update();
  }
}
