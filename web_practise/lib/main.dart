import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_practise/pages/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: Theme.of(context).textTheme.copyWith()),
      home: MainPage(),
    );
  }
}
