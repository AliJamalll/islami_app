import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/theme/app_color.dart';
import 'package:islami/models/sura_data_model.dart';
import 'package:islami/modules/quran/quran_details_view.dart';
import 'package:islami/modules/quran/widgets/recent_item_widget.dart';
import 'package:islami/modules/quran/widgets/sura_item_widget.dart';

class QuranView extends StatelessWidget {
  QuranView({super.key,});

  List<SuraDataModel> recentDataList = [
    SuraDataModel('1', 'Al-Fatiha', 'الفاتحة', '7'),
    SuraDataModel('2', 'Al-Baqarah', 'البقرة', '286'),
    SuraDataModel('3', 'Aal-E-Imran', 'آل عمران', '200'),
    SuraDataModel('4', 'An-Nisa', 'النساء', '176'),
    SuraDataModel('5', 'Al-Maidah', 'المائدة', '120'),
    SuraDataModel('6', 'Al-Anam', 'الأنعام', '165'),
    SuraDataModel('7', 'Al-Araf', 'الأعراف', '206'),
    SuraDataModel('8', 'Al-Anfal', 'الأنفال', '75'),
    SuraDataModel('9', 'At-Tawbah', 'التوبة', '129'),
    SuraDataModel('10', 'Yunus', 'يونس', '109'),
    SuraDataModel('11', 'Hud', 'هود', '123'),
    SuraDataModel('12', 'Yusuf', 'يوسف', '111'),
    SuraDataModel('13', 'Ar-Rad', 'الرعد', '43'),
    SuraDataModel('14', 'Ibrahim', 'إبراهيم', '52'),
    SuraDataModel('15', 'Al-Hijr', 'الحجر', '99'),
    SuraDataModel('16', 'An-Nahl', 'النحل', '128'),
    SuraDataModel('17', 'Al-Isra', 'الإسراء', '111'),
    SuraDataModel('18', 'Al-Kahf', 'الكهف', '110'),
    SuraDataModel('19', 'Maryam', 'مريم', '98'),
    SuraDataModel('20', 'Taha', 'طه', '135'),
    SuraDataModel('21', 'Al-Anbiya', 'الأنبياء', '112'),
    SuraDataModel('22', 'Al-Hajj', 'الحج', '78'),
    SuraDataModel('23', 'Al-Muminun', 'المؤمنون', '118'),
    SuraDataModel('24', 'An-Nur', 'النور', '64'),
    SuraDataModel('25', 'Al-Furqan', 'الفرقان', '77'),
    SuraDataModel('26', 'Ash-Shuara', 'الشعراء', '227'),
    SuraDataModel('27', 'An-Naml', 'النمل', '93'),
    SuraDataModel('28', 'Al-Qasas', 'القصص', '88'),
    SuraDataModel('29', 'Al-Ankabut', 'العنكبوت', '69'),
    SuraDataModel('30', 'Ar-Rum', 'الروم', '60'),
    SuraDataModel('31', 'Luqman', 'لقمان', '34'),
    SuraDataModel('32', 'As-Sajda', 'السجدة', '30'),
    SuraDataModel('33', 'Al-Ahzab', 'الأحزاب', '73'),
    SuraDataModel('34', 'Saba', 'سبأ', '54'),
    SuraDataModel('35', 'Fatir', 'فاطر', '45'),
    SuraDataModel('36', 'Ya-Sin', 'يس', '83'),
    SuraDataModel('37', 'As-Saffat', 'الصافات', '182'),
    SuraDataModel('38', 'Sad', 'ص', '88'),
    SuraDataModel('39', 'Az-Zumar', 'الزمر', '75'),
    SuraDataModel('40', 'Ghafir', 'غافر', '85'),
    SuraDataModel('41', 'Fussilat', 'فصلت', '54'),
    SuraDataModel('42', 'Ash-Shura', 'الشورى', '53'),
    SuraDataModel('43', 'Az-Zukhruf', 'الزخرف', '89'),
    SuraDataModel('44', 'Ad-Dukhan', 'الدخان', '59'),
    SuraDataModel('45', 'Al-Jathiya', 'الجاثية', '37'),
    SuraDataModel('46', 'Al-Ahqaf', 'الأحقاف', '35'),
    SuraDataModel('47', 'Muhammad', 'محمد', '38'),
    SuraDataModel('48', 'Al-Fath', 'الفتح', '29'),
    SuraDataModel('49', 'Al-Hujurat', 'الحجرات', '18'),
    SuraDataModel('50', 'Qaf', 'ق', '45'),
    SuraDataModel('51', 'Adh-Dhariyat', 'الذاريات', '60'),
    SuraDataModel('52', 'At-Tur', 'الطور', '49'),
    SuraDataModel('53', 'An-Najm', 'النجم', '62'),
    SuraDataModel('54', 'Al-Qamar', 'القمر', '55'),
    SuraDataModel('55', 'Ar-Rahman', 'الرحمن', '78'),
    SuraDataModel('56', 'Al-Waqia', 'الواقعة', '96'),
    SuraDataModel('57', 'Al-Hadid', 'الحديد', '29'),
    SuraDataModel('58', 'Al-Mujadila', 'المجادلة', '22'),
    SuraDataModel('59', 'Al-Hashr', 'الحشر', '24'),
    SuraDataModel('60', 'Al-Mumtahina', 'الممتحنة', '13'),
    SuraDataModel('61', 'As-Saff', 'الصف', '14'),
    SuraDataModel('62', 'Al-Jumua', 'الجمعة', '11'),
    SuraDataModel('63', 'Al-Munafiqoon', 'المنافقون', '11'),
    SuraDataModel('64', 'At-Taghabun', 'التغابن', '18'),
    SuraDataModel('65', 'At-Talaq', 'الطلاق', '12'),
    SuraDataModel('66', 'At-Tahrim', 'التحريم', '12'),
    SuraDataModel('67', 'Al-Mulk', 'الملك', '30'),
    SuraDataModel('68', 'Al-Qalam', 'القلم', '52'),
    SuraDataModel('69', 'Al-Haqqah', 'الحاقة', '52'),
    SuraDataModel('70', 'Al-Maarij', 'المعارج', '44'),
    SuraDataModel('71', 'Nuh', 'نوح', '28'),
    SuraDataModel('72', 'Al-Jinn', 'الجن', '28'),
    SuraDataModel('73', 'Al-Muzzammil', 'المزمل', '20'),
    SuraDataModel('74', 'Al-Muddathir', 'المدثر', '56'),
    SuraDataModel('75', 'Al-Qiyama', 'القيامة', '40'),
    SuraDataModel('76', 'Al-Insan', 'الإنسان', '31'),
    SuraDataModel('77', 'Al-Mursalat', 'المرسلات', '50'),
    SuraDataModel('78', 'An-Naba', 'النبأ', '40'),
    SuraDataModel('79', 'An-Naziat', 'النازعات', '46'),
    SuraDataModel('80', 'Abasa', 'عبس', '42'),
    SuraDataModel('81', 'At-Takwir', 'التكوير', '29'),
    SuraDataModel('82', 'Al-Infitar', 'الإنفطار', '19'),
    SuraDataModel('83', 'Al-Mutaffifin', 'المطففين', '36'),
    SuraDataModel('84', 'Al-Inshiqaq', 'الإنشقاق', '25'),
    SuraDataModel('85', 'Al-Burooj', 'البروج', '22'),
    SuraDataModel('86', 'At-Tariq', 'الطارق', '17'),
    SuraDataModel('87', 'Al-Ala', 'الأعلى', '19'),
    SuraDataModel('88', 'Al-Ghashiya', 'الغاشية', '26'),
    SuraDataModel('89', 'Al-Fajr', 'الفجر', '30'),
    SuraDataModel('90', 'Al-Balad', 'البلد', '20'),
    SuraDataModel('91', 'Ash-Shams', 'الشمس', '15'),
    SuraDataModel('92', 'Al-Lail', 'الليل', '21'),
    SuraDataModel('93', 'Ad-Duha', 'الضحى', '11'),
    SuraDataModel('94', 'Ash-Sharh', 'الشرح', '8'),
    SuraDataModel('95', 'At-Tin', 'التين', '8'),
    SuraDataModel('96', 'Al-Alaq', 'العلق', '19'),
    SuraDataModel('97', 'Al-Qadr', 'القدر', '5'),
    SuraDataModel('98', 'Al-Bayyina', 'البينة', '8'),
    SuraDataModel('99', 'Az-Zalzala', 'الزلزلة', '8'),
    SuraDataModel('100', 'Al-Adiyat', 'العاديات', '11'),
    SuraDataModel('101', 'Al-Qaria', 'القارعة', '11'),
    SuraDataModel('102', 'At-Takathur', 'التكاثر', '8'),
    SuraDataModel('103', 'Al-Asr', 'العصر', '3'),
    SuraDataModel('104', 'Al-Humaza', 'الهمزة', '9'),
    SuraDataModel('105', 'Al-Fil', 'الفيل', '5'),
    SuraDataModel('106', 'Quraish', 'قريش', '4'),
    SuraDataModel('107', 'Al-Maun', 'الماعون', '7'),
    SuraDataModel('108', 'Al-Kawthar', 'الكوثر', '3'),
    SuraDataModel('109', 'Al-Kafiroon', 'الكافرون', '6'),
    SuraDataModel('110', 'An-Nasr', 'النصر', '3'),
    SuraDataModel('111', 'Al-Masad', 'المسد', '5'),
    SuraDataModel('112', 'Al-Ikhlas', 'الإخلاص', '4'),
    SuraDataModel('113', 'Al-Falaq', 'الفلق', '5'),
    SuraDataModel('114', 'An-Nas', 'الناس', '6'),
  ];


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(
            AppAssets.quranScreen,
          ),
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/images/Logo_quran_view.png"),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    cursorColor: AppColor.PrimaryColor,
                    //controller: ,
                    style: TextStyle(
                        fontFamily: 'janna',
                        fontSize: 16.8,
                        fontWeight: FontWeight.bold,
                        color: AppColor.titleTextColor
                    ),
                    decoration: InputDecoration(
                      fillColor: AppColor.SecondryColor.withOpacity(0.7),
                        filled: true,
                        prefixIcon: Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              "assets/images/qur.png",
                              color: AppColor.PrimaryColor,
                            )),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: AppColor.PrimaryColor, width: 1.5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                              color: AppColor.PrimaryColor, width: 1.5),
                        ),
                        hintText: "Sura Name",
                        hintStyle: TextStyle(
                          fontFamily: 'janna',
                          fontSize: 16.8,
                          fontWeight: FontWeight.bold,
                          color: AppColor.titleTextColor,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20,right: 20,left: 20,bottom: 10.0),
                  child: Text("Most Recently",
                    style :TextStyle(
                      fontFamily: 'janna',
                      fontSize: 16.8,
                      fontWeight: FontWeight.bold,
                      color: AppColor.titleTextColor
                  ),
                  ),
                ),
                SizedBox(
                  height: 140,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index) => RecentItemWidget(suraDataModel: recentDataList[index],),
                      separatorBuilder: (context,index) => const SizedBox(width: 10,),
                      itemCount: recentDataList.length
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10,right: 20,left: 20,bottom: 10.0),
                  child: Text("Suras List",
                    style :TextStyle(
                        fontFamily: 'janna',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColor.titleTextColor
                    ),
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,///create fixed length for different displays
                  physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.vertical,
                    itemBuilder: (context,index) => GestureDetector(
                        onTap: () => Navigator.pushNamed(
                            context,QuranDetailsView.routeName,
                            arguments: recentDataList[index]
                        ),
                        child: SuraItemWidget(suraDataModel: recentDataList[index],)),
                    separatorBuilder: (context,index) => const Divider(
                      endIndent: 50,
                      indent: 50,
                      thickness: 1.5,
                    ),
                    itemCount: recentDataList.length
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
