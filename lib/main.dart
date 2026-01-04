import 'package:flutter/material.dart';
import 'package:flutter_example/widgets/part2/chapter2/my_app_bar.dart';
import 'package:flutter_example/widgets/part2/chapter3/body01.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        appBar: MyAppBar(title: "Stateless vs Stateful"),
        body: Body01(),
        // floatingActionButton: MyFloatingActionButton(),
      ),
    ),
  );
}
