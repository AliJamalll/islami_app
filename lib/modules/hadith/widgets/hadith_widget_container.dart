import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami/core/constants/app_assets.dart';
import 'package:islami/core/theme/app_color.dart';
import 'package:islami/models/hadith_model.dart';
import 'package:islami/modules/hadith/hadith_details_view.dart';

class HadithWidgetContainer extends StatefulWidget {
  const HadithWidgetContainer({super.key, required this.hadithModel});
  final HadithModel hadithModel;

  @override
  State<HadithWidgetContainer> createState() => _HadithWidgetContainerState();
}

class _HadithWidgetContainerState extends State<HadithWidgetContainer> {
  List<String> hadithList = [];
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    loadHadeethDetails(widget.hadithModel.id);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 313,
      decoration: BoxDecoration(
        color: AppColor.PrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(image: AssetImage(AppAssets.corner2)),
              Image(image: AssetImage(AppAssets.corner1)),
            ],
          ),
          Positioned(
            bottom: 70,
            left: 30,
            child: Image(image: AssetImage(AppAssets.quranWallpaper)),
          ),
          Positioned(
            bottom: 1,
            child: Image(image: AssetImage(AppAssets.mosqueDown)),
          ),
          Positioned(
            top: 50,
            left: 5,
            right: 5, // Ensure it stretches horizontally
            child: SizedBox(
              height: 500, // Provide a fixed height
              child: isLoading
                  ? const Center(child: CircularProgressIndicator())
                  : ListView.builder(
                itemCount: hadithList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () => Navigator.pushNamed(context, HadithDetailsView.routeName,
                      arguments: hadithList[index],
                    ),
                    child: Text(
                      hadithList[index],
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'janna',
                      ),
                    ),
                  );
                },
              ),
            ),
          ),

        ],
      ),
    );
  }

  void loadHadeethDetails(String hadeethId) async {
    try {
      String content = await rootBundle.loadString("assets/hadith/h$hadeethId.txt");
      setState(() {
        hadithList = content.split('\n');
        isLoading = false;
      });
    } catch (e) {
      print("Error loading Hadith: $e");
      setState(() {
        hadithList = ["Error loading Hadith details."];
        isLoading = false;
      });
    }
  }
}
