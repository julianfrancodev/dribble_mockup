import 'package:flutter/material.dart';
import 'package:quotes_flutter_app/model/Quote.dart';
import 'package:quotes_flutter_app/widgets/ItemList.dart';

class QuoteList extends StatefulWidget {
  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    new Quote("Omega 3", "500 - mg", "1 yellow pill, before meal"),
    new Quote("Asprin", "50 - mg", "2 blue pill, before meal"),
    new Quote("Omega 6", "500 - mg", "1 yellow pill, before meal"),
    new Quote("Omega 9", "1000 - mg", "1 yellow pill, before meal"),
    new Quote("Acetaminophen", "200 - mg", "1 white pill, before breakfast"),
    new Quote("Omega 6", "500 - mg", "1 yellow pill, before meal"),
    new Quote("Omega 9", "1000 - mg", "1 yellow pill, before meal"),
    new Quote("Acetaminophen", "200 - mg", "1 white pill, before breakfast"),    new Quote("Omega 6", "500 - mg", "1 yellow pill, before meal"),
    new Quote("Omega 9", "1000 - mg", "1 yellow pill, before meal"),
    new Quote("Acetaminophen", "200 - mg", "1 white pill, before breakfast"),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(60)),

      ),
      child: ListView.builder(

        itemCount: quotes.length,
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemBuilder: (context, index) {
          var quote = quotes[index];
          return (ItemList(quote: quote));
        },
      ),
    );
  }
}
