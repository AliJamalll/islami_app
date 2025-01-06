import 'package:flutter/material.dart';
import 'package:islami/modules/hadith/widgets/hadith_widget_container.dart';

import '../../core/constants/app_assets.dart';
import '../../models/hadith_model.dart';

class HadithView extends StatelessWidget {
   HadithView({super.key});

   List<HadithModel> hadeethView = [
     HadithModel('1', "Hadith 1", "الحديث الاول"),
     HadithModel('2', "Hadith 2", "الحديث الثاني"),
     HadithModel('3', "Hadith 3", "الحديث الثالث"),
     HadithModel('4', "Hadith 4", "الحديث الرابع"),
     HadithModel('5', "Hadith 5", "الحديث الخامس"),
     HadithModel('6', "Hadith 6", "الحديث السادس"),
     HadithModel('7', "Hadith 7", "الحديث السابع"),
     HadithModel('8', "Hadith 8", "الحديث الثامن"),
     HadithModel('9', "Hadith 9", "الحديث التاسع"),
     HadithModel('10', "Hadith 10", "الحديث العاشر"),
     HadithModel('11', "Hadith 11", "الحديث الحادي عشر"),
     HadithModel('12', "Hadith 12", "الحديث الثاني عشر"),
     HadithModel('13', "Hadith 13", "الحديث الثالث عشر"),
     HadithModel('14', "Hadith 14", "الحديث الرابع عشر"),
     HadithModel('15', "Hadith 15", "الحديث الخامس عشر"),
     HadithModel('16', "Hadith 16", "الحديث السادس عشر"),
     HadithModel('17', "Hadith 17", "الحديث السابع عشر"),
     HadithModel('18', "Hadith 18", "الحديث الثامن عشر"),
     HadithModel('19', "Hadith 19", "الحديث التاسع عشر"),
     HadithModel('20', "Hadith 20", "الحديث العشرون"),
     HadithModel('21', "Hadith 21", "الحديث الحادي والعشرون"),
     HadithModel('22', "Hadith 22", "الحديث الثاني والعشرون"),
     HadithModel('23', "Hadith 23", "الحديث الثالث والعشرون"),
     HadithModel('24', "Hadith 24", "الحديث الرابع والعشرون"),
     HadithModel('25', "Hadith 25", "الحديث الخامس والعشرون"),
     HadithModel('26', "Hadith 26", "الحديث السادس والعشرون"),
     HadithModel('27', "Hadith 27", "الحديث السابع والعشرون"),
     HadithModel('28', "Hadith 28", "الحديث الثامن والعشرون"),
     HadithModel('29', "Hadith 29", "الحديث التاسع والعشرون"),
     HadithModel('30', "Hadith 30", "الحديث الثلاثون"),
     HadithModel('31', "Hadith 31", "الحديث الحادي والثلاثون"),
     HadithModel('32', "Hadith 32", "الحديث الثاني والثلاثون"),
     HadithModel('33', "Hadith 33", "الحديث الثالث والثلاثون"),
     HadithModel('34', "Hadith 34", "الحديث الرابع والثلاثون"),
     HadithModel('35', "Hadith 35", "الحديث الخامس والثلاثون"),
     HadithModel('36', "Hadith 36", "الحديث السادس والثلاثون"),
     HadithModel('37', "Hadith 37", "الحديث السابع والثلاثون"),
     HadithModel('38', "Hadith 38", "الحديث الثامن والثلاثون"),
     HadithModel('39', "Hadith 39", "الحديث التاسع والثلاثون"),
     HadithModel('40', "Hadith 40", "الحديث الأربعون"),
     HadithModel('41', "Hadith 41", "الحديث الحادي والأربعون"),
     HadithModel('42', "Hadith 42", "الحديث الثاني والأربعون"),
     HadithModel('43', "Hadith 43", "الحديث الثالث والأربعون"),
     HadithModel('44', "Hadith 44", "الحديث الرابع والأربعون"),
     HadithModel('45', "Hadith 45", "الحديث الخامس والأربعون"),
     HadithModel('46', "Hadith 46", "الحديث السادس والأربعون"),
     HadithModel('47', "Hadith 47", "الحديث السابع والأربعون"),
     HadithModel('48', "Hadith 48", "الحديث الثامن والأربعون"),
     HadithModel('49', "Hadith 49", "الحديث التاسع والأربعون"),
     HadithModel('50', "Hadith 50", "الحديث الخمسون"),
   ];


   @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(
            AppAssets.hadithScreen,
          ),
          fit: BoxFit.cover,
        ),
        SafeArea(
            child: Center(
              child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
              Image.asset(
                'assets/images/Logo_quran_view.png',
                width: 298,
                height: 129,
              ),
              SizedBox(
                height: 35,
              ),
              SizedBox(
                height: 570,
                width: 400,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => HadithWidgetContainer(hadithModel: hadeethView[index],),
                    separatorBuilder: (context, index) => const SizedBox(
                          width: 10,
                        ),
                    itemCount: hadeethView.length
                ),
              )
                        ],
                      ),
            ))
      ],
    );
  }
}
