import 'package:flutter/material.dart';
import 'package:quotes_flutter_app/model/Quote.dart';

class ItemList extends StatelessWidget {
  Quote quote;

  ItemList({this.quote});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 30, horizontal: 60),
      height: 40,
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.ac_unit),
              SizedBox(
                width: 7,
              ),
              Text(
                quote.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              ),
              Text(
                " - ${quote.quantity}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
              )
            ],
          ),
          Row(
            children: [Text(quote.descrition)],
          )
        ],
      ),
    );
  }
}
