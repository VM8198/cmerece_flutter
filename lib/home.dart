import 'package:cmerce/ViewAllProducts.dart';
import 'package:cmerce/header.dart';
import 'package:cmerce/productDetails.dart';
import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:carousel_pro/carousel_pro.dart';

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
          height: MediaQuery.of(context).size.height / 6,
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
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Container(
                      child: GestureDetector(
                          onTap: () {
                            _goToProductDetails();
                          },
                          child: Image(
                            image: images[index],
                            fit: BoxFit.fill,
                          )),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white, width: 10),
                      ),
                    ),
                  ));
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
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue[900],
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: TextFormField(
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
  @override
  Widget build(BuildContext context) {
    List<dynamic> images = new List<dynamic>();
    images.insert(0, AssetImage('assets/images/blog_1.jpg'));
    images.insert(1, AssetImage('assets/images/blog_2.jpg'));
    images.insert(2, AssetImage('assets/images/product_1.jpg'));
    images.insert(3, AssetImage('assets/images/blog_1.jpg'));
    images.insert(4, AssetImage('assets/images/blog_2.jpg'));
    images.insert(5, AssetImage('assets/images/product_1.jpg'));
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
                        child: SizedBox(
                          height: MediaQuery.of(context).size.height / 10.5,
                          width: MediaQuery.of(context).size.width / 6,
                          child: Image(
                            image: images[index],
                            fit: BoxFit.fill,
                          ),
                        ))
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
  @override
  Widget build(BuildContext context) {
    List<dynamic> images = new List<dynamic>();
    images.insert(0, AssetImage('assets/images/slide_part_2.jpg'));
    images.insert(1, AssetImage('assets/images/slide_part_3.jpg'));
    images.insert(2, AssetImage('assets/images/slide_part_4.jpg'));

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
      child: SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          width: MediaQuery.of(context).size.width,
          child: Carousel(
            images: [images[0], images[1], images[2]],
            dotSpacing: 15.0,
            dotBgColor: Colors.purple.withOpacity(0.0),
            borderRadius: false,
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
              padding: EdgeInsets.all(8.0),
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
                    child: Text("View More",
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
