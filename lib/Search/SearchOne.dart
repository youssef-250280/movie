// ignore_for_file: file_names, unused_import, non_constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Colors.dart';
import '../../widgets/dimensions.dart';
import '../widgets/HomeScreenText.dart';
import 'SearchModel.dart';

class SearchOne extends StatefulWidget {
  const SearchOne({super.key});

  @override
  State<SearchOne> createState() => _SearchState();
}

class _SearchState extends State<SearchOne> {
  static List<SearchModel> main_movies_list = [
    SearchModel("1", 'images/S1/E1.jpg', "الموسم 1", "الحلقة الأولي",
        "https://www.google.com"),
    SearchModel("2", 'images/S1/E2.jpg', "الموسم 1", "الحلقة الثانية",
        'https://www.facebook.com'),
    SearchModel("3", 'images/S1/E3.jpg', "الموسم 1", "الحلقة الثالثة",
        'https://www.twitter.com'),
    SearchModel("4", 'images/S1/E4.jpg', "الموسم 1", "الحلقة الرابعة",
        'https://www.google.com'),
    SearchModel("5", 'images/S1/E5.jpg', "الموسم 1", "الحلقة الخامسة",
        'https://www.facebook.com'),
    SearchModel("6", 'images/S1/E6.jpg', "الموسم 1", "الحلقة السادسة",
        'https://www.twitter.com'),
    SearchModel("7", 'images/S1/E7.jpg', "الموسم 1", "الحلقة السابعة",
        'https://www.google.com'),
    SearchModel("8", 'images/S1/E8.jpg', "الموسم 1", "الحلقة الثامنة",
        'https://www.facebook.com'),
    SearchModel("9", 'images/S1/E9.jpg', "الموسم 1", "الحلقة التاسعة",
        'https://www.twitter.com'),
    SearchModel("10", 'images/S1/E10.jpg', "الموسم 1", "الحلقة العاشرة",
        'https://www.google.com'),
    SearchModel("11", 'images/S1/E11.jpg', "الموسم 1", "الحلقة الحادية عشر",
        'https://www.facebook.com'),
    SearchModel("12", 'images/S1/E12.jpg', "الموسم 1", "الحلقة الثانية عشر",
        'https://www.twitter.com'),
    SearchModel("13", 'images/S1/E13.jpg', "الموسم 1", "الحلقة الثالثة عشر",
        'https://www.google.com'),
    SearchModel("14", 'images/S1/E14.jpg', "الموسم 1", "الحلقة الرابعة عشر",
        'https://www.facebook.com'),
    SearchModel("15", 'images/S1/E15.jpg', "الموسم 1", "الحلقة الخامسة عشر",
        'https://www.twitter.com'),
    SearchModel("16", 'images/S1/E16.jpg', "الموسم 1", "الحلقة السادسة عشر",
        'https://www.google.com'),
    SearchModel("17", 'images/S1/E17.jpg', "الموسم 1", "الحلقة السابعة عشر",
        'https://www.facebook.com'),
    SearchModel("18", 'images/S1/E18.jpg', "الموسم 1", "الحلقة الثامنة عشر",
        'https://www.twitter.com'),
    SearchModel("19", 'images/S1/E19.jpg', "الموسم 1", "الحلقة التاسعة عشر",
        'https://www.google.com'),
    SearchModel("20", 'images/S1/E20.jpg', "الموسم 1", "الحلقة العشرين",
        'https://www.facebook.com'),
    SearchModel("21", 'images/S1/E21.jpg', "الموسم 1",
        "الحلقة الحادية و العشرين", 'https://www.twitter.com'),
    SearchModel("22", 'images/S1/E22.jpg', "الموسم 1",
        "الحلقة الثانية و العشرين", 'https://www.google.com'),
    SearchModel("23", 'images/S1/E23.jpg', "الموسم 1",
        "الحلقة الثالثة و العشرين", 'https://www.facebook.com'),
    SearchModel("24", 'images/S1/E24.jpg', "الموسم 1",
        "الحلقة الرابعة و العشرين", 'https://www.twitter.com'),
    SearchModel("25", 'images/S1/E25.jpg', "الموسم 1",
        "الحلقة الخامسة و العشرين", 'https://www.google.com'),
    SearchModel("26", 'images/S1/E26.jpg', "الموسم 1",
        "الحلقة السادسة و العشرين", 'https://www.facebook.com'),
  ];

  List<SearchModel> display_list = List.from(main_movies_list);
  void updateList(String value) {
    setState(() {
      display_list = main_movies_list
          .where((element) =>
              element.name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.black,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(right: Dimensions.height10),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: HomeScreenText(
                    text: 'البحث في الموسم 1',
                    color: Colors.white,
                    size: Dimensions.font15,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: Dimensions.height10),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius10),
                      border: Border.all(color: AppColors.maincolor, width: 2)),
                  child: TextField(
                    onChanged: (value) => updateList(value),
                    keyboardType: TextInputType.text, // تعيين نوع لوحة المفاتيح
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "HACEN_BEIRUT",
                        fontSize: Dimensions.font11),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.black,
                      border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius:
                              BorderRadius.circular(Dimensions.radius10)),
                      hintText: "اكتب رقم الحلقة",
                      hintStyle: const TextStyle(color: AppColors.maincolor),
                      suffixIcon: const Icon(Icons.search),
                      suffixIconColor: AppColors.maincolor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                    itemCount: display_list.length,
                    itemBuilder: (context, index) => ListTile(
                          onTap: () {
                            launch(display_list[index].url!);
                          },
                          title: Text(
                            display_list[index].name!,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            display_list[index].subtitle!,
                            style: const TextStyle(color: Colors.white60),
                          ),
                          trailing: Text(
                            display_list[index].number!,
                            style: const TextStyle(color: Colors.yellow),
                          ),
                          leading:
                              Image.asset(display_list[index].Epodide_Url!),
                        )),
              ))
            ]));
  }
}
