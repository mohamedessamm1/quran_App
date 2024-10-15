import 'package:flutter/material.dart';

import '../../../surahs_list/presentation/pages/surahs_list_screen.dart';

Widget moshafContainer(context) {
  return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(milliseconds: 900),
            pageBuilder: (context, animation, secondAnimation) =>
                const SurahsListScreen(),
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
      child: Image.asset('assets/images/moshaf.png'));
}
