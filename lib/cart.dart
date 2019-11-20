import 'package:cmerce/header.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
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
              title: Text("Cart", style: TextStyle(color: Colors.black),),              
              backgroundColor: Colors.white,
            ),
            CartItems(),
            TotalBox(),
          ],
        ));
  }
}

class CartItems extends StatefulWidget {
  @override
  _CartItemsState createState() => _CartItemsState();
}

class _CartItemsState extends State<CartItems> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> images = new List<dynamic>();
    images.insert(0, AssetImage('assets/images/slide_part_2.jpg'));
    images.insert(1, AssetImage('assets/images/slide_part_3.jpg'));
    images.insert(2, AssetImage('assets/images/slide_part_4.jpg'));
    images.insert(1, AssetImage('assets/images/slide_part_2.jpg'));
    images.insert(2, AssetImage('assets/images/slide_part_3.jpg'));
    images.insert(1, AssetImage('assets/images/slide_part_4.jpg'));

    return SliverList(
        delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
      return Container(
          child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                SizedBox(
                  width: MediaQuery.of(context).size.width / 4,
                  height: MediaQuery.of(context).size.height / 5,
                  child: Image(
                    image: images[index],
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 5,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Leather Backpack",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1),
                          child: Text("One Size"),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 1),
                          child: Text("One Color"),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 7,
                  height: MediaQuery.of(context).size.height / 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[Text("Qnt:"), Text("1")],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 5,
                  height: MediaQuery.of(context).size.height / 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Price:",
                        textAlign: TextAlign.left,
                      ),
                      Text("Rs. 399")
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Center(
              child: Row(
                children: <Widget>[
                  SizedBox(
                    child: Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width / 1.1,
                      decoration:
                          BoxDecoration(color: Colors.grey.withOpacity(0.5)),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ));
    }, childCount: 2));
  }
}

class TotalBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return Container(
          child: Column(
            children: <Widget>[
              Row(
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 8, left: 8),
                      child: Row(
                        children: <Widget>[Text("Promo code: ", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: Row(
                        children: <Widget>[
                          SizedBox(
                            height: 60,
                            width: MediaQuery.of(context).size.width/2.5,
                            child: TextFormField(
                            // controller: promocodeController,
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(5)))),
                          ),
                          )
                          
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text("Total: ", style: TextStyle(fontWeight: FontWeight.bold),), Text("Rs. 5226", style: TextStyle(fontSize: 20),)
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Text("Free shipping over Rs.200", style: TextStyle(fontStyle: FontStyle.italic),)
                      ],
                    )
                    ],
                ),
              ),              
            ],
          ),
          Padding(
            padding: EdgeInsets.all(8),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    // _login(userNameController.text,
                    //     passwordController.text);
                  },
                  shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                          // side: BorderSide(color: Colors.red)
                  ),
                  child: Text(
                    "Checkout",
                    style: TextStyle(
                        color: Colors.black, fontSize: 20),
                  ))),
          ),
            ],
          )
           
        );
      }, childCount: 1),
    );
  }
}
