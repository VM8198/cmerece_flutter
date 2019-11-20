import 'package:flutter/material.dart';
import 'drawer.dart';

class Offers extends StatefulWidget {
  @override
  _OffersState createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("CMERCE"),
          ),
          backgroundColor: Colors.blue[900],
          actions: <Widget>[
            // action button
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {
                // _select(choices[0]);
              },
            ),
            // action button
            IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                // _select(choices[1]);
              },
            ),
          ],
          bottom: TabBar(
            isScrollable: true,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.white,
            tabs: [
              Container(
                child: Tab(
                  text: "Deals of the day",
                ),
                // width: 40,
              ),
              Container(
                child: Tab(text: "Fashion"),
                // width: 20,
              ),
              Container(
                child: Tab(text: "Home & Living"),
                // width: 20,
              ),
              Container(
                child: Tab(text: "Kids"),
                // width: 20,
              ),
            ],
          ),
        ),
        drawer: MyDrawer(),
        body: TabBarView(
          children: [DealsOfTheDay(), Fashion(), HomeLiving(), Kids()],
        ),
      ),
    );
  }
}

class DealsOfTheDay extends StatefulWidget {
  @override
  _DealsOfTheDayState createState() => _DealsOfTheDayState();
}

class _DealsOfTheDayState extends State<DealsOfTheDay> {
  @override
  Widget build(BuildContext context) {
    List<dynamic> images = new List<dynamic>();
    images.insert(0, AssetImage('assets/images/blog_1.jpg'));
    images.insert(1, AssetImage('assets/images/blog_2.jpg'));
    images.insert(2, AssetImage('assets/images/product_1.jpg'));

    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(top: 10, left: 15, right: 15),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(10.0),
                        child: Image(image: images[index], fit: BoxFit.fill),
                      )          
                  ),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[Text("Children's Arrivals", style: TextStyle(fontWeight: FontWeight.bold),)],
                        ),
                        Row(
                          children: <Widget>[Text("Offer starts from April 22-23")],
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: <Widget>[
                        FlatButton(
                            color: Colors.yellow,
                            onPressed: () {
                              // _login(userNameController.text,
                              //     passwordController.text);
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(40.0),
                              // side: BorderSide(color: Colors.red)
                            ),
                            child: Text(
                              "Shop Now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
      itemCount: images.length,
    );
  }
}

class Fashion extends StatefulWidget {
  @override
  _FashionState createState() => _FashionState();
}

class _FashionState extends State<Fashion> {
  @override
    Widget build(BuildContext context) {
    List<dynamic> images = new List<dynamic>();
    images.insert(0, AssetImage('assets/images/blog_1.jpg'));
    images.insert(1, AssetImage('assets/images/blog_2.jpg'));
    images.insert(2, AssetImage('assets/images/product_1.jpg'));

    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(top: 10, left: 15, right: 15),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(10.0),
                        child: Image(image: images[index], fit: BoxFit.fill),
                      )          
                  ),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[Text("Children's Arrivals", style: TextStyle(fontWeight: FontWeight.bold),)],
                        ),
                        Row(
                          children: <Widget>[Text("Offer starts from April 22-23")],
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: <Widget>[
                        FlatButton(
                            color: Colors.yellow,
                            onPressed: () {
                              // _login(userNameController.text,
                              //     passwordController.text);
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(40.0),
                              // side: BorderSide(color: Colors.red)
                            ),
                            child: Text(
                              "Shop Now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
      itemCount: images.length,
    );
  }
}

class HomeLiving extends StatefulWidget {
  @override
  _HomeLivingState createState() => _HomeLivingState();
}

class _HomeLivingState extends State<HomeLiving> {
  @override
    Widget build(BuildContext context) {
    List<dynamic> images = new List<dynamic>();
    images.insert(0, AssetImage('assets/images/blog_1.jpg'));
    images.insert(1, AssetImage('assets/images/blog_2.jpg'));
    images.insert(2, AssetImage('assets/images/product_1.jpg'));

    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(top: 10, left: 15, right: 15),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(10.0),
                        child: Image(image: images[index], fit: BoxFit.fill),
                      )          
                  ),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[Text("Children's Arrivals", style: TextStyle(fontWeight: FontWeight.bold),)],
                        ),
                        Row(
                          children: <Widget>[Text("Offer starts from April 22-23")],
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: <Widget>[
                        FlatButton(
                            color: Colors.yellow,
                            onPressed: () {
                              // _login(userNameController.text,
                              //     passwordController.text);
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(40.0),
                              // side: BorderSide(color: Colors.red)
                            ),
                            child: Text(
                              "Shop Now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
      itemCount: images.length,
    );
  }
}

class Kids extends StatefulWidget {
  @override
  _KidsState createState() => _KidsState();
}

class _KidsState extends State<Kids> {
  @override
   Widget build(BuildContext context) {
    List<dynamic> images = new List<dynamic>();
    images.insert(0, AssetImage('assets/images/blog_1.jpg'));
    images.insert(1, AssetImage('assets/images/blog_2.jpg'));
    images.insert(2, AssetImage('assets/images/product_1.jpg'));

    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.only(top: 10, left: 15, right: 15),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                      child: ClipRRect(
                        borderRadius: new BorderRadius.circular(10.0),
                        child: Image(image: images[index], fit: BoxFit.fill),
                      )          
                  ),
                ),
                Row(
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[Text("Children's Arrivals", style: TextStyle(fontWeight: FontWeight.bold),)],
                        ),
                        Row(
                          children: <Widget>[Text("Offer starts from April 22-23")],
                        )
                      ],
                    ),
                    Spacer(),
                    Column(
                      children: <Widget>[
                        FlatButton(
                            color: Colors.yellow,
                            onPressed: () {
                              // _login(userNameController.text,
                              //     passwordController.text);
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(40.0),
                              // side: BorderSide(color: Colors.red)
                            ),
                            child: Text(
                              "Shop Now",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ))
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
      itemCount: images.length,
    );
  }
}
