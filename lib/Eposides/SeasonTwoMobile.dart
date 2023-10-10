// ignore_for_file: deprecated_member_use, import_of_legacy_library_into_null_safe, file_names, unnecessary_string_interpolations, unnecessary_constructor_name, avoid_unnecessary_containers, must_be_immutable

import 'dart:math';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import '../../../widgets/MobileAppBarWidget.dart';
import '../../../widgets/dimensions.dart';
import '../Colors.dart';
import '../Search/SearchTwo.dart';
import '../widgets/HomeScreenText.dart';

List<String> links = [
  'https://link-yz.com/S2-E1-DUB',
  'https://link-yz.com/S2-E2-DUB',
  'https://link-yz.com/S2-E3-DUB',
  'https://link-yz.com/S2-E4-DUB',
  'https://link-yz.com/S2-E5-DUB',
  'https://link-yz.com/S2-E6-DUB',
  'https://link-yz.com/S2-E7-DUB',
  'https://link-yz.com/S2-E8-DUB',
  'https://link-yz.com/S2-E9-DUB',
  'https://link-yz.com/S2-E10-DUB',
  'https://link-yz.com/S2-E11-DUB',
  'https://link-yz.com/S2-E12-DUB',
  'https://link-yz.com/S2-E13-DUB',
  'https://link-yz.com/S2-E14-DUB',
  'https://link-yz.com/S2-E15-DUB',
  'https://link-yz.com/S2-E16-DUB',
  'https://link-yz.com/S2-E17-DUB',
  'https://link-yz.com/S2-E18-DUB',
  'https://link-yz.com/S2-E19-DUB',
  'https://link-yz.com/S2-E20-DUB',
  'https://link-yz.com/S2-E21-DUB',
  'https://link-yz.com/S2-E22-DUB',
  'https://link-yz.com/S2-E23-DUB',
  'https://link-yz.com/S2-E24-DUB',
  'https://link-yz.com/S2-E25-DUB',
  'https://link-yz.com/S2-E26-DUB',
];

final List<String> mainImage = <String>[
  'images/S2/E1.jpg',
  'images/S2/E2.jpg',
  'images/S2/E3.jpg',
  'images/S2/E4.jpg',
  'images/S2/E5.jpg',
  'images/S2/E6.jpg',
  'images/S2/E7.jpg',
  'images/S2/E8.jpg',
  'images/S2/E9.jpg',
  'images/S2/E10.jpg',
  'images/S2/E11.jpg',
  'images/S2/E12.jpg',
  'images/S2/E13.jpg',
  'images/S2/E14.jpg',
  'images/S2/E15.jpg',
  'images/S2/E16.jpg',
  'images/S2/E17.jpg',
  'images/S2/E18.jpg',
  'images/S2/E19.jpg',
  'images/S2/E20.jpg',
  'images/S2/E21.jpg',
  'images/S2/E22.jpg',
  'images/S2/E23.jpg',
  'images/S2/E24.jpg',
  'images/S2/E25.jpg',
  'images/S2/E26.jpg',
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

class SeasonTwoMobile extends StatelessWidget {
  const SeasonTwoMobile({super.key});

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
              search: const SearchTwo(),
            ),
            Container(
                child: Column(children: [
              Center(
                  child: HomeScreenText(
                      text: 'الموسم الثاني', color: AppColors.maincolor)),
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
