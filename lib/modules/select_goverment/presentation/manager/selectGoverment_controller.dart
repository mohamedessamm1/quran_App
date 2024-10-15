import 'package:get/get.dart';
import 'package:quran/modules/home_screen/presentation/pages/home_screen.dart';
import 'package:quran/modules/select_goverment/data/data_sources/govenment_names.dart';
import 'package:quran/shared/Cache/local_network.dart';
import 'package:quran/shared/Dio/App_Dio.dart';

class SelectGovermentController extends GetxController {
  var currentIndex;
  var prayTime;

  getCurrentIndex(index) {
    currentIndex = index;
    print(currentIndex);
    update();
  }

  getPrayTime() async {
    AppDioHelper.getdata(
            url:
                'https://muslimsalat.com/${CacheHelper.getdata(key: 'currentGoverment')}.json?key=api_key')
        .then((value) {
      prayTime = value.data;
      print(prayTime);
      CacheHelper.savedata(
          key: 'currentGovernmentArabic',
          value: egyptGovernoratesArabic[currentIndex]);
      print(egyptGovernoratesArabic[currentIndex]);
      CacheHelper.savedata(key: 'fajr', value: prayTime['items'][0]['fajr']);
      CacheHelper.savedata(key: 'dhuhr', value: prayTime['items'][0]['dhuhr']);
      CacheHelper.savedata(
          key: 'maghrib', value: prayTime['items'][0]['maghrib']);
      CacheHelper.savedata(key: 'isha', value: prayTime['items'][0]['isha']);
      CacheHelper.savedata(key: 'asr', value: prayTime['items'][0]['asr']);
      update();
      Get.to(HomeScreen());
    });
  }
}
