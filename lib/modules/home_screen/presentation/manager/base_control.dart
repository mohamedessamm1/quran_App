import 'package:get/get.dart';
import 'package:quran/modules/surah_details/presentation/pages/surah_details_screen.dart';
import 'package:quran/shared/Dio/App_Dio.dart';

class AppController extends GetxController {
  var surahData;

  getQuranApi(index) {
    AppDioHelper.getdata(
            url: 'https://api.alquran.cloud/v1/surah/$index/ar.alafasy')
        .then((value) {
      surahData = value.data;
      print(surahData['data']['ayahs'][0]['text']);
      Get.to(SurahDetailsScreen());
    }).catchError((error) {
      print(error.toString());
    });

    update();
  }

  getDayName() {
    const Map<int, String> weekdayName = {
      1: "الأثنين",
      2: "الثلاثاء",
      3: "الاربعاء",
      4: "الخميس",
      5: "الجمعه",
      6: "السبت",
      7: "الأحد"
    };
    return weekdayName[DateTime.now().weekday];
  }
}
