import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Header extends StatelessWidget {
  Header({super.key, required this.doThis});
  final Function doThis;

  TextEditingController searchInput = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      decoration: BoxDecoration(
          color: Colors.blueGrey[400],
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Find a MARKET',
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontSize: 25,
                fontWeight: FontWeight.w800),
          ),
          SizedBox(
              width: 300,
              height: 50,
              child: TextField(
                  controller: searchInput,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Search',
                  ))),
          Container(
              width: 100,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  doThis(searchInput.text);
                  searchInput.text = '';
                },
                child: Text(
                  'FIND',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ))
        ],
      ),
    );
  }
}
