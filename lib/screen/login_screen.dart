import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:media_ui/screen/home.dart';
import 'package:media_ui/widgets/curve_cliper.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              ClipPath(
                clipper: CurveClipper(),
                child: Image(image:
                AssetImage("assets/images/login_background.jpg"),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2.5,
                  fit: BoxFit.cover,
                ),
              ),
              Text("FRENZY",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                letterSpacing: 10.0,
                fontSize: 34,
                color: Theme.of(context).primaryColor
              ),),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "Username",
                    prefixIcon: Icon(Icons.account_box,
                    size: 30.0,)
                  ),),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                    fillColor: Colors.white,
                    filled: true,
                    hintText: "password",
                    prefixIcon: Icon(Icons.lock_outline,
                    size: 30.0,),
                  ),
                  obscureText: true,
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (_){
                  return HomeScreen();
                })),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 60.0),
                  alignment: Alignment.center,
                  height: 45.0,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Text("Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 22.0,
                    letterSpacing: 1.5
                  ),),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: FractionalOffset.bottomCenter,
                  child: GestureDetector(
                    onTap: (){},
                    child: Container(
                      color: Theme.of(context).primaryColor,
                      alignment: Alignment.center,
                      height: 60.0,
                      child: Center(
                        child: Text("Don\'t have an account? Sign up",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500
                        ),),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
