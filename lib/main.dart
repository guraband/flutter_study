import 'package:flutter/material.dart';
import 'package:flutter_example/widgets/part2/chapter7/body01.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        appBar: MyAppBar(),
        body: Body(),
      ),
    ),
  );
}
