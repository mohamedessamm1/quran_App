import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:quran/modules/home_screen/presentation/manager/base_control.dart';
import 'package:quran/modules/splash_screen/presentation/pages/splash_screen_timer.dart';
import 'package:quran/shared/Cache/local_network.dart';
import 'package:quran/shared/Dio/App_Dio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
  CacheHelper.initcache();
  AppDioHelper.init();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, screenUtil) {
        Get.put(AppController());

        return GetMaterialApp(
            theme: ThemeData(fontFamily: 'quran_font'),
            debugShowCheckedModeBanner: false,
            home: SplashView());
      },
    );
  }
}
