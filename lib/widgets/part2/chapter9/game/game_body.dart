import 'package:flutter/material.dart';

import 'cpu_input.dart';
import 'game_result.dart';
import 'user_input.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CpuInput()),
        Expanded(child: GameResult()),
        Expanded(child: UserInput()),
      ],
    );
  }
}

