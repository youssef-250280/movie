import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../Colors.dart';
import '../widgets/HomeScreenText.dart';
import '../widgets/big_text.dart';

class Awaking extends StatefulWidget {
  const Awaking({super.key});
  @override
  State<Awaking> createState() => _AwakingState();
}
class _AwakingState extends State<Awaking> {
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
                tag: 'Awaking',
                child: Image.asset('images/Awaking.jpg'))),
                Hero(
                  tag: 'Awakingtxt',
                  child: Center(
                    child: HomeScreenText(text: 'النهضة',
                                          color: AppColors.maincolor,),
                  )),
                  const Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text('تصبح حياة المراهقة العادية "مارينيت" في باريس بطلة خارقة عندما تصبح الدعسوقة. بفضل قوى الإنشاء ، يجب على Ladybug أن تتحد مع نظيرها ، Cat Noir ، لإنقاذ باريس من شرير جديد يطلق العنان للفوضى في المدينة.',
                      style: TextStyle(color: Colors.white, fontSize: 20,height: 1.1, fontFamily: 'HACEN_BEIRUT'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: InkWell(
                      onTap: (){
                    launch('https://bit.ly/AWAKING-DUB');
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
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: InkWell(
                      onTap: (){
                        launch('https://bit.ly/awakening-movie-SUB');
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
        )));
  }
}