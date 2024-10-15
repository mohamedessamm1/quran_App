import 'package:get/get.dart';
import 'package:quran/shared/Cache/local_network.dart';

class SebhaController extends GetxController {
  int sebhaCounter = 0;
  int dailyCounterInt = 0;

  dailyCounter() {
    dailyCounterInt++;

    CacheHelper.savedata(key: 'dailyCounter', value: dailyCounterInt);
    update();
  }

  addOne() {
    sebhaCounter++;
    if (sebhaCounter == 100) {
      reset();
    }

    update();
  }

  reset() {
    sebhaCounter = 0;
    update();
  }
}
