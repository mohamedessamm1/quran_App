import 'package:flutter/material.dart';
import 'package:quran/modules/home_screen/presentation/pages/home_screen.dart';
import 'package:quran/modules/select_goverment/presentation/pages/select_goverment_Screen.dart';

import '../../../../shared/Cache/local_network.dart';
import '../../../../shared/Colors/colors.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;
  late AnimationController animationControllern;
  late Animation<Offset> slidingAnimationn;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2800));

    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
            .animate(animationController);

    animationController.forward();

    animationControllern = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 2800));

    slidingAnimationn =
        Tween<Offset>(begin: const Offset(0, -10), end: Offset.zero)
            .animate(animationController);

    animationControllern.forward();

    Future.delayed(const Duration(seconds: 7), () {
      CacheHelper.getdata(key: 'currentGoverment') == null
          ? Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => SelectGovernmentScreen()))
          : Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
    });
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
    animationControllern.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SizedBox(
        child: Image.asset(
          'assets/images/splash_screen.png',
          height: double.infinity,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
