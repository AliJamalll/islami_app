import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/modules/hadith/Hadith_view.dart';

import '../../core/constants/app_assets.dart';
import '../../core/theme/app_color.dart';
import '../../models/hadith_model.dart';

class HadithDetailsView extends StatefulWidget {
  static const String routeName = 'hadith-details';
  const HadithDetailsView({super.key,});

  @override
  State<HadithDetailsView> createState() => _HadithDetailsViewState();
}

class _HadithDetailsViewState extends State<HadithDetailsView> {
  @override
  Widget build(BuildContext context) {
    final String hadithContent = ModalRoute.of(context)?.settings.arguments as String;
    return Scaffold(
      backgroundColor: AppColor.SecondryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
            color: AppColor.PrimaryColor
        ),
        title: Text(
       "hadith",
          style: TextStyle(
            fontFamily: 'janna',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColor.PrimaryColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(image:AssetImage(AppAssets.corner2,),color:AppColor.PrimaryColor,),
                Image(image:AssetImage(AppAssets.corner1),color:AppColor.PrimaryColor,)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              hadithContent,
              style :TextStyle(
                  fontFamily: 'janna',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: AppColor.PrimaryColor
              ),
              textAlign: TextAlign.justify,
            ),
          ),

          Spacer(),
        Image(image: AssetImage(AppAssets.mosqueDown2))
        ],
      ),
    );
  }

}
