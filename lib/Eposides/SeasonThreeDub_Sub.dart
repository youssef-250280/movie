// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import '../../../Colors.dart';
import '../../../widgets/big_text.dart';
import '../../../widgets/dimensions.dart';
import '../../Search/Search.dart';
import '../widgets/HomeScreenText.dart';
import 'SeasonThreeDubMobile.dart';
import 'SeasonThreeSubMobile.dart';

List<Widget> links = [
  const SeasonThreeDubMobile(),
  const SeasonThreeSubMobile(),
];

final List<String> mainImage = <String>[
  'images/season3.jpg',
  'images/season3.jpg',
];
final List<String> name = <String>[
  'مدبلجة',
  'مترجمة',
];

class SeasonThreeDub_Sub extends StatelessWidget {
  const SeasonThreeDub_Sub({super.key});

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
            Container(
              padding: EdgeInsets.only(
                  left: Dimensions.width20, right: Dimensions.width20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: BigText(
                          text: 'miraculous myths',
                          color: AppColors.maincolor)),
                  SizedBox(
                    width: Dimensions.height50,
                    height: Dimensions.height50,
                    // ignore: sort_child_properties_last
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Search()),
                        );
                      },
                      icon: Icon(
                        Icons.search,
                        color: const Color.fromARGB(255, 0, 0, 0),
                        size: Dimensions.iconSearch,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: Dimensions.height50,
                    height: Dimensions.height50,
                    // ignore: sort_child_properties_last
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Search()),
                        );
                      },
                      icon: Icon(
                        Icons.search,
                        color: AppColors.maincolor,
                        size: Dimensions.iconSearch,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              physics: const ScrollPhysics(parent: null),
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              itemCount: name.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => links[index]),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: Dimensions.height200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border:
                              Border.all(width: 2, color: AppColors.maincolor)),
                      child: Container(
                        margin: EdgeInsets.only(
                            left: Dimensions.width20,
                            right: Dimensions.width20,
                            bottom: Dimensions.height10,
                            top: Dimensions.height10),
                        child: Column(
                          children: [
                            //image section
                            ClipRRect(
                              borderRadius: BorderRadius.circular(6),
                              child: Image.asset(mainImage[index])),
                            
                            //text container
                            Expanded(
                              child: Container(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: HomeScreenText(
                                      text: name[index],
                                      color: AppColors.maincolor,
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        )));
  }
}
