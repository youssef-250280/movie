// ignore_for_file: must_be_immutable, file_names

import 'package:flutter/material.dart';
import '../Colors.dart';
import '../Video_Discription.dart';
import 'big_text.dart';
import 'dimensions.dart';

Widget? search;

class AppBarWidget extends StatelessWidget {
  AppBarWidget({super.key, this.search});

  Widget? search;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(left: Dimensions.width10, right: Dimensions.width10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: BigText(
                  text: 'miraculous myths', color: AppColors.maincolor)),
          Container(
            width: Dimensions.height50,
            height: Dimensions.height50,
            // ignore: sort_child_properties_last
            child: Icon(
              Icons.search,
              color: Colors.black,
              size: Dimensions.iconSearch,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(Dimensions.radius15),
              color: Colors.black,
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
                  MaterialPageRoute(builder: (context) => const VideoPlayer()),
                );
              },
              icon: Icon(
                Icons.description,
                color: AppColors.maincolor,
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
                  MaterialPageRoute(builder: (context) => search as Widget),
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
    );
  }
}
