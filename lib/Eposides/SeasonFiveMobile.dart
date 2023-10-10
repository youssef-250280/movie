// ignore_for_file: deprecated_member_use, import_of_legacy_library_into_null_safe, file_names, unnecessary_string_interpolations, unnecessary_constructor_name, avoid_unnecessary_containers, must_be_immutable

import 'dart:math';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import '../../../widgets/MobileAppBarWidget.dart';
import '../../../widgets/dimensions.dart';
import '../Colors.dart';
import '../Search/SearchFive.dart';
import '../widgets/HomeScreenText.dart';

List<String> links = [
  'https://bit.ly/S5-E1-DUB',
  'https://bit.ly/S5-E2-DUB',
  'https://bit.ly/S5-E3-SUB',
  'https://bit.ly/S5-E4-SUB',
  'https://bit.ly/S5-E5-SUB',
  'https://bit.ly/S5-E6-SUB',
  'https://bit.ly/S5-E7-SUB',
  'https://bit.ly/S5-E8-SUB',
  'https://bit.ly/S5-E9-SUB',
  'https://bit.ly/S5-E10-DUB',
  'https://bit.ly/S5-E11-SUB',
  'https://bit.ly/S5-E12-SUB',
  'https://bit.ly/S5-E13-SUB',
  'https://bit.ly/S5-E14-SUB',
  'https://bit.ly/S5-E15-SUB',
  'https://bit.ly/S5-EP16-arsub',
  'https://bit.ly/S5-E17-SUB',
  'https://bit.ly/S5-E18-SUB',
  'https://bit.ly/S5-EP19-arsub',
  'https://bit.ly/S5-E20-SUB',
  'https://bit.ly/S5-E21-SUB',
  'https://bit.ly/S5-E22-SUB',
  'https://bit.ly/S5-E23-SUB',
  'https://bit.ly/S5-E24-SUB',
  'https://bit.ly/S5-E25-SUB',
  'https://bit.ly/S5-E26-SUB',
];
final List<String> mainImage = <String>[
  'images/S5/E1.jpg',
  'images/S5/E2.png',
  'images/S5/E3.jpg',
  'images/S5/E4.jpg',
  'images/S5/E5.png',
  'images/S5/E6.png',
  'images/S5/E7.png',
  'images/S5/E8.png',
  'images/S5/E9.jpg',
  'images/S5/E10.jpg',
  'images/S5/E11.png',
  'images/S5/E12.jpg',
  'images/S5/E13.jpg',
  'images/S5/E14.jpg',
  'images/S5/E15.jpg',
  'images/S5/E16.jpg',
  'images/S5/E17.jpg',
  'images/S5/E18.jpg',
  'images/S5/E19.png',
  'images/S5/E20.png',
  'images/S5/E21.jpg',
  'images/S5/E22.jpg',
  'images/S5/E23.jpg',
  'images/S5/E24.jpg',
  'images/S5/E25.jpg',
  'images/S5/E26.jpg',
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

class SeasonFiveMobile extends StatelessWidget {
  const SeasonFiveMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                search: const SearchFive(),
              ),
              Center(
                  child: HomeScreenText(
                      text: 'الموسم الخامس', color: AppColors.maincolor)),
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
                  })
            ],
          ),
        ),
      ),
    );
  }
}
