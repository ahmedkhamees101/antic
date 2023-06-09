import 'package:flutter/material.dart';
import 'package:todo/style/app_theme.dart';
import 'package:todo/ui/home.dart';
import 'package:todo/ui/login.dart';
import 'package:todo/ui/register.dart';
import 'package:todo/ui/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
      );
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        SplashScreen.routeName: (context) => SplashScreen(),
        RegisterScreen.routeName: (_) => RegisterScreen(),
        LoginScreen.routeName: (_) => LoginScreen(),
        HomeScreen.routeName: (_) => HomeScreen(),
      },
      theme: MyTheme.lightTheme,
    );
  }
}
