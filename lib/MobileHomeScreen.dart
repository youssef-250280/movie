// ignore_for_file: file_names, depend_on_referenced_packages

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:miraculous_myths_1/widgets/HomeScreenText.dart';
import '../Colors.dart';
import '../widgets/MobileAppBarWidget.dart';
import '../widgets/dimensions.dart';
import 'Eposides/SeasonFiveMobile.dart';
import 'Eposides/SeasonFourMobile.dart';
import 'Eposides/SeasonOneMobile.dart';
import 'Eposides/SeasonThreeDub_Sub.dart';
import 'Eposides/SeasonTwoMobile.dart';
import 'Eposides/Special.dart';
import 'Search/Search.dart';

List<Widget> links = [
  const SeasonOneMobile(),
  const SeasonTwoMobile(),
  const SeasonThreeDub_Sub(),
  const SeasonFourMobile(),
  const SeasonFiveMobile(),
  const Special(),
];

final List<String> mainImage = <String>[
  'images/season1.jpg',
  'images/season2.jpg',
  'images/season3.jpg',
  'images/season4.jpg',
  'images/season5.jpg',
  'images/special.jpg',
];

final List<String> name = <String>[
  'الموسم 1',
  'الموسم 2',
  'الموسم 3',
  'الموسم 4',
  'الموسم 5',
  'حلقات خاصة',
];

class MobileHomeScreen extends StatefulWidget {
  const MobileHomeScreen({super.key});

  @override
  State<MobileHomeScreen> createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen> {
  void requesPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true);

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      print('User Granted Permission');
    }

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const MobileHomeScreen()),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    requesPermission();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black,
          body: SingleChildScrollView(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MobileAppBarWidget(
                search: const Search(),
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
                            border: Border.all(
                                width: 2, color: AppColors.maincolor)),
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
                                child: Align(
                                    alignment: Alignment.center,
                                    child: HomeScreenText(
                                      text: name[index],
                                      color: AppColors.maincolor,
                                    )),
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
          ))),
    );
  }
}
