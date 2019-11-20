import 'package:cmerce/cart.dart';
import 'package:cmerce/home.dart';
import 'package:cmerce/wishlist.dart';
import 'package:flutter/material.dart';
import 'main.dart';
import 'offers.dart';
import 'blog.dart';
import 'profile.dart';

class MyDrawer extends StatefulWidget {
  MyDrawer({Key key}) : super(key: key);
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
 @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        Container(
          child: 
        //     future: getUserNameAndEmail(),
        //     builder: (context, snapshot){
        //       if(!snapshot.hasData){
        //         // return ColorLoader3();
        //       }
        //       if(snapshot.hasData){
        //         return UserAccountsDrawerHeader(
        //             accountName: Padding(
        //               padding: EdgeInsets.only(top: 20, left: 5),
        //               child: Text(snapshot.data[0], style: TextStyle(fontSize: 20),),
        //             ),
        //             accountEmail: Padding(
        //               padding: EdgeInsets.only(left: 5, bottom: 0.0),
        //               child: Text(snapshot.data[1], style: TextStyle(fontSize: 15),),
        //             ),
        //             currentAccountPicture: CircleAvatar(
        //               backgroundImage: NetworkImage(
        //                   'https://ui-avatars.com/api/?name='+snapshot.data[0]+'&color=0000ff&bold=true'),
        //             ),
        //         );
                 DrawerHeader(
                   child: Container(),
                  // decoration: BoxDecoration(
                  //   color: Colors.blue,
                  //   image: DecorationImage(
                  //     image: AssetImage("assets/images/profile.png"),
                  //     fit: BoxFit.fitWidth
                  //   )
                  )),
        //         //   child: Container(
        //         //   child: Column(
        //         //     mainAxisAlignment: MainAxisAlignment.end,
        //         //     children: <Widget>[
        //         //       Row(
        //         //         children: <Widget>[
        //         //           Text(snapshot.data[0])
        //         //         ],
        //         //       ),
        //         //       Row(
        //         //         children: <Widget>[
        //         //           Text(snapshot.data[1])
        //         //         ],
        //         //       )
        //         //     ],
        //         //   ),
        //         // )
        //         // );
        //       }
        //     },
        //   ) 
        // ),
        ListTile(
          leading: Icon(Icons.dashboard, size: 30, color: Colors.black),
          title: Text('Home'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MainSceen()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.dashboard, size: 30, color: Colors.black),
          title: Text('Offers'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Offers()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.table_chart, size: 30, color: Colors.black),
          title: Text('Our Blog'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Blog()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.dashboard, size: 30, color: Colors.black),
          title: Text('WishList'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => WishList()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.dashboard, size: 30, color: Colors.black),
          title: Text('Cart'),
          onTap: () {
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Cart()),
            );
          },
        ),
        ListTile(
          leading:
              Icon(Icons.supervised_user_circle, size: 30, color: Colors.black),
          title: Text('User Profile'),
          onTap: () {
            Navigator.pop(context);
             Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Profile()),
            );
          },
        ),
        ListTile(
          leading: Icon(Icons.verified_user, size: 30, color: Colors.black),
          title: Text('Log Out'),
          onTap: () {
            Navigator.pop(context);
            FutureBuilder<String>(
                // future: _logout(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp()),
                    );
                  }
                  if (!snapshot.hasData) {
                  }
                });
          },
        ),
      ],
    ));    
  }
  //   Future<String> _logout() async {
  //   print('in logout');
  //   String data = await logout();
  //   print(data);  
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => MyApp()),
  //   );  
  //   return data;
  // } 

  // Future<List> getUserNameAndEmail() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   var uName = prefs.getString('name');
  //   var email = prefs.getString('email');
  //   List<String> userData = new List<String>();
  //   userData.add(uName);
  //   userData.add(email);
  //   return userData;
  // }
}

 