import 'package:cmerce/cart.dart';
import 'package:cmerce/wishlist.dart';
import 'package:flutter/material.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return header(context);
  }
}

AppBar header(context) {
  return AppBar(
    title: Center(
      child: Text("CMERCE"),
    ),
    backgroundColor: Colors.blue[900],
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.favorite_border),
        onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => WishList()),
        );
        },
      ),
      IconButton(
        icon: Icon(Icons.add_shopping_cart),
        onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Cart()),
        );
        },
      ),
    ],
  );
}
