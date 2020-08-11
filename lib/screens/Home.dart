import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:motion_tab_bar/MotionTabController.dart';
import 'package:quotes_flutter_app/model/Quote.dart';
import 'package:quotes_flutter_app/widgets/QuoteList.dart';

class Home extends StatefulWidget {
  List<Quote> quotes = [
    new Quote("Omega 3", "500 - mg", "1 yellow pill, before meal"),
    new Quote("Asprin", "50 - mg", "2 blue pill, before meal"),
    new Quote("Omega 6", "500 - mg", "1 yellow pill, before meal"),
    new Quote("Omega 9", "1000 - mg", "1 yellow pill, before meal"),
    new Quote("Acetaminophen", "200 - mg", "1 white pill, before breakfast"),
  ];

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  MotionTabController _motionTabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _motionTabController =
        new MotionTabController(initialIndex: 1, vsync: this,length: 3);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _motionTabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: ListView(
        children: <Widget>[
          Container(
            color: Colors.white,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(60))),
              width: double.infinity,
              height: 200,
              child: Padding(
                padding: const EdgeInsets.all(60.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text("13 Nov 2020"),
                    ),
                    Text(
                      "Hey, Julian!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          QuoteList(),
        ],
      ),
    );
  }
}
