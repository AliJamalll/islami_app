import 'package:flutter/material.dart';
import 'package:islami/core/theme/app_color.dart';
import 'package:islami/modules/radio/widgets/custom_radio_list.dart';

import '../../core/constants/app_assets.dart';

class RadioView extends StatefulWidget {
  const RadioView({super.key});

  @override
  State<RadioView> createState() => _RadioViewState();
}

class _RadioViewState extends State<RadioView> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage(
            AppAssets.radioScreen,
          ),
          fit: BoxFit.cover,
          width: double.infinity,
        ),
        SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/Logo_quran_view.png',
                      width: 298,
                      height: 129,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.PrimaryColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Radio',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        fontFamily: 'janna',
                                        color: AppColor.SecondryColor),
                                  )
                                ],
                              )),
                        ),
                        Expanded(
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColor.SecondryColor),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Reciters',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 16,
                                        fontFamily: 'janna',
                                        color: AppColor.white),
                                  )
                                ],
                              )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height,
                      child: ListView.separated(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          itemBuilder: (context, index) => CustomRadioList(),
                          separatorBuilder: (context, index) => const SizedBox(
                                height: 15,
                              ),
                          itemCount: 10),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

