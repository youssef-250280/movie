import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 6.1;

  //dynamic height padding and margin
  static double height8 = screenHeight / 164.4;
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 86.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 30.13;
  static double height45 = screenHeight / 15;
  static double height50 = screenHeight / 18.75;
  static double height200 = screenHeight / 3;

  //dynamic width padding and margin
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 30.13;
  static double width120 = screenHeight / 7.13;

  static double font25 = screenHeight / 15;
  static double font20 = screenHeight / 20;
  static double font15 = screenHeight / 31.8;
  static double font13 = screenHeight / 45.73;
  static double font11 = screenHeight / 70.73;

  //radius
  static double radius10 = screenHeight / 76.27;
  static double radius15 = screenHeight / 56.27;
  static double radius20 = screenHeight / 42.2;
  static double radius30 = screenHeight / 28.13;

  //icon size
  static double iconSize24 = screenHeight / 38.13;
  static double iconSearch = screenHeight / 28.13;
  static double iconSize16 = screenHeight / 52.75;

  //list view size
  static double listViewImgSize = screenWidth / 3.25;
  static double listViewTextContSize = screenWidth / 5;

  // ignore: non_constant_identifier_names
  static double popularFoodImgSize = screenHeight / 2.41;

  //bottom height
  static double bottomHeightBar = screenHeight / 7.03;
}
