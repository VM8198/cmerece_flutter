import 'package:cmerce/offers.dart';
import 'package:flutter/material.dart';
import 'offers.dart';
import 'mainScreen.dart';

class LogIn extends StatefulWidget {
  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[Logo(), LoginDetails() ],
      ),
    );
  }
}

class Logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return 
    Container(
      child: SizedBox(
      height: MediaQuery.of(context).size.height / 3.8,
      width: MediaQuery.of(context).size.width,      
      child: Container(        
        child: Image(
        image: AssetImage('assets/images/blog_1.jpg'),
        fit: BoxFit.fill,
      ),
      )
    ));
  }
}

class LoginDetails extends StatefulWidget {
  @override
  _LoginDetailsState createState() => _LoginDetailsState();
}

class _LoginDetailsState extends State<LoginDetails> {
    double radius = 100;

   bool passwordVisible;
  @override
  void initState() {
    passwordVisible = false;
  }


  final userNameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(    
        child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 8, right: 20, left: 20, bottom: 8),
            child: TextFormField(
              controller: userNameController,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.mail),
                  labelText: 'Email',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(radius)))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, left: 20, bottom: 8),
            child: TextFormField(
              controller: passwordController,
              obscureText: !passwordVisible,
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: 'Password',
                  suffixIcon: IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      passwordVisible ? Icons.visibility : Icons.visibility_off,
                      color: Theme.of(context).primaryColorDark,
                    ),
                    onPressed: () {
                      //toogle the state of passwordVisible variable
                      setState(() {
                        passwordVisible = !passwordVisible;
                      });
                    },
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(radius)))),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, left: 20, bottom: 8),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 50,
              child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    _login(userNameController.text,
                        passwordController.text);
                  },
                  shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(40.0),
                          // side: BorderSide(color: Colors.red)
                  ),
                  child: Text(
                    "Log In",
                    style: TextStyle(
                        color: Colors.black, fontSize: 20),
                  ))),
          ),          
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    TextSpan(text: "DONT HAVE ACCOUNT YET? ", style: TextStyle(color: Colors.black)),
                    TextSpan(text: "SIGN UP", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold))
                  ]
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  _login(String uname, String password){
     Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MainSceen()),
      );
  }

}
