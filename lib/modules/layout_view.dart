import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_color.dart';

class LayoutView extends StatefulWidget {
  static const String routeName = '/LayoutView';

  const LayoutView({super.key});

  @override
  State<LayoutView> createState() => _LayoutViewState();
}

class _LayoutViewState extends State<LayoutView> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        backgroundColor: AppColor.PrimaryColor,
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: const IconThemeData(
          color: Colors.white,
        ),
        unselectedIconTheme: const IconThemeData(
          color: Colors.grey,
        ),
        selectedItemColor: AppColor.white,
        unselectedItemColor: AppColor.SecondryColor,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: AppColor.SecondryColor.withOpacity(0.6), // Fixed opacity
              ),
              child: Image.asset(
                'assets/images/qur.png',
                height: 24, // Add size constraints
                width: 24,
              ),
            ),
            label: 'Hadith',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Sibha',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.mosque),
            label: 'Radia',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Time',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
