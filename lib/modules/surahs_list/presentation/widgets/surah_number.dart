import 'package:flutter/material.dart';

Widget surrahNumber(int number) {
  return Stack(
    alignment: Alignment.center,
    children: [
      Image.asset(
        'assets/images/octagon_shape.png',
      ),
      Text(
        '$number',
        style: TextStyle(color: Colors.blueAccent),
      )
    ],
  );
}
