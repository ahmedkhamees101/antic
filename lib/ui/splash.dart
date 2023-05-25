import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/ui/login.dart';


class SplashScreen extends StatelessWidget {
static const String routeName ='splash';
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),
      (){
      Navigator.pushReplacementNamed(context, LoginScreen.routeName);
      }
    );
    return Container(
      width: 100,
      height: 100,
      decoration:  BoxDecoration(
        color:Colors.white,
        image: DecorationImage(image: AssetImage('assets/images/splash1.jpg',))
      ),
    );
  }

}
