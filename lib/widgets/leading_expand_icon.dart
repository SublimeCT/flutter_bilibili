import 'package:flutter/material.dart';

/// appbar 中的展开 icon
class LeadingExpandIcon extends StatelessWidget {
  const LeadingExpandIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 5,
      margin: EdgeInsets.only(right: 5),
      transform: Matrix4.rotationY(5),
      child: Icon(Icons.reorder),
    );
  }
}
