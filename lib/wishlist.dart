import 'package:cmerce/header.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';

class WishList extends StatefulWidget {
  @override
  _WishListState createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(context),
        drawer: MyDrawer(),
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              title: Text("WishList", style: TextStyle(color: Colors.black),),
              centerTitle: true,
              backgroundColor: Colors.white,
              elevation: 10,
            ),
            Items()
          ],
        ));
  }
}

class Items extends StatefulWidget {
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> images = new List<dynamic>();
    images.insert(0, AssetImage('assets/images/slide_part_2.jpg'));
    images.insert(1, AssetImage('assets/images/slide_part_3.jpg'));
    images.insert(2, AssetImage('assets/images/slide_part_4.jpg'));
    images.insert(1, AssetImage('assets/images/slide_part_2.jpg'));
    images.insert(2, AssetImage('assets/images/slide_part_3.jpg'));
    images.insert(1, AssetImage('assets/images/slide_part_4.jpg'));
    images.insert(2, AssetImage('assets/images/slide_part_2.jpg'));
    images.insert(1, AssetImage('assets/images/slide_part_3.jpg'));
    images.insert(2, AssetImage('assets/images/slide_part_4.jpg'));
    images.insert(2, AssetImage('assets/images/slide_part_2.jpg'));

    return SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,         
        ),
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
                decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 1.0, color: Colors.grey),
                bottom: BorderSide(width: 1.0, color: Colors.grey),
                right: BorderSide(width: 1.0, color: Colors.grey),
                left: BorderSide(width: 1.0, color: Colors.grey),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                       ClipOval(
                          child: Material(
                            child: InkWell(
                              child: SizedBox(
                                  width: 30, height: 30, child: Icon(Icons.close)),
                              onTap: () {},
                            ),
                          ),
                        ),
                        Spacer(),
                        ClipOval(
                          child: Material(
                            color: Colors.blue, // button color
                            child: InkWell(
                              child: SizedBox(
                                  width: 30, height: 30, child: Icon(Icons.menu)),
                              onTap: () {},
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height/8,
                      width: MediaQuery.of(context).size.width/4,
                      child: Image(image: images[index],fit: BoxFit.fill,),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,                  
                    children: <Widget>[
                      Text("Hello World !!!", style: TextStyle(fontSize: 15),)
                    ],
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,                  
                  children: <Widget>[
                    Text("Rs. 89", style: TextStyle(fontSize: 15))
                  ],
                )
              ],
            ),
          );
        }, 
        childCount: images.length));
  }
}
