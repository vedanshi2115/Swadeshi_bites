import 'package:fdottedline/fdottedline.dart';
import 'package:flutter/material.dart';

class BlogList extends StatefulWidget {
  const BlogList({Key key}) : super(key: key);

  @override
  State<BlogList> createState() => _BlogListState();
}

class _BlogListState extends State<BlogList> {
  List<ResultBlogs> resultblog = [
    ResultBlogs(date: "May 19, 2021", imagename: "Mixed dry fruits"),
    ResultBlogs(date: "May 19, 2021", imagename: "Mixed dry fruits"),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: resultblog.length,
      separatorBuilder: (context, index) => fdoted(),
      itemBuilder: (context, index) {
        return Container(
          padding: EdgeInsets.all(10),
          child: ListTile(
            leading: Container(
              height: 50,
              width: 50,
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
                child: Image(
                  image: AssetImage('assets/image/logoswadeshibites.png'),
                ),
              ),
            ),
            title: Text(
              resultblog[index].date + "  " + resultblog[index].imagename,
              style: TextStyle(fontWeight: FontWeight.w600),
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

class ResultBlogs {
  String image;
  String date;
  String imagename;
  ResultBlogs({
    this.image,
    this.date,
    this.imagename,
  });
}
