import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo/ui/settings.dart';
import 'package:todo/ui/uitls/items_home.dart';

import '../style/constants.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  List<Widget> taps = [Items(), Settings()];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColor.mainBackGround,
      ),
      child: Scaffold(
        appBar:index==0? AppBar(
          backgroundColor: Colors.blue,
          title: Text("Antic", style: Theme.of(context).textTheme.bodyLarge),
          centerTitle: true,
        ):AppBar(
          backgroundColor: Color(0xFFC047FD),
          title: Text("Contact Us"),
          centerTitle: true,
        ),
        body: taps[index],
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: CircularNotchedRectangle(),
          child: BottomNavigationBar(
              iconSize: 30,
              backgroundColor: Colors.transparent,
              elevation: 0,
              currentIndex: index,
              onTap: (value) {
                index = value;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
                BottomNavigationBarItem(icon: Icon(Icons.call), label: ""),
              ]),
        ),
      ),
    );
  }
}
