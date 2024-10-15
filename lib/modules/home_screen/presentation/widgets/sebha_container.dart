import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../sebha/presentation/pages/sebha_screen.dart';

Widget sebhaContainer({required context}) {
  return InkWell(
    onTap: () {
      Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: const Duration(milliseconds: 900),
          pageBuilder: (context, animation, secondAnimation) =>
              const TasbehScreen(),
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
    },
    child: SizedBox(
      width: 150.w,
      height: 200.h,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/img.png',
              width: 100.w,
              height: 100.h,
            ),
            Text(
              "السبحه",
              style: TextStyle(
                  fontSize: 20.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
        color: Colors.blueAccent.withOpacity(0.5),
      ),
    ),
  );
}
