import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:target_analizer_web/dataset/convertor.dart';
import 'package:target_analizer_web/dataset/list.dart';

class ListOfMarkets extends StatelessWidget {
  ListOfMarkets({super.key, required this.markets, required this.name});
  final List<dynamic> markets;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Text(
              '$name: ${markets.length}',
              style: TextStyle(color: Colors.grey[800], fontSize: 30),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
              height: 600,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: const Offset(
                        0.0,
                        0.0,
                      ),
                      blurRadius: 10.0,
                      spreadRadius: 2.0,
                    )
                  ]),
              child: ListView.builder(
                  itemCount: markets.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(15)),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.facebook,
                              size: 40,
                            ),
                            Text(
                              markets[index]["name"],
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w900),
                            ),
                            Text('City: ${markets[index]['city']}',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54)),
                            Text(
                                "${markets[index]["businessAccount"] ? "This is business Account" : "This is not business Account"}",
                                style: TextStyle(
                                    fontSize: 15, color: Colors.black54))
                          ]),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
