import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabBarView.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:motion_tab_bar/motiontabbar.dart';
import 'package:quotes_flutter_app/screens/CreateQuote.dart';
import 'package:quotes_flutter_app/screens/Favorite.dart';
import 'package:quotes_flutter_app/screens/Home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primarySwatch: Colors.amber),
    home: Main(),
  ));
}

class Main extends StatefulWidget {
  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> with SingleTickerProviderStateMixin {
  MotionTabController _motionTabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _motionTabController =
        new MotionTabController(vsync: this, length: 3, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MotionTabBarView(
        controller: _motionTabController,
        children: <Widget>[CreateQuote(),Home(), Favorite()],
      ),
      bottomNavigationBar: MotionTabBar(
        labels: [
          "Create","Home","Favorite"
        ],

        initialSelectedTab: "Home",
        tabIconColor: Colors.amber,
        tabSelectedColor: Colors.amber,
        onTabItemSelected: (int value){
          print(value);
          setState(() {
            _motionTabController.index = value;
          });
        },
        icons: [
          Icons.edit,Icons.home,Icons.star
        ],
        textStyle: TextStyle(color: Colors.black),
      ),
    );
  }
}
