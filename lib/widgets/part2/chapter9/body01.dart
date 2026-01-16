import 'package:flutter/material.dart';
import 'package:flutter_example/widgets/common/my_app_bar.dart';
import 'package:flutter_example/widgets/part2/chapter9/game/game_body.dart';

class RSPApp extends StatelessWidget {
  const RSPApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: MyAppBar(title: "가위 바위 보!"),
        body: GameBody(),
      ),
    );
  }
}
