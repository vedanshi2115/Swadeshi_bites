import 'package:flutter/material.dart';

class CategoriesList extends StatefulWidget {
  const CategoriesList({Key key}) : super(key: key);

  @override
  _CategoriesListState createState() => _CategoriesListState();
}

class _CategoriesListState extends State<CategoriesList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        ListTile(title: Text('List 1')),
        ListTile(title: Text('List 2')),
        ListTile(title: Text('List 3')),
      ],
    );
  }
}
