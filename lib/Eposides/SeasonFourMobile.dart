// ignore_for_file: deprecated_member_use, import_of_legacy_library_into_null_safe, file_names, unnecessary_string_interpolations, unnecessary_constructor_name, avoid_unnecessary_containers, must_be_immutable

import 'dart:math';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import '../../../widgets/MobileAppBarWidget.dart';
import '../../../widgets/dimensions.dart';
import '../Colors.dart';
import '../Search/SearchFour.dart';
import '../widgets/HomeScreenText.dart';

List<String> links = [
  'https://www.google.com',
  'https://www.facebook.com',
  'https://www.twitter.com',
  'https://www.google.com',
  'https://www.facebook.com',
  'https://www.twitter.com',
  'https://www.google.com',
  'https://www.facebook.com',
  'https://www.twitter.com',
  'https://www.google.com',
  'https://www.facebook.com',
  'https://www.twitter.com',
  'https://www.google.com',
  'https://www.facebook.com',
  'https://www.twitter.com',
  'https://www.google.com',
  'https://www.facebook.com',
  'https://www.twitter.com',
  'https://www.google.com',
  'https://www.facebook.com',
  'https://www.twitter.com',
  'https://www.google.com',
  'https://www.facebook.com',
  'https://www.twitter.com',
  'https://www.google.com',
  'https://www.facebook.com',
];
final List<String> mainImage = <String>[
  'images/S4/E1.png',
  'images/S4/E2.png',
  'images/S4/E3.png',
  'images/S4/E4.png',
  'images/S4/E5.jpg',
  'images/S4/E6.png',
  'images/S4/E7.png',
  'images/S4/E8.png',
  'images/S4/E9.png',
  'images/S4/E10.png',
  'images/S4/E11.png',
  'images/S4/E12.png',
  'images/S4/E13.png',
  'images/S4/E14.png',
  'images/S4/E15.png',
  'images/S4/E16.png',
  'images/S4/E17.png',
  'images/S4/E18.png',
  'images/S4/E19.png',
  'images/S4/E20.png',
  'images/S4/E21.png',
  'images/S4/E22.jpg',
  'images/S4/E23.png',
  'images/S4/E24.jpg',
  'images/S4/E25.jpg',
  'images/S4/E26.jpg'
];
final List<String> name = <String>[
  'الحلقة 1',
  'الحلقة 2',
  'الحلقة 3',
  'الحلقة 4',
  'الحلقة 5',
  'الحلقة 6',
  'الحلقة 7',
  'الحلقة 8',
  'الحلقة 9',
  'الحلقة 10',
  'الحلقة 11',
  'الحلقة 12',
  'الحلقة 13',
  'الحلقة 14',
  'الحلقة 15',
  'الحلقة 16',
  'الحلقة 17',
  'الحلقة 18',
  'الحلقة 19',
  'الحلقة 20',
  'الحلقة 21',
  'الحلقة 22',
  'الحلقة 23',
  'الحلقة 24',
  'الحلقة 25',
  'الحلقة 26',
];

class SeasonFourMobile extends StatelessWidget {
  const SeasonFourMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(30),
          child: AppBar(
            backgroundColor: Colors.black,
            iconTheme: const IconThemeData(color: AppColors.maincolor),
          )),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MobileAppBarWidget(
              search: const SearchFour(),
            ),
            Container(
                child: Column(children: [
              Center(
                  child: HomeScreenText(
                      text: 'الموسم الرابع', color: AppColors.maincolor)),
              ListView.builder(
                  physics: const ScrollPhysics(parent: null),
                  shrinkWrap: true,
                  itemCount: 26,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        launch(links[index]);
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: Dimensions.width10,
                            right: Dimensions.width10,
                            bottom: Dimensions.height10),
                        child: Row(
                          children: [
                            //image section
                            Container(
                              width: 225,
                              height: 140,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColors.maincolor,
                                    width: 2,
                                  ),
                                  borderRadius: BorderRadius.only(
                                      topLeft:
                                          Radius.circular(Dimensions.radius20),
                                      bottomLeft:
                                          Radius.circular(Dimensions.radius20)),
                                  color: Colors.transparent,
                                  image: DecorationImage(
                                      image:
                                          AssetImage('${mainImage[index]}'))),
                            ),
                            //text container
                            Expanded(
                              child: Container(
                                height: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      topRight:
                                          Radius.circular(Dimensions.radius20),
                                      bottomRight:
                                          Radius.circular(Dimensions.radius20),
                                      topLeft: const Radius.circular(0),
                                      bottomLeft: const Radius.circular(0)),
                                  color: Colors.transparent,
                                  border: Border.all(
                                    color: AppColors.maincolor,
                                    width: 2,
                                  ),
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Transform.rotate(
                                      angle: 90 * pi / 180,
                                      child: HomeScreenText(
                                        text: '${name[index]}',
                                        color: AppColors.maincolor,
                                        size: Dimensions.font15,
                                      )),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }),
            ]))
          ],
        ),
      ),
    );
  }
}
