// ignore_for_file: file_names, depend_on_referenced_packages, deprecated_member_use
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../Colors.dart';
import '../../../widgets/big_text.dart';
import '../widgets/HomeScreenText.dart';

class EposidesDetailsWidget extends StatelessWidget {
  const EposidesDetailsWidget({super.key, required this.tagimg ,required this.img ,required this.tagtxt, required this.title,required this.details ,required this.lnkDub ,required this.lnkSub,});

  final String tagimg;
  final String img;
  final String tagtxt;
  final String title;
  final String details;
  final String lnkDub;
  final String lnkSub;
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60),
            child: AppBar(
              title: Hero(
                tag: 'miraculous myths',
                child: Center(
                  child: BigText(
                      text: 'miraculous myths   ', color: AppColors.maincolor),
                ),
              ),
              backgroundColor: Colors.black,
              iconTheme: const IconThemeData(color: AppColors.maincolor),
            )),
            backgroundColor: Colors.black,
            
        body: SingleChildScrollView(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              child: Hero(
                tag: tagimg,
                child: Image.asset(img))),
                Hero(
                  tag: tagtxt,
                  child: Center(
                    child: HomeScreenText(text: title,
                                          color: AppColors.maincolor,),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text( details,
                      style: const TextStyle(color: Colors.white, fontSize: 20,height: 1.1, fontFamily: 'HACEN_BEIRUT'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: InkWell(
                      onTap: (){
                    launch(lnkDub);
                      },
                      child: Container(
                        height: 70,
                        width: 250,
                        decoration: BoxDecoration(
                          color: AppColors.maincolor,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: HomeScreenText(
                          color: Colors.white,
                          text:'مدبلجة')),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: InkWell(
                      onTap: (){
                        launch(lnkSub);
                      },
                      child: Container(
                        height: 70,
                        width: 250,
                        decoration: BoxDecoration(
                          color: AppColors.maincolor,
                          borderRadius: BorderRadius.circular(10)
                        ),
                        child: Center(child: HomeScreenText(
                          color: Colors.white,
                          text:'مترجمة')),
                      ),
                    ),
                  )
          ],
        ))
    );
  }
}