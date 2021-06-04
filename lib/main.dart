import 'package:bilibili/pages/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  //顶部状态栏透明
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(GetMaterialApp(
    theme: ThemeData(
      brightness: Brightness.light, //指定亮度主题，有白色/黑色两种可选。
      primaryColor: Color(0xFFFB7299),
      accentColor: Colors.pink[100], //这里我们选浅蓝色为强调色值。
    ),
    home: Home(),
  ));
}
