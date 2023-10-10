// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:miraculous_myths_1/widgets/AppBarWidget.dart';
import 'package:miraculous_myths_1/widgets/EposidesWidget.dart';
import '../../../Colors.dart';
import '../Search/Search.dart';
import 'Awaking.dart';
import 'NewYork.dart';
import 'Shanghai.dart';


class Special extends StatelessWidget {
  const Special({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
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
            AppBarWidget(
              search: const Search(),
            ),
            const EposidesWidget(img: 'images/Awaking.jpg', txt: 'النهضة', page: Awaking(), tagimg: 'Awaking', tagtxt: 'Awakingtxt',),
            const EposidesWidget(img: 'images/Shanghai.jpg', txt: 'شينغهاي', page: shanghai(), tagimg: 'shanghai', tagtxt: 'shanghaitxt'),
            const EposidesWidget(img: 'images/special.jpg', txt: 'نيويورك', page: NewYork(), tagimg: 'NewYork', tagtxt: 'NewYorktxt'),
          ],
        )));
  }
}
