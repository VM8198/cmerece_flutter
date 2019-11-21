import 'package:cmerce/header.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';

class ViewAllItems extends StatefulWidget {
  @override
  _ViewAllItemsState createState() => _ViewAllItemsState();
}

class _ViewAllItemsState extends State<ViewAllItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(context),
        drawer: MyDrawer(),
        body: Container(
          color: Colors.yellow,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                  pinned: true,
                  leading: Padding(
                     padding: EdgeInsets.all(8.0),
                     child: Icon(Icons.apps, color: Colors.black, size: 30,),
                   ),
                   title: Padding(
                     padding: EdgeInsets.only(left: 20),
                     child: Row(
                        children: <Widget>[
                          Icon(Icons.sort, color: Colors.black, size: 20,),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text("Sort By", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold ),),
                          )
                        ],
                      ),
                   ),
                   centerTitle: true,
                actions: <Widget>[                   
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.filter_frames, color: Colors.black, size: 20,),
                        Padding(
                          padding: EdgeInsets.only(left: 5, right: 8),
                          child: Text("Filter", style: TextStyle(color: Colors.black, fontSize: 20,fontWeight: FontWeight.bold ),),
                        )
                      ],
                    )
                  ),
                ],
                backgroundColor: Colors.white,
              ),
              Container(
                child: ViewItems(),
              )              
            ],
          ),
        ));
  }
}


class ViewItems extends StatefulWidget {
  @override
  _ViewItemsState createState() => _ViewItemsState();
}

class _ViewItemsState extends State<ViewItems> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> images = new List<dynamic>();
    images.insert(0, AssetImage('assets/images/product_1.jpg'));
    images.insert(1, AssetImage('assets/images/product_2.jpg'));
    images.insert(2, AssetImage('assets/images/product_3.jpg'));
    images.insert(1, AssetImage('assets/images/product_4.jpg'));
    images.insert(2, AssetImage('assets/images/product_1.jpg'));
    images.insert(1, AssetImage('assets/images/product_2.jpg'));
    images.insert(1, AssetImage('assets/images/product_2.jpg'));
    images.insert(2, AssetImage('assets/images/product_3.jpg'));
    images.insert(1, AssetImage('assets/images/product_4.jpg'));
    images.insert(2, AssetImage('assets/images/product_1.jpg'));
    images.insert(1, AssetImage('assets/images/product_2.jpg'));

    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2
      ),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index){
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
              child: Image(image: images[index],fit: BoxFit.fill,),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 10),
              ),
            ),
        );        
      },childCount: images.length),
    );
  }
}
