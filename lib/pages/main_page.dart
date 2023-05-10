import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:target_analizer_web/dataset/list.dart';
import 'package:target_analizer_web/widgets/header.dart';
import 'package:target_analizer_web/widgets/list_of_market.dart';
import 'package:target_analizer_web/widgets/not_faund.dart';
import '../dataset/convertor.dart';

class MainPage extends StatefulWidget {
  MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<dynamic> listOfNeed = [];

  List<dynamic> listOfReccomend = [];

  List<dynamic> listOfSame = [];

  List<dynamic> makeArray(String word) {
    List ans = [];
    for (var i = 0; i < markets.length; i++) {
      for (var y = 0; y < markets[i]["listOfProducts"].length; y++) {
        if (markets[i]["listOfProducts"][y] == word) {
          ans.add(markets[i]);
        }
      }
    }
    return ans;
  }

  List<dynamic> makeArray2(String word) {
    List ans = [];
    List categ = [];
    for (var i = 0; i < markets.length; i++) {
      for (var y = 0; y < markets[i]["listOfProducts"].length; y++) {
        if (markets[i]["listOfProducts"][y] == word) {
          categ.add(markets[i]["category"]);
        }
      }
    }
    for (var i = 0; i < markets.length; i++) {
      for (var z = 0; z < categ.length; z++) {
        if (categ[z] == markets[i]["category"]) {
          ans.add(markets[i]);
          break;
        }
      }
    }
    return ans;
  }

  List<dynamic> arr = [];
  void submitSearch(String searchWord) {
    print(searchWord);
    setState(() {
      listOfNeed = makeArray(searchWord);
      listOfReccomend = makeArray2(searchWord);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 150),
        child: Column(
          children: [
            Header(
              doThis: submitSearch,
            ),
            listOfNeed.isEmpty
                ? Container(
                    margin: EdgeInsets.only(top: 100),
                    child: Text(
                      'No result of searching =(',
                      style: TextStyle(color: Colors.grey[300], fontSize: 50),
                    ),
                  )
                : Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ListOfMarkets(
                              markets: listOfNeed,
                              name: 'Results',
                            ),
                            ListOfMarkets(
                              markets: listOfReccomend,
                              name: 'Reccomendations',
                            )
                          ],
                        ),
                      ],
                    ),
                  )
          ],
        ),
      ),
    ));
  }
}
