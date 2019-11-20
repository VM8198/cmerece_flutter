import 'package:cmerce/drawer.dart';
import 'package:cmerce/header.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header(context),
      drawer: MyDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[ProfilePhoto(), Desc(), WishListItemsCount()],
      ),
    );
  }
}

class ProfilePhoto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.8,
      color: Colors.black,
      child: Image(
        image: AssetImage('assets/images/slide_part_3.jpg'),
        fit: BoxFit.fill,
      ),
    );
  }
}

class Desc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    "Elain Godfrey",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Text("New York, 012345", style: TextStyle(fontSize: 15))
                ],
              )
            ],
          ),
          Spacer(),
          Column(
            children: <Widget>[
              FlatButton(
                  color: Colors.blue[200],
                  onPressed: () {
                    // _login(userNameController.text,
                    //     passwordController.text);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: Text(
                    "Edit Account",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}

class WishListItemsCount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              height: 60,
              child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    // _login(userNameController.text,
                    //     passwordController.text);
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0),
                  ),
                  child: Text(
                    "Wishlist (14)",
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )))
        ],
      ),
    );
  }
}
