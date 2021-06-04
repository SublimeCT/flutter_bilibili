import 'package:flutter/material.dart';

class SearchInputPlaceholder extends StatelessWidget {
  const SearchInputPlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 30,
        padding: EdgeInsets.all(5),
        alignment: Alignment.centerLeft,
        margin: EdgeInsets.only(left: 10, right: 10),
        child: Icon(Icons.search),
        decoration: BoxDecoration(
          // color: Colors.black12,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
