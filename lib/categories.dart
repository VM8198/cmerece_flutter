import 'ViewAllProducts.dart';
import 'package:cmerce/header.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  final String value;
  Categories({Key key, this.value}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: header(context),
        body: Container(
          color: Colors.yellow,
          child: CustomScrollView(
            slivers: <Widget>[
              SliverAppBar(
                pinned: true,
                centerTitle: true,
                title: Text(
                  widget.value,
                  style: TextStyle(color: Colors.black),
                ),
                backgroundColor: Colors.white,
              ),
              ViewItems(),
            ],
          ),
        ));
  }
}
