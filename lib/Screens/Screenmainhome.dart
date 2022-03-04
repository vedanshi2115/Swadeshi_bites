import 'dart:ui';
import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';
import 'package:swadeshibites/HomePageSubScreen/BlogList.dart';
import 'package:swadeshibites/HomePageSubScreen/CategoriesList.dart';
import 'package:swadeshibites/HomePageSubScreen/FetureProductsList.dart';
import 'package:swadeshibites/HomePageSubScreen/TopSellerList.dart';
import 'package:swadeshibites/Module/authentication.dart';
import 'package:swadeshibites/HomePageSubScreen/CategoriesList.dart';
import 'package:swadeshibites/Screens/LoginScreen.dart';
import 'package:swadeshibites/Widget/Testimonials.dart';

class Screenmainhome extends StatefulWidget {
  const Screenmainhome(
      {Key key,
      ResultAllCategories Resultallcatagories,
      ResultAllCategories esultallcatagories})
      : super(key: key);

  @override
  _ScreenmainhomeState createState() => _ScreenmainhomeState();
}

class _ScreenmainhomeState extends State<Screenmainhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      drawer: Container(
        color: Colors.black,
      ),
      body: catagories(),
    );
  }

  Widget catagories() {
    return SingleChildScrollView(
      child: Container(
        color: Colors.grey[300],
        child: Column(
          children: [
            Container(
              decoration: boxdecoration(),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Categories",
                        textScaleFactor: 1.8,
                        style: style(),
                      ),
                    ],
                  ),
                  divider(),
                  CategoriesList(),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Column(
              children: [
                Container(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.all(10),
                    decoration: boxdecoration(),
                    padding: EdgeInsets.all(10),
                    child: Image(
                      image: AssetImage('assets/image/logoswadeshibites.png'),
                      fit: BoxFit.fill,
                    )),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: boxdecoration(),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Featured Products",
                        textScaleFactor: 1.5,
                        style: style(),
                      ),
                    ],
                  ),
                  divider(),
                  Column(
                    children: [
                      FetureProductsList(),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: boxdecoration(),
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Blog Post",
                        textScaleFactor: 1.5,
                        style: style(),
                      ),
                    ],
                  ),
                  divider(),
                  Column(
                    children: [
                      BlogList(),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              decoration: boxdecoration(),
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "Top Seller",
                        textScaleFactor: 1.5,
                        style: style(),
                      ),
                    ],
                  ),
                  divider(),
                  Column(
                    children: [
                      TopSellerList(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

divider() {
  return Divider(
    height: 35,
    thickness: 4,
    indent: 0,
    endIndent: 310,
    color: Color(0Xff319A29),
  );
}

boxdecoration() {
  return BoxDecoration(
    color: Colors.white,
    border: Border.all(color: Colors.grey[300], width: 2),
  );
}

style() {
  return TextStyle(fontWeight: FontWeight.w600);
}

  
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               decoration: boxdecoration(),
//               margin: EdgeInsets.all(10),
//               padding: EdgeInsets.all(10),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Text("Testimonials", textScaleFactor: 1.5, style: style())
//                     ],
//                   ),
//                   divider(),
//                   Testimonials()
//                 ],
//               ),
//             ),
//             Container(
//               decoration: boxdecoration(),
//               padding: EdgeInsets.all(10),
//               margin: EdgeInsets.all(10),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         "Featured Products",
//                         textScaleFactor: 1.5,
//                         style: style(),
//                       ),
//                     ],
//                   ),
//                   divider(),
//                   Column(
//                     children: [
//                       FetureProductsList(),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               decoration: boxdecoration(),
//               margin: EdgeInsets.all(10),
//               padding: EdgeInsets.all(10),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         "Blog Post",
//                         textScaleFactor: 1.5,
//                         style: style(),
//                       ),
//                     ],
//                   ),
                  // divider(),
                  // Column(
                  //   children: [
                  //     BlogList(),
                  //   ],
                  // ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               decoration: boxdecoration(),
//               padding: EdgeInsets.all(10),
//               margin: EdgeInsets.all(10),
//               child: Column(
//                 children: [
//                   Row(
//                     children: [
//                       Text(
//                         "Top Seller",
//                         textScaleFactor: 1.5,
//                         style: style(),
//                       ),
//                     ],
//                   ),
//                   divider(),
//                   Column(
//                     children: [
//                       TopSellerList(),
//                     ],
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(
//               height: 5,
//             ),
//             ScreenSlider(),
//             SizedBox(
//               height: 45,
//             ),
//             Column(
//               children: [
//                 Text(
//                   "Popular Brands",
//                   textScaleFactor: 2.5,
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Container(
//               height: 100,
//               child: BrandProductImagerow(),
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Column(
//               children: [
//                 Text(
//                   "Trending Products",
//                   textScaleFactor: 2.5,
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Container(
//               margin: EdgeInsets.all(10),
//               child: Container(
//                 child: TrendingProducts(),
//               ),
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             Column(
//               children: [
//                 Text(
//                   "Categories Deals",
//                   textScaleFactor: 2.5,
//                 ),
//                 CategoriesDetailList(),
//               ],
//             ),
//             SizedBox(
//               height: 50,
//             ),
//             ElevatedButton(
//               onPressed: () {},
//               child: Text("View All Categories "),
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             HomeImage(),
//             SizedBox(
//               height: 25,
//             ),
//             Container(
//               padding: EdgeInsets.all(10),
//               child: Column(
//                 children: [CaurosalProductList()],
//               ),
//             ),
//             SizedBox(
//               height: 30,
//             ),
//             Column(
//               children: [
//                 Text(
//                   "Brand Products",
//                   textScaleFactor: 3,
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 20,
//             ),
//             Container(
//               decoration: boxdecoration(),
//               margin: EdgeInsets.all(10),
//               padding: EdgeInsets.all(10),
//               child: Column(
//                 children: [
//                   BrandProductImage(),
//                   Divider(
//                     indent: 20,
//                     endIndent: 20,
//                     height: 5,
//                   ),
//                   ProductGrideList(),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }



//   divider() {
//     return Divider(
//       height: 35,
//       thickness: 4,
//       indent: 0,
//       endIndent: 310,
//       color: Color(0Xff319A29),
//     );
//   }

//   popularbrandslist() {
//     return ListView.builder(
//         padding: EdgeInsets.all(8),
//         itemCount: popularbrand.length,
//         itemBuilder: (BuildContext context, int index) {
//           return Container(
//             height: 50,
//             child: Center(
//               child: Image.asset(popularbrand[index]),
//             ),
//           );
//         });
//   }

//   trendingproducts() {
//     return ListView.builder(
//         shrinkWrap: true,
//         physics: NeverScrollableScrollPhysics(),
//         padding: EdgeInsets.all(8),
//         itemCount: 8,
//         itemBuilder: (BuildContext context, int index) {
//           return ProductGrideList();
//         });
//   }

//   listdata() {
//     return ListView.separated(
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       itemCount: resultallcategories.length,
//       separatorBuilder: (context, index) => fdoted(),
//       itemBuilder: (context, index) {
//         return ListTile(
//           title: Text(resultallcategories[index].categoryName),
//           onTap: () {},
//         );
//       },
//     );
//   }

//   featureproductList() {
//     return ListView.separated(
//       shrinkWrap: true,
//       physics: NeverScrollableScrollPhysics(),
//       itemCount: 4,
//       separatorBuilder: (context, index) => fdoted(),
//       itemBuilder: (context, index) {
//         return FetureProductsList();
//       },
//     );
//   }

//   fdoted() {
//     return FDottedLine(
//       color: Colors.grey,
//       width: 180.0,
//       strokeWidth: 1.0,
//       dottedLength: 5.0,
//       space: 1.0,
//     );
//   }

 