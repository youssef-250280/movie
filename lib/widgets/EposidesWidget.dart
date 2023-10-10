import 'package:flutter/material.dart';
import '../Colors.dart';
import 'HomeScreenText.dart';
import 'dimensions.dart';


class EposidesWidget extends StatelessWidget {
   const EposidesWidget({super.key, required this.img, required this.txt, required this.page, required this.tagimg, required this.tagtxt});

  final String img;
  final String txt;
  final String tagtxt;
  final String tagimg;
  final Widget page;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => page),
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
                              child: Hero(
                                tag: tagimg,
                                child: Image.asset(img))),
                            
                            //text container
                            Expanded(
                              child: Container(
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Hero(
                                      tag: tagtxt,
                                      child: Center(
                                        child: HomeScreenText(
                                          text: txt,
                                          color: AppColors.maincolor,
                                        ),
                                      ),
                                    )),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                );
  }
}
