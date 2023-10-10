// ignore_for_file: file_names, unused_import, non_constant_identifier_names, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Colors.dart';
import '../../widgets/dimensions.dart';
import '../widgets/HomeScreenText.dart';
import 'SearchModel.dart';

class SearchFive extends StatefulWidget {
  const SearchFive({super.key});

  @override
  State<SearchFive> createState() => _SearchState();
}

class _SearchState extends State<SearchFive> {
  static List<SearchModel> main_movies_list = [
    SearchModel("1", 'images/S5/E1.jpg', "الموسم 5", "الحلقة الأولي",
        "https://www.google.com"),
    SearchModel("2", 'images/S5/E2.png', "الموسم 5", "الحلقة الثانية",
        'https://www.facebook.com'),
    SearchModel("3", 'images/S5/E3.jpg', "الموسم 5", "الحلقة الثالثة",
        'https://www.twitter.com'),
    SearchModel("4", 'images/S5/E4.jpg', "الموسم 5", "الحلقة الرابعة",
        'https://www.google.com'),
    SearchModel("5", 'images/S5/E5.png', "الموسم 5", "الحلقة الخامسة",
        'https://www.facebook.com'),
    SearchModel("6", 'images/S5/E6.png', "الموسم 5", "الحلقة السادسة",
        'https://www.twitter.com'),
    SearchModel("7", 'images/S5/E7.png', "الموسم 5", "الحلقة السابعة",
        'https://www.google.com'),
    SearchModel("8", 'images/S5/E8.png', "الموسم 5", "الحلقة الثامنة",
        'https://www.facebook.com'),
    SearchModel("9", 'images/S5/E9.jpg', "الموسم 5", "الحلقة التاسعة",
        'https://www.twitter.com'),
    SearchModel("10", 'images/S5/E10.jpg', "الموسم 5", "الحلقة العاشرة",
        'https://www.google.com'),
    SearchModel("11", 'images/S5/E11.png', "الموسم 5", "الحلقة الحادية عشر",
        'https://www.facebook.com'),
    SearchModel("12", 'images/S5/E12.jpg', "الموسم 5", "الحلقة الثانية عشر",
        'https://www.twitter.com'),
    SearchModel("16", 'images/S5/E16.jpg', "الموسم 5", "الحلقة السادسة عشر",
        'https://www.google.com'),
    SearchModel("18", 'images/S5/E18.jpg', "الموسم 5", "الحلقة الثامنة عشر",
        'https://www.twitter.com'),
    SearchModel("19", 'images/S5/E19.png', "الموسم 5", "الحلقة التاسعة عشر",
        'https://www.google.com'),
    SearchModel("20", 'images/S5/E20.png', "الموسم 5", "الحلقة العشرين",
        'https://www.facebook.com'),
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
                    text: 'البحث في الموسم 5',
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
