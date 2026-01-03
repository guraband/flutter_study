import 'package:flutter/material.dart';
import 'package:flutter_example/widgets/part2/chapter2/body02.dart';
import 'package:flutter_example/widgets/part2/chapter2/my_app_bar.dart';
import 'package:flutter_example/widgets/part2/chapter2/my_floating_action_button.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        appBar: MyAppBar(title: "Widget을 상하좌우로 배치하기!"),
        body: Body02(),
        floatingActionButton: MyFloatingActionButton(),
      ),
    ),
  );
}
