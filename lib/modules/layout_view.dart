import 'package:flutter/material.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/theme/app_color.dart';
import 'package:islami/modules/hadith/Hadith_view.dart';
import 'package:islami/modules/quran/quran_view.dart';
import 'package:islami/modules/radio/radio_view.dart';
import 'package:islami/modules/sibha/sibha_view.dart';
import 'package:islami/modules/time/time_view.dart';
import 'package:islami/modules/widget/customnavBar.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = '/LayoutView';

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;

  List<Widget> screens =[
    QuranView(),
    HadithView(),
    SibhaView(),
    RadioView(),
    TimeView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,

      body: screens[selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },

        backgroundColor: AppColor.PrimaryColor,
        type: BottomNavigationBarType.fixed,

        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontFamily: 'janna',
          fontWeight: FontWeight.bold
        ),

        selectedIconTheme: const IconThemeData(
          color: Colors.white,
        ),

        unselectedIconTheme: const IconThemeData(
          color: Colors.black,
        ),


        selectedItemColor: AppColor.white,
        unselectedItemColor: AppColor.SecondryColor,
        showSelectedLabels: true,
        showUnselectedLabels: false,

        items: [
          BottomNavigationBarItem(
            icon: CustomNavBar(imagePath: "assets/images/qur.png",isSelected: selectedIndex == 0,),
            label: 'Quran',
          ),
           BottomNavigationBarItem(
            icon: CustomNavBar(imagePath: AppAssets.HadithIcon,isSelected: selectedIndex == 1,),
            label: 'Hadith',
          ),
           BottomNavigationBarItem(
            icon: CustomNavBar(imagePath: AppAssets.TasbihIcon,isSelected: selectedIndex == 2,),
            label: 'Sibha',
          ),
           BottomNavigationBarItem(
            icon: CustomNavBar(imagePath: AppAssets.RadioIcon,isSelected: selectedIndex == 3,),
            label: 'Radio',
          ),
           BottomNavigationBarItem(
            icon: CustomNavBar(imagePath: AppAssets.TimeIcon,isSelected: selectedIndex == 4,),
            label: 'Time',
          ),
        ],
      ),
    );
  }
}
