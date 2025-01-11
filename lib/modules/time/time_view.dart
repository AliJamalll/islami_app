import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_color.dart';
import 'package:islami/modules/time/widgets/CustomAzkarWidget.dart';
import 'package:islami/modules/time/widgets/custom_widget.dart';

import '../../core/constants/app_assets.dart';

class TimeView extends StatefulWidget {
  const TimeView({super.key});

  @override
  State<TimeView> createState() => _TimeViewState();
}

bool isSpeaker = false;

class _TimeViewState extends State<TimeView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(
            AppAssets.timeScreen,
          ),
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        SafeArea(
            child: SingleChildScrollView(
              child: Column(
                  children: [
                SizedBox(
                    height: 171,
                    width: 291,
                    child: Image.asset('assets/images/Logo_quran_view.png')),
                Container(
                  width: 390,
                  height: 301,
                  decoration: BoxDecoration(
                      color: AppColor.PrimaryColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '16 Jul,\n2024',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      fontFamily: 'janna',
                                      color: AppColor.SecondryColor),
                                ),
                                Text(
                                  'Pray Time\nTuesday',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      fontFamily: 'janna',
                                      color: AppColor.SecondryColor),
                                ),
                                Text(
                                  '09 Muh,\n1446',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                      fontFamily: 'janna',
                                      color: AppColor.SecondryColor),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: SizedBox(
                                    height: 128,
                                    child: ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) =>
                                            CustomPrayTimes(),
                                        separatorBuilder: (context, index) =>
                                            SizedBox(
                                              width: 8,
                                            ),
                                        itemCount: 5),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(height: 20,),
                            Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Next Pray - 02:32',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w700,
                                            fontSize: 16,
                                            fontFamily: 'janna',
                                            color: AppColor.SecondryColor),
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            setState(() {
                                              isSpeaker = !isSpeaker;
                                            });
                                          },
                                          icon: isSpeaker ? Icon(Icons.volume_off,size: 20,) :
                                          Icon(Icons.volume_up,size: 20,)
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Azkar',
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          fontFamily: 'janna',
                          color: AppColor.white),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: MediaQuery.of(context).size.height,
                        child: GridView.builder(
                          primary: false,
                            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                            ),
                            itemBuilder: (context,index) {
                              return CustomAzkarWidget();
                            },
                          itemCount: 6,
                        ),
                      ),
                    )
                  ],
                )
              ]
              ),
            ),
        ),
      ],
    );
  }
}


