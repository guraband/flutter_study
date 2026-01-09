import 'package:flutter/material.dart';
import 'package:flutter_example/widgets/part2/chapter2/my_app_bar.dart';
import 'package:flutter_example/widgets/part2/chapter6/body.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        appBar: MyAppBar(title: "English Words"),
        body: Body(),
        // floatingActionButton: MyFloatingActionButton(),
      ),
    ),
  );
}
