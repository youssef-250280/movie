// ignore_for_file: file_names, unused_import, non_constant_identifier_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../Colors.dart';
import '../../widgets/dimensions.dart';
import '../widgets/HomeScreenText.dart';
import 'SearchModel.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  static List<SearchModel> main_movies_list = [
    // search season 1
    SearchModel("101", 'images/S1/E1.jpg', "الموسم 1", "الحلقة الأولي",
        "https://www.google.com"),
    SearchModel("102", 'images/S1/E2.jpg', "الموسم 1", "الحلقة الثانية",
        'https://www.facebook.com'),
    SearchModel("103", 'images/S1/E3.jpg', "الموسم 1", "الحلقة الثالثة",
        'https://www.twitter.com'),
    SearchModel("104", 'images/S1/E4.jpg', "الموسم 1", "الحلقة الرابعة",
        'https://www.google.com'),
    SearchModel("105", 'images/S1/E5.jpg', "الموسم 1", "الحلقة الخامسة",
        'https://www.facebook.com'),
    SearchModel("106", 'images/S1/E6.jpg', "الموسم 1", "الحلقة السادسة",
        'https://www.twitter.com'),
    SearchModel("107", 'images/S1/E7.jpg', "الموسم 1", "الحلقة السابعة",
        'https://www.google.com'),
    SearchModel("108", 'images/S1/E8.jpg', "الموسم 1", "الحلقة الثامنة",
        'https://www.facebook.com'),
    SearchModel("109", 'images/S1/E9.jpg', "الموسم 1", "الحلقة التاسعة",
        'https://www.twitter.com'),
    SearchModel("110", 'images/S1/E10.jpg', "الموسم 1", "الحلقة العاشرة",
        'https://www.google.com'),
    SearchModel("111", 'images/S1/E11.jpg', "الموسم 1", "الحلقة الحادية عشر",
        'https://www.facebook.com'),
    SearchModel("112", 'images/S1/E12.jpg', "الموسم 1", "الحلقة الثانية عشر",
        'https://www.twitter.com'),
    SearchModel("113", 'images/S1/E13.jpg', "الموسم 1", "الحلقة الثالثة عشر",
        'https://www.google.com'),
    SearchModel("114", 'images/S1/E14.jpg', "الموسم 1", "الحلقة الرابعة عشر",
        'https://www.facebook.com'),
    SearchModel("115", 'images/S1/E15.jpg', "الموسم 1", "الحلقة الخامسة عشر",
        'https://www.twitter.com'),
    SearchModel("116", 'images/S1/E16.jpg', "الموسم 1", "الحلقة السادسة عشر",
        'https://www.google.com'),
    SearchModel("117", 'images/S1/E17.jpg', "الموسم 1", "الحلقة السابعة عشر",
        'https://www.facebook.com'),
    SearchModel("118", 'images/S1/E18.jpg', "الموسم 1", "الحلقة الثامنة عشر",
        'https://www.twitter.com'),
    SearchModel("119", 'images/S1/E19.jpg', "الموسم 1", "الحلقة التاسعة عشر",
        'https://www.google.com'),
    SearchModel("120", 'images/S1/E20.jpg', "الموسم 1", "الحلقة العشرين",
        'https://www.facebook.com'),
    SearchModel("121", 'images/S1/E21.jpg', "الموسم 1",
        "الحلقة الحادية و العشرين", 'https://www.twitter.com'),
    SearchModel("122", 'images/S1/E22.jpg', "الموسم 1",
        "الحلقة الثانية و العشرين", 'https://www.google.com'),
    SearchModel("123", 'images/S1/E23.jpg', "الموسم 1",
        "الحلقة الثالثة و العشرين", 'https://www.facebook.com'),
    SearchModel("124", 'images/S1/E24.jpg', "الموسم 1",
        "الحلقة الرابعة و العشرين", 'https://www.twitter.com'),
    SearchModel("125", 'images/S1/E25.jpg', "الموسم 1",
        "الحلقة الخامسة و العشرين", 'https://www.google.com'),
    SearchModel("126", 'images/S1/E26.jpg', "الموسم 1",
        "الحلقة السادسة و العشرين", 'https://www.facebook.com'),

    // search season 2
    SearchModel("201", 'images/S2/E1.jpg', "الموسم 2", "الحلقة الأولي",
        "https://www.google.com"),
    SearchModel("202", 'images/S2/E2.jpg', "الموسم 2", "الحلقة الثانية",
        'https://www.facebook.com'),
    SearchModel("203", 'images/S2/E3.jpg', "الموسم 2", "الحلقة الثالثة",
        'https://www.twitter.com'),
    SearchModel("204", 'images/S2/E4.jpg', "الموسم 2", "الحلقة الرابعة",
        'https://www.google.com'),
    SearchModel("205", 'images/S2/E5.jpg', "الموسم 2", "الحلقة الخامسة",
        'https://www.facebook.com'),
    SearchModel("206", 'images/S2/E6.jpg', "الموسم 2", "الحلقة السادسة",
        'https://www.twitter.com'),
    SearchModel("207", 'images/S2/E7.jpg', "الموسم 2", "الحلقة السابعة",
        'https://www.google.com'),
    SearchModel("208", 'images/S2/E8.jpg', "الموسم 2", "الحلقة الثامنة",
        'https://www.facebook.com'),
    SearchModel("209", 'images/S2/E9.jpg', "الموسم 2", "الحلقة التاسعة",
        'https://www.twitter.com'),
    SearchModel("210", 'images/S2/E10.jpg', "الموسم 2", "الحلقة العاشرة",
        'https://www.google.com'),
    SearchModel("211", 'images/S2/E11.jpg', "الموسم 2", "الحلقة الحادية عشر",
        'https://www.facebook.com'),
    SearchModel("212", 'images/S2/E12.jpg', "الموسم 2", "الحلقة الثانية عشر",
        'https://www.twitter.com'),
    SearchModel("213", 'images/S2/E13.jpg', "الموسم 2", "الحلقة الثالثة عشر",
        'https://www.google.com'),
    SearchModel("214", 'images/S2/E14.jpg', "الموسم 2", "الحلقة الرابعة عشر",
        'https://www.facebook.com'),
    SearchModel("215", 'images/S2/E15.jpg', "الموسم 2", "الحلقة الخامسة عشر",
        'https://www.twitter.com'),
    SearchModel("216", 'images/S2/E16.jpg', "الموسم 2", "الحلقة السادسة عشر",
        'https://www.google.com'),
    SearchModel("217", 'images/S2/E17.jpg', "الموسم 2", "الحلقة السابعة عشر",
        'https://www.facebook.com'),
    SearchModel("218", 'images/S2/E18.jpg', "الموسم 2", "الحلقة الثامنة عشر",
        'https://www.twitter.com'),
    SearchModel("219", 'images/S2/E19.jpg', "الموسم 2", "الحلقة التاسعة عشر",
        'https://www.google.com'),
    SearchModel("220", 'images/S2/E20.jpg', "الموسم 2", "الحلقة العشرين",
        'https://www.facebook.com'),
    SearchModel("221", 'images/S2/E21.jpg', "الموسم 2",
        "الحلقة الحادية و العشرين", 'https://www.twitter.com'),
    SearchModel("222", 'images/S2/E22.jpg', "الموسم 2",
        "الحلقة الثانية و العشرين", 'https://www.google.com'),
    SearchModel("223", 'images/S2/E23.jpg', "الموسم 2",
        "الحلقة الثالثة و العشرين", 'https://www.facebook.com'),
    SearchModel("224", 'images/S2/E24.jpg', "الموسم 2",
        "الحلقة الرابعة و العشرين", 'https://www.twitter.com'),
    SearchModel("225", 'images/S2/E25.jpg', "الموسم 2",
        "الحلقة الخامسة و العشرين", 'https://www.google.com'),
    SearchModel("226", 'images/S2/E26.jpg', "الموسم 2",
        "الحلقة السادسة و العشرين", 'https://www.facebook.com'),

    // search season 3
    SearchModel("301", 'images/S3/E1.jpg', "الموسم 3", "الحلقة الأولي",
        "https://www.google.com"),
    SearchModel("302", 'images/S3/E2.jpg', "الموسم 3", "الحلقة الثانية",
        'https://www.facebook.com'),
    SearchModel("303", 'images/S3/E3.jpg', "الموسم 3", "الحلقة الثالثة",
        'https://www.twitter.com'),
    SearchModel("304", 'images/S3/E4.jpg', "الموسم 3", "الحلقة الرابعة",
        'https://www.google.com'),
    SearchModel("305", 'images/S3/E5.jpg', "الموسم 3", "الحلقة الخامسة",
        'https://www.facebook.com'),
    SearchModel("306", 'images/S3/E6.jpg', "الموسم 3", "الحلقة السادسة",
        'https://www.twitter.com'),
    SearchModel("307", 'images/S3/E7.jpg', "الموسم 3", "الحلقة السابعة",
        'https://www.google.com'),
    SearchModel("308", 'images/S3/E8.jpg', "الموسم 3", "الحلقة الثامنة",
        'https://www.facebook.com'),
    SearchModel("309", 'images/S3/E9.jpg', "الموسم 3", "الحلقة التاسعة",
        'https://www.twitter.com'),
    SearchModel("310", 'images/S3/E10.jpg', "الموسم 3", "الحلقة العاشرة",
        'https://www.google.com'),
    SearchModel("311", 'images/S3/E11.jpg', "الموسم 3", "الحلقة الحادية عشر",
        'https://www.facebook.com'),
    SearchModel("312", 'images/S3/E12.jpg', "الموسم 3", "الحلقة الثانية عشر",
        'https://www.twitter.com'),
    SearchModel("313", 'images/S3/E13.jpg', "الموسم 3", "الحلقة الثالثة عشر",
        'https://www.google.com'),
    SearchModel("314", 'images/S3/E14.jpg', "الموسم 3", "الحلقة الرابعة عشر",
        'https://www.facebook.com'),
    SearchModel("315", 'images/S3/E15.jpg', "الموسم 3", "الحلقة الخامسة عشر",
        'https://www.twitter.com'),
    SearchModel("316", 'images/S3/E16.jpg', "الموسم 3", "الحلقة السادسة عشر",
        'https://www.google.com'),
    SearchModel("317", 'images/S3/E17.jpg', "الموسم 3", "الحلقة السابعة عشر",
        'https://www.facebook.com'),
    SearchModel("318", 'images/S3/E18.jpg', "الموسم 3", "الحلقة الثامنة عشر",
        'https://www.twitter.com'),
    SearchModel("319", 'images/S3/E19.png', "الموسم 3", "الحلقة التاسعة عشر",
        'https://www.google.com'),
    SearchModel("320", 'images/S3/E20.jpg', "الموسم 3", "الحلقة العشرين",
        'https://www.facebook.com'),
    SearchModel("321", 'images/S3/E21.jpg', "الموسم 3",
        "الحلقة الحادية و العشرين", 'https://www.twitter.com'),
    SearchModel("322", 'images/S3/E22.jpg', "الموسم 3",
        "الحلقة الثانية و العشرين", 'https://www.google.com'),
    SearchModel("323", 'images/S3/E23.jpg', "الموسم 3",
        "الحلقة الثالثة و العشرين", 'https://www.facebook.com'),
    SearchModel("324", 'images/S3/E24.jpg', "الموسم 3",
        "الحلقة الرابعة و العشرين", 'https://www.twitter.com'),
    SearchModel("325", 'images/S3/E25.jpg', "الموسم 3",
        "الحلقة الخامسة و العشرين", 'https://www.google.com'),
    SearchModel("326", 'images/S3/E26.jpg', "الموسم 3",
        "الحلقة السادسة و العشرين", 'https://www.facebook.com'),

    // search season 4
    SearchModel("401", 'images/S4/E1.png', "الموسم 4", "الحلقة الأولي",
        "https://www.google.com"),
    SearchModel("402", 'images/S4/E2.png', "الموسم 4", "الحلقة الثانية",
        'https://www.facebook.com'),
    SearchModel("403", 'images/S4/E3.png', "الموسم 4", "الحلقة الثالثة",
        'https://www.twitter.com'),
    SearchModel("404", 'images/S4/E4.png', "الموسم 4", "الحلقة الرابعة",
        'https://www.google.com'),
    SearchModel("405", 'images/S4/E5.jpg', "الموسم 4", "الحلقة الخامسة",
        'https://www.facebook.com'),
    SearchModel("406", 'images/S4/E6.png', "الموسم 4", "الحلقة السادسة",
        'https://www.twitter.com'),
    SearchModel("407", 'images/S4/E7.png', "الموسم 4", "الحلقة السابعة",
        'https://www.google.com'),
    SearchModel("408", 'images/S4/E8.png', "الموسم 4", "الحلقة الثامنة",
        'https://www.facebook.com'),
    SearchModel("409", 'images/S4/E9.png', "الموسم 4", "الحلقة التاسعة",
        'https://www.twitter.com'),
    SearchModel("410", 'images/S4/E10.png', "الموس 4", "الحلقة العاشرة",
        'https://www.google.com'),
    SearchModel("411", 'images/S4/E11.png', "الموسم 4", "الحلقة الحادية عشر",
        'https://www.facebook.com'),
    SearchModel("412", 'images/S4/E12.png', "الموسم 4", "الحلقة الثانية عشر",
        'https://www.twitter.com'),
    SearchModel("413", 'images/S4/E13.png', "الموسم 4", "الحلقة الثالثة عشر",
        'https://www.google.com'),
    SearchModel("414", 'images/S4/E14.png', "الموسم 4", "الحلقة الرابعة عشر",
        'https://www.facebook.com'),
    SearchModel("415", 'images/S4/E15.png', "الموسم 4", "الحلقة الخامسة عشر",
        'https://www.twitter.com'),
    SearchModel("416", 'images/S4/E16.png', "الموسم 4", "الحلقة السادسة عشر",
        'https://www.google.com'),
    SearchModel("417", 'images/S4/E17.png', "الموسم 4", "الحلقة السابعة عشر",
        'https://www.facebook.com'),
    SearchModel("418", 'images/S4/E18.png', "الموسم 4", "الحلقة الثامنة عشر",
        'https://www.twitter.com'),
    SearchModel("419", 'images/S4/E19.png', "الموسم 4", "الحلقة التاسعة عشر",
        'https://www.google.com'),
    SearchModel("420", 'images/S4/E20.png', "الموسم 4", "الحلقة العشرين",
        'https://www.facebook.com'),
    SearchModel("421", 'images/S4/E21.png', "الموسم 4",
        "الحلقة الحادية و العشرين", 'https://www.twitter.com'),
    SearchModel("422", 'images/S4/E22.jpg', "الموسم 4",
        "الحلقة الثانية و العشرين", 'https://www.google.com'),
    SearchModel("423", 'images/S4/E23.png', "الموسم 4",
        "الحلقة الثالثة و العشرين", 'https://www.facebook.com'),
    SearchModel("424", 'images/S4/E24.jpg', "الموسم 4",
        "الحلقة الرابعة و العشرين", 'https://www.twitter.com'),
    SearchModel("425", 'images/S4/E25.jpg', "الموسم 4",
        "الحلقة الخامسة و العشرين", 'https://www.google.com'),
    SearchModel("426", 'images/S4/E26.jpg', "الموسم 4",
        "الحلقة السادسة و العشرين", 'https://www.facebook.com'),

    //search season 5
    SearchModel("501", 'images/S5/E1.jpg', "الموسم 5", "الحلقة الأولي",
        "https://www.google.com"),
    SearchModel("502", 'images/S5/E2.png', "الموسم 5", "الحلقة الثانية",
        'https://www.facebook.com'),
    SearchModel("503", 'images/S5/E3.jpg', "الموسم 5", "الحلقة الثالثة",
        'https://www.twitter.com'),
    SearchModel("504", 'images/S5/E4.jpg', "الموسم 5", "الحلقة الرابعة",
        'https://www.google.com'),
    SearchModel("505", 'images/S5/E5.png', "الموسم 5", "الحلقة الخامسة",
        'https://www.facebook.com'),
    SearchModel("506", 'images/S5/E6.png', "الموسم 5", "الحلقة السادسة",
        'https://www.twitter.com'),
    SearchModel("507", 'images/S5/E7.png', "الموسم 5", "الحلقة السابعة",
        'https://www.google.com'),
    SearchModel("508", 'images/S5/E8.png', "الموسم 5", "الحلقة الثامنة",
        'https://www.facebook.com'),
    SearchModel("509", 'images/S5/E9.jpg', "الموسم 5", "الحلقة التاسعة",
        'https://www.twitter.com'),
    SearchModel("510", 'images/S5/E10.jpg', "الموسم 5", "الحلقة العاشرة",
        'https://www.google.com'),
    SearchModel("511", 'images/S5/E11.png', "الموسم 5", "الحلقة الحادية عشر",
        'https://www.facebook.com'),
    SearchModel("512", 'images/S5/E12.jpg', "الموسم 5", "الحلقة الثانية عشر",
        'https://www.twitter.com'),
    SearchModel("516", 'images/S5/E16.jpg', "الموسم 5", "الحلقة السادسة عشر",
        'https://www.google.com'),
    SearchModel("518", 'images/S5/E18.jpg', "الموسم 5", "الحلقة الثامنة عشر",
        'https://www.twitter.com'),
    SearchModel("519", 'images/S5/E19.png', "الموسم 5", "الحلقة التاسعة عشر",
        'https://www.google.com'),
    SearchModel("520", 'images/S5/E20.png', "الموسم 5", "الحلقة العشرين",
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
                    text: 'البحث في ميراكولوس',
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
                      hintText: "اكتب رقم الموسم + رقم الحلقة.. مثال: 308",
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
