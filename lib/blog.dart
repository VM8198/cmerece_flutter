import 'package:cmerce/header.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';

class Blog extends StatefulWidget {
  @override
  _BlogState createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(context),
        drawer: MyDrawer(),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              centerTitle: true,
              title: Text("Our Blog", style: TextStyle(color: Colors.black),), 
              leading: Icon(Icons.border_color, size: 25,color: Colors.black,),
              actions: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      GestureDetector(onTap: (){}, child: Text("View All", style: TextStyle(color: Colors.blue, fontSize: 20, fontWeight: FontWeight.bold),)),
                    ],
                  ),
                ),
              ],    
              backgroundColor: Colors.white,
            ),
            Details()
          ]
        ));
  }
}

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> images = new List<dynamic>();
    images.insert(0, AssetImage('assets/images/blog_1.jpg'));
    images.insert(1, AssetImage('assets/images/blog_2.jpg'));
    images.insert(2, AssetImage('assets/images/blog_1.jpg'));
    images.insert(3, AssetImage('assets/images/blog_2.jpg'));

    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index){
      return Container(
            height: MediaQuery.of(context).size.height/3,
            decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: ColorFilter.mode(Colors.black.withOpacity(1), BlendMode.dstATop),
            image: images[index],
            fit: BoxFit.cover,
          ),
        ),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Row(
              children: <Widget>[
                Text("New Brand Arrivals", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold)),
                Spacer(),
                Text("Read More", style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold))
              ],
            )),
          ));
    },childCount: images.length)); 
  }
}
