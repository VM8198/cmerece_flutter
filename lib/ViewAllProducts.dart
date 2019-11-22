import 'package:cmerce/header.dart';
import 'package:cmerce/productDetails.dart';
import 'package:flutter/material.dart';

class ViewAllItems extends StatefulWidget {
  @override
  _ViewAllItemsState createState() => _ViewAllItemsState();
}

class _ViewAllItemsState extends State<ViewAllItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(context),
        // drawer: MyDrawer(),
        body: Container(
          color: Colors.yellow,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                leading: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.apps,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
                title: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.sort,
                        color: Colors.black,
                        size: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Text(
                          "Sort By",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                centerTitle: true,
                actions: <Widget>[
                  Padding(
                      padding: EdgeInsets.only(top: 8, right: 8, bottom: 8),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.filter_frames,
                            color: Colors.black,
                            size: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 5, right: 8),
                            child: Text(
                              "Filter",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      )),
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
  _goToProductDetails() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProductiDetails()),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> images = new List<dynamic>();
    images.insert(0, AssetImage('assets/images/mens-watch/w1.jpeg'));
    images.insert(1, AssetImage('assets/images/Laptops/l1.jpeg'));
    images.insert(2, AssetImage('assets/images/kitchen/k1.jpeg'));
    images.insert(3, AssetImage('assets/images/product_4.jpg'));
    images.insert(4, AssetImage('assets/images/mens-watch/w2.jpeg'));
    images.insert(5, AssetImage('assets/images/Laptops/l2.jpeg'));
    images.insert(6, AssetImage('assets/images/kitchen/k2.jpeg'));
    images.insert(7, AssetImage('assets/images/product_2.jpg'));

    return SliverGrid(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
              decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 0.5, color: Colors.white),
                bottom: BorderSide(width: 0.5, color: Colors.white),
                right: BorderSide(width: 0.5, color: Colors.white),
                left: BorderSide(width: 0.5, color: Colors.white),
              )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 8, right: 8, left: 8, bottom: 2),
                        child: GestureDetector(
                          onTap: () {
                            _goToProductDetails();
                          },
                          child: Container(
                              height: MediaQuery.of(context).size.height / 5.5,
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: Image(
                                image: images[index],
                                fit: BoxFit.fill,
                              )),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Container(
                            child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Men's watches",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Rs. 500",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ],
                            ),
                          ],
                        )),
                      ),
                    ],
                  )
                ],
              ),
            );
      }, childCount: images.length),
    );
  }
}
