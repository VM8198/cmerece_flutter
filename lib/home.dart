import 'package:cmerce/ViewAllProducts.dart';
import 'package:cmerce/categories.dart';
import 'package:cmerce/header.dart';
import 'package:cmerce/offers.dart';
import 'package:cmerce/productDetails.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';

class MainSceen extends StatefulWidget {
  @override
  _MainSceenState createState() => _MainSceenState();
}

class _MainSceenState extends State<MainSceen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: header(context), drawer: MyDrawer(), body: Body());
  }
}

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
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

    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          automaticallyImplyLeading: false,
          titleSpacing: 0.0,
          title: SearchBox(),
          pinned: true,
        ),
        SliverToBoxAdapter(
            child: SizedBox(
          height: MediaQuery.of(context).size.height / 6.5,
          child: HorizontalList(),
        )),
        SliverList(
          delegate: SliverChildListDelegate([CarouselSlider()]),
        ),
        SliverList(
          delegate: SliverChildListDelegate([ViewMoreItems()]),
        ),
        SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 0.0,
              crossAxisSpacing: 0.0,
            ),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                color: Colors.yellow,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: .5),
                  ),
                  child: Column(
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
                                  height:
                                      MediaQuery.of(context).size.height / 5,
                                  width:
                                      MediaQuery.of(context).size.width / 2.5,
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
                ),
              );
            }, childCount: images.length)),
      ],
    );
  }
}

class SearchBox extends StatefulWidget {
  @override
  _SearchBoxState createState() => _SearchBoxState();
}

class _SearchBoxState extends State<SearchBox> {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[900],
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: SimpleAutoCompleteTextField(
              key: GlobalKey<AutoCompleteTextFieldState<String>>(),
              suggestions: [
                "Apple",
                "Armidillo",
                "Actual",
                "Actuary",
                "America",
                "Argentina",
                "Australia",
                "Antarctica",
                "Blueberry",
              ],
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search),
                  hintText: "Search products more",
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)))),
            ),
          ),
        ));
  }
}

class HorizontalList extends StatefulWidget {
  @override
  _HorizontalListState createState() => _HorizontalListState();
}

class _HorizontalListState extends State<HorizontalList> {
  _goToCategories(String categoryName) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Categories(value: categoryName)),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> images = new List<dynamic>();
    images.insert(
        0, AssetImage('assets/images/banner/banner_slider_image.jpg'));
    images.insert(1, AssetImage('assets/images/kids/kids.jpeg'));
    images.insert(2, AssetImage('assets/images/fashion/beauty.jpeg'));
    images.insert(3, AssetImage('assets/images/fashion/sports.jpeg'));
    images.insert(4, AssetImage('assets/images/fashion/home.jpeg'));
    images.insert(
        5, AssetImage('assets/images/banner/banner_slider_image.jpg'));
    images.insert(6, AssetImage('assets/images/kids/kids.jpeg'));
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.all(8.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    ClipRRect(
                        borderRadius: BorderRadius.circular(100.0),
                        child: GestureDetector(
                          onTap: () {
                            _goToCategories("Cloths");
                          },
                          child: SizedBox(
                            height: MediaQuery.of(context).size.height / 11,
                            width: MediaQuery.of(context).size.width / 6,
                            child: Image(
                              image: images[index],
                              fit: BoxFit.fill,
                            ),
                          ),
                        )),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    children: <Widget>[Text("Cloths")],
                  ),
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

class CarouselSlider extends StatefulWidget {
  @override
  _CarouselSliderState createState() => _CarouselSliderState();
}

class _CarouselSliderState extends State<CarouselSlider> {
  _goToOffers() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Offers()),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<dynamic> images = new List<dynamic>();
    images.insert(0, AssetImage('assets/images/banner/banner_1.jpeg'));
    images.insert(1, AssetImage('assets/images/banner/banner_2.jpeg'));
    images.insert(2, AssetImage('assets/images/banner/banner_3.jpeg'));
    images.insert(3, AssetImage('assets/images/banner/banner_4.jpg'));
    images.insert(4, AssetImage('assets/images/banner/banner_5.jpeg'));
    images.insert(5, AssetImage('assets/images/banner/banner_6.jpeg'));

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          child: GestureDetector(
            onTap: () {
              _goToOffers();
            },
            child: Carousel(
              images: [
                images[0],
                images[1],
                images[2],
                images[3],
                images[4],
                images[5]
              ],
              boxFit: BoxFit.fill,
              dotSpacing: 15.0,
              dotBgColor: Colors.purple.withOpacity(0.0),
              borderRadius: false,
            ),
          )),
    );
  }
}

class ViewMoreItems extends StatefulWidget {
  @override
  _ViewMoreItemsState createState() => _ViewMoreItemsState();
}

class _ViewMoreItemsState extends State<ViewMoreItems> {
  _gotoViewMore() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ViewAllItems()));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5),
      child: Container(
        color: Colors.yellow,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 8, right: 10, left: 10, bottom: 8),
              child: Row(
                children: <Widget>[
                  Text("New Products",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 20)),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      _gotoViewMore();
                    },
                    child: Text("View All",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontSize: 20)),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
