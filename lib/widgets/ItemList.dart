import 'package:flutter/material.dart';
import 'package:quotes_flutter_app/model/DataTime.dart';

class ItemList extends StatelessWidget {
  DataTime dataTime;

  ItemList({this.dataTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 35),
      height: 200,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                dataTime.timeData,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              )
            ],
          ),
          ListView.builder(
            itemCount: dataTime.quotes.length,
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemBuilder: (context, index) {
              var quote = dataTime.quotes[index];
              return Container(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(quote.name),
                      leading: Icon(Icons.favorite_border),
                    ),
                    Divider(),
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
