import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:just_audio/just_audio.dart';
import 'package:open_share_plus/open.dart';
import 'package:quran/modules/home_screen/presentation/manager/base_control.dart';
import 'package:quran/shared/extension/extencion.dart';

Widget ayahList() {
  return GetBuilder<AppController>(
    init: AppController(),
    builder: (_) {
      return ListView.separated(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Center(
                    child: SizedBox(
                      width: 337.w,
                      height: 55.h,
                      child: Card(
                        color: Colors.blue.shade900,
                        child: Row(
                          children: [
                            10.pw,
                            Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset('assets/images/octagon_shape.png'),
                                Text(
                                  '${index + 1}',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                            Spacer(),
                            IconButton(
                                onPressed: () {
                                  Open.browser(
                                      url:
                                          "${_.surahData['data']['ayahs'][index]['audio']}");
                                },
                                icon: Icon(
                                  Icons.share_outlined,
                                  color: Colors.white,
                                )),
                            IconButton(
                                onPressed: () async {
                                  final player = AudioPlayer();
                                  final duration = await player.setUrl(
                                      '${_.surahData['data']['ayahs'][index]['audio']}');
                                  await player.play();
                                },
                                icon: Icon(
                                  Icons.play_circle_fill_rounded,
                                  color: Colors.white,
                                )),
                          ],
                        ),
                      ),
                    ),
                  ),
                  10.ph,
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Text(
                      textAlign: TextAlign.start,
                      '${_.surahData['data']['ayahs'][index]['text']}',
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                          fontSize: 25.sp),
                    ),
                  ),
                  10.ph,
                ],
              ),
          separatorBuilder: (context, index) => Divider(),
          itemCount: _.surahData['data']['ayahs'].length);
    },
  );
}
