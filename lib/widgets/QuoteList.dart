import 'package:flutter/material.dart';
import 'package:quotes_flutter_app/model/DataTime.dart';
import 'package:quotes_flutter_app/model/Quote.dart';
import 'package:quotes_flutter_app/widgets/ItemList.dart';

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<DataTime> dataTimes = [
    new DataTime('08:00', [
      new Quote("Omega 3", "500 - mg", "1 yellow pill, before meal"),
      new Quote("Asprin", "50 - mg", "2 blue pill, before meal"),
    ]),
    new DataTime('11:00', [
      new Quote("Asprin", "50 - mg", "2 blue pill, before meal"),
      new Quote("Omega 6", "500 - mg", "1 yellow pill, before meal"),
    ]),
    new DataTime('12:00', [
      new Quote("Lsd", "50 - mg", "2 blue blotter, before meal"),
      new Quote("Omega 6", "500 - mg", "1 yellow pill, before meal"),
    ]),
    new DataTime('22:00', [
      new Quote("Psilocibin", "50 - mg", "2 blue pill, before meal"),
      new Quote("Omega 6", "500 - mg", "1 yellow pill, before meal"),
    ]),

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),

      ),
      child: Container(
        margin: EdgeInsets.only(top: 25),
        child: ListView.builder(

          itemCount: dataTimes.length,
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          physics: ScrollPhysics(),
          itemBuilder: (context, index) {
            var dataTime = dataTimes[index];
            return (ItemList(dataTime: dataTime));
          },
        ),
      ),
    );
  }
}
