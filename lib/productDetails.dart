import 'package:cmerce/header.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ProductiDetails extends StatefulWidget {
  @override
  _ProductiDetailsState createState() => _ProductiDetailsState();
}

class _ProductiDetailsState extends State<ProductiDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(context), body: Details());
  }
}

class Details extends StatefulWidget {
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  int counter = 0;

  _addItem() {
    setState(() {
      counter++;
    });
  }

  _removeItem() {
    if(counter != 0){
      setState(() {
        counter--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> images = new List<dynamic>();
    images.insert(0, AssetImage('assets/images/slide_part_2.jpg'));
    images.insert(1, AssetImage('assets/images/slide_part_2.jpg'));
    images.insert(2, AssetImage('assets/images/slide_part_2.jpg'));

    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                child: SizedBox(
                    height: MediaQuery.of(context).size.height / 2.5,
                    width: MediaQuery.of(context).size.width,
                    child: Carousel(
                      images: [images[0], images[1], images[2]],
                      dotSpacing: 15.0,
                      autoplay: false,
                      dotBgColor: Colors.purple.withOpacity(0.0),
                      borderRadius: false,
                    )),
              )
            ],
          ),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Prisma Watch",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 1.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Rs. 58800",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Color",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Material(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 30,
                              width: 30,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.grey),
                            ),
                          ),
                        ),
                        Material(
                          child: InkWell(
                            onTap: () {
                              
                            },
                            child: Container(
                              height: 30,
                              width: 30,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.yellow[600]),
                            ),
                          ),
                        ),
                        Material(
                          child: InkWell(
                            onTap: () {},
                            child: Container(
                              height: 30,
                              width: 30,
                              margin: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Specifications",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "100cm * 100cm * 100cm",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              child: Icon(
                                Icons.remove,
                                color: Colors.grey,
                              ),
                              onTap: _removeItem,
                            ),
                            Container(
                                height: 30,
                                width: 30,
                                margin: EdgeInsets.only(left: 10, right: 10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(color: Colors.grey)),
                                child: Center(
                                  child: Text('$counter'),
                                )),
                            GestureDetector(
                              child: Icon(
                                Icons.add,
                                color: Colors.grey,
                              ),
                              onTap: _addItem,
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 2),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: FlatButton(
                                  color: Colors.yellow,
                                  onPressed: () {
                                    Fluttertoast.showToast(
                                        msg: "Item Added To Cart",
                                        toastLength: Toast.LENGTH_SHORT,
                                        gravity: ToastGravity.BOTTOM,
                                        timeInSecForIos: 1,
                                        textColor: Colors.white,
                                        fontSize: 8
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.circular(10.0),
                                  ),
                                  child: Text(
                                    "Add To Cart",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  )),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: SizedBox(
                              height: 40,
                              width: MediaQuery.of(context).size.width / 2.5,
                              child: FlatButton(
                                  color: Colors.lightBlue[200],
                                  onPressed: () {
                                    // _login(userNameController.text,
                                    // passwordController.text);
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                    // side: BorderSide(color: Colors.red)
                                  ),
                                  child: Text(
                                    "Buy Now",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  )),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
