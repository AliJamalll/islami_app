import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_color.dart';

import '../../../models/sura_data_model.dart';

class RecentItemWidget extends StatelessWidget {
  const RecentItemWidget({super.key,required this.suraDataModel});

  final SuraDataModel suraDataModel;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      width: 280,
      height: 140,
      decoration: BoxDecoration(
        color: AppColor.PrimaryColor,
        borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(suraDataModel.suraNameEN,
                style: TextStyle(
                    fontFamily: 'janna',
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                ),
              ),
              Text(suraDataModel.suraNameAR,
                style: TextStyle(
                  fontFamily: 'janna',
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("${suraDataModel.suraVersesNumber} Verses  ",
                style: TextStyle(
                  fontFamily: 'janna',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ),
          Spacer(),
          Image.asset("assets/images/recent sura.png")
        ],
      ),
    );
  }
}
