import 'package:flutter/material.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({Key key}) : super(key: key);

  @override
  _CategoriesListState createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  List<ResultAllCategories> resultallcatagories = [
    ResultAllCategories(
      name: "pickles",
    ),
    ResultAllCategories(
      name: "pickles",
    ),
    ResultAllCategories(
      name: "pickles",
    ),
    ResultAllCategories(
      name: "pickles",
    ),
    ResultAllCategories(
      name: "pickles",
    ),
    ResultAllCategories(
      name: "pickles",
    ),
    ResultAllCategories(
      name: "pickles",
    ),
    ResultAllCategories(
      name: "pickles",
    ),
    ResultAllCategories(
      name: "pickles",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: resultallcatagories.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(resultallcatagories[index].name),
            onTap: () {
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Screenhome1()),
              // );
            },
          );
        });
  }
}

class ResultAllCategories {
  String name;

  ResultAllCategories({
    this.name,
  });
}
