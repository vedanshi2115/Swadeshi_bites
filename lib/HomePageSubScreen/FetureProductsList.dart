import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';

class FetureProductsList extends StatefulWidget {
  const FetureProductsList({Key key}) : super(key: key);

  @override
  _FetureProductsListState createState() => _FetureProductsListState();
}

class _FetureProductsListState extends State<FetureProductsList> {
  List<ResultFeatureProducts> resultfeatureproducts = [
    ResultFeatureProducts(
      name: " MiniBhakharwadi",
      price: "200",
    ),
    ResultFeatureProducts(
      name: " MiniBhakharwadi",
      price: "200",
    ),
    ResultFeatureProducts(
      name: " MiniBhakharwadi",
      price: "200",
    ),
    ResultFeatureProducts(
      name: " MiniBhakharwadi",
      price: "200",
    ),
    ResultFeatureProducts(
      name: " MiniBhakharwadi",
      price: "200",
    ),
    ResultFeatureProducts(name: " MiniBhakharwadi", price: "200", image: ""),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: resultfeatureproducts.length,
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
                        resultfeatureproducts[index].name,
                        textScaleFactor: 1.2,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            "₹" + resultfeatureproducts[index].price,
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

class ResultFeatureProducts {
  String name;
  String price;
  String image;
  ResultFeatureProducts({
    this.name,
    this.price,
    this.image,
  });
}
