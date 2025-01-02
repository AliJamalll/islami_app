import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/theme/app_color.dart';
import 'package:islami/models/sura_data_model.dart';

class SuraItemWidget extends StatelessWidget {
  const SuraItemWidget({super.key,required this.suraDataModel});

  final SuraDataModel suraDataModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Image(image:AssetImage(AppAssets.numberIcon),height: 50,width: 50,),
            Text(suraDataModel.id,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'janna',
              color: AppColor.titleTextColor
            ),
            )
          ],
        ),
        SizedBox(width: 24,),
        Column(
          children: [
             Text(suraDataModel.suraNameEN,
               style :TextStyle(
                   fontFamily: 'janna',
                   fontSize: 20,
                   fontWeight: FontWeight.w700,
                   color: AppColor.titleTextColor
               ),
             ),
             Text("${suraDataModel.suraVersesNumber} verses",
               style :TextStyle(
                   fontFamily: 'janna',
                   fontSize: 14,
                   fontWeight: FontWeight.w700,
                   color: AppColor.titleTextColor
               ),
             )
          ],
        ),
        Spacer(),
        Text(suraDataModel.suraNameAR,
          style :TextStyle(
              fontFamily: 'janna',
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: AppColor.titleTextColor
          ),
        )
      ],
    );
  }
}
