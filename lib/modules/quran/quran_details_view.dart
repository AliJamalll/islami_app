import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/theme/app_color.dart';
import 'package:islami/models/sura_data_model.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "/quran-details-view";
   QuranDetailsView({super.key,});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> versesList = [
  ];

  @override
  Widget build(BuildContext context) {

    var data = ModalRoute.of(context)?.settings.arguments as SuraDataModel;

    if(versesList.isEmpty) loadSuraData(data.id);
    return Scaffold(
      backgroundColor: AppColor.SecondryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: AppColor.PrimaryColor
        ),
        title: Text(
          data.suraNameEN,
          style :TextStyle(
            fontFamily: 'janna',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppColor.PrimaryColor
        ),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              textAlign: TextAlign.center,
              data.suraNameAR,
              style :TextStyle(
                  fontFamily: 'janna',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColor.PrimaryColor
              ),
            ),

          ),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 20),
              itemCount: versesList.length,
                itemBuilder: (context, index) {
                  return Text(
                    textAlign: TextAlign.center,
                    "[${index + 1}] ${versesList[index]}",
                    style: TextStyle(
                      fontFamily: 'janna',
                      fontSize: 24,
                      height: 1.8,
                      fontWeight: FontWeight.bold,
                      color: AppColor.PrimaryColor,
                    ),
                  );
                }
            ),
          ),
        ],
      ),
    );
  }

  void loadSuraData(String suraId)async{
    String content = await rootBundle.loadString("assets/files/$suraId.txt");
    setState(() {
      versesList = content.split("\n");
    });
  }
}
