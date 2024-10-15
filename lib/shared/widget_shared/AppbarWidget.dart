import 'package:flutter/material.dart';

AppBar appBarWidget({required previousScreen, required context}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: Colors.white,
        )),
  );
}
