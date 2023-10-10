import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Colors.dart';
import '../widgets/HomeScreenText.dart';
import '../widgets/big_text.dart';


class shanghai extends StatelessWidget {
  const shanghai({super.key,});

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
                tag: 'shanghai',
                child: Image.asset('images/Shanghai.jpg'))),
                Hero(
                  tag: 'shanghaitxt',
                  child: Center(
                    child: HomeScreenText(text: 'شينغهاي',
                                          color: AppColors.maincolor,),
                  )),
                  const Padding(
                    padding:  EdgeInsets.only(left: 10.0, right: 10.0),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: Text( 'للانضمام إلى "ادريان" في شنغهاي ، ستزور "مارينت" عمها "وانغ" الذي يحتفل بعيد ميلاده. ولكن بمجرد وصولها إلى الصين سُرقت حقيبتها مع وجود "تيكي" بداخلها ، والتي تحتاج إلى تحويلها سرًا إلى "الدعسوقة"! بدون مال وحيدة في المدينة الشاسعة ، تقبل "مارينت" مساعدة فتاة ذكية في الشارع ، "فيي". سوف تتحالف الفتاتان وتكتشفان وجود جوهرة سحرية جديدة ،. يسعى "هوكموث" الموجودة أيضًا في شنغهاي ، إلى العثور عليها منذ فترة طويلة',
                      style:  TextStyle(color: Colors.white, fontSize: 20,height: 1.1, fontFamily: 'HACEN_BEIRUT'),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: InkWell(
                      onTap: (){
                    launch('https://bit.ly/miraculous-shanghai-DUB');
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
                        launch('https://bit.ly/miraculous-shanghai-SUB');
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

// List<String> links = [
//   'https://bit.ly/miraculous-shanghai-DUB',
//   'https://bit.ly/miraculous-shanghai-SUB',
// ];

// final List<String> mainImage = <String>[
//   'images/Shanghai.jpg',
//   'images/Shanghai.jpg',
// ];
// final List<String> name = <String>[
//   'مدبلجة',
//   'مترجمة',
// ];

// class Shanghai extends StatelessWidget {
//   const Shanghai({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: PreferredSize(
//             preferredSize: const Size.fromHeight(30),
//             child: AppBar(
//               backgroundColor: Colors.black,
//               iconTheme: const IconThemeData(color: AppColors.maincolor),
//             )),
//         backgroundColor: Colors.black,
//         body: SingleChildScrollView(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               padding: EdgeInsets.only(
//                   left: Dimensions.width20, right: Dimensions.width20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Align(
//                       alignment: Alignment.centerRight,
//                       child: BigText(
//                           text: 'miraculous myths',
//                           color: AppColors.maincolor)),
//                   SizedBox(
//                     width: Dimensions.height50,
//                     height: Dimensions.height50,
//                     // ignore: sort_child_properties_last
//                     child: IconButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const Search()),
//                         );
//                       },
//                       icon: Icon(
//                         Icons.search,
//                         color: const Color.fromARGB(255, 0, 0, 0),
//                         size: Dimensions.iconSearch,
//                       ),
//                     ),
//                   ),
//                   SizedBox(
//                     width: Dimensions.height50,
//                     height: Dimensions.height50,
//                     // ignore: sort_child_properties_last
//                     child: IconButton(
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const Search()),
//                         );
//                       },
//                       icon: Icon(
//                         Icons.search,
//                         color: AppColors.maincolor,
//                         size: Dimensions.iconSearch,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             ListView.builder(
//               physics: const ScrollPhysics(parent: null),
//               shrinkWrap: true,
//               scrollDirection: Axis.vertical,
//               itemCount: name.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return GestureDetector(
//                   onTap: () {
//                     launch(links[index]);
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       height: Dimensions.height200,
//                       decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(10),
//                           border:
//                               Border.all(width: 2, color: AppColors.maincolor)),
//                       child: Container(
//                         margin: EdgeInsets.only(
//                             left: Dimensions.width20,
//                             right: Dimensions.width20,
//                             bottom: Dimensions.height10,
//                             top: Dimensions.height10),
//                         child: Column(
//                           children: [
//                             //image section
//                             ClipRRect(
//                               borderRadius: BorderRadius.circular(6),
//                               child: Image.asset(mainImage[index])),
                            
//                             //text container
//                             Expanded(
//                               child: Container(
//                                 child: Align(
//                                     alignment: Alignment.center,
//                                     child: HomeScreenText(
//                                       text: name[index],
//                                       color: AppColors.maincolor,
//                                     )),
//                               ),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ],
//         )));
//   }
// }
