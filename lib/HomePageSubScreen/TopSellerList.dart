import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';

class TopSellerList extends StatefulWidget {
  const TopSellerList({Key key}) : super(key: key);

  @override
  State<TopSellerList> createState() => _TopSellerListState();
}

class _TopSellerListState extends State<TopSellerList> {
  List<ResultTopSeller> resulttopseller = [
    ResultTopSeller(
      name: " MiniBhakharwadi",
      price: "200",
    ),
    ResultTopSeller(
      name: " MiniBhakharwadi",
      price: "200",
    ),
    ResultTopSeller(
      name: " MiniBhakharwadi",
      price: "200",
    ),
    ResultTopSeller(
      name: " MiniBhakharwadi",
      price: "200",
    ),
    ResultTopSeller(
      name: " MiniBhakharwadi",
      price: "200",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: resulttopseller.length,
      separatorBuilder: (context, index) => fdoted(),
      itemBuilder: (context, index) {
        return GestureDetector(
          // onTap: () {
          //   Navigator.push(
          //     context,
          //     MaterialPageRoute(
          //       builder: (context) => Screen1(
          //         unitvalue: resultfeatureproducts[index].unitValue.toString() +
          //             resultfeatureproducts[index].unitName,
          //         name: resultfeatureproducts[index].name,
          //         name1: resultfeatureproducts[index].price,
          //         image:
          //             "http://alderwood.site.webbrainstechnologies.com/product_images/" +
          //                 resultfeatureproducts[index].defaultImage,
          //       ),
          //     ),
          //   );
          // },
          child: Container(
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        resulttopseller[index].name,
                        textScaleFactor: 1.2,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "₹" + resulttopseller[index].price,
                            textScaleFactor: 1.23,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.black,
                  width: 0.5,
                  child: VerticalDivider(
                    thickness: 2,
                    width: 20,
                    indent: 10,
                    endIndent: 100,
                  ),
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(10),
                    height: 140,
                    child: Image(
                      image: AssetImage('assets/image/logoswadeshibites.png'),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }

  fdoted() {
    return FDottedLine(
      color: Colors.grey,
      width: 180.0,
      strokeWidth: 1.0,
      dottedLength: 5.0,
      space: 1.0,
    );
  }
}

class ResultTopSeller {
  String name;
  String price;
  String image;
  ResultTopSeller({
    this.name,
    this.price,
    this.image,
  });
}
