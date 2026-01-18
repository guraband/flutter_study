import 'package:flutter/material.dart';

import 'enum.dart';
import 'widget/cpu_input.dart';
import 'widget/game_result.dart';
import 'widget/user_input.dart';

class GameBody extends StatefulWidget {
  const GameBody({super.key});

  @override
  State<GameBody> createState() => _GameBodyState();
}

class _GameBodyState extends State<GameBody> {
  late bool isDone;
  late InputType? _userInput;

  @override
  void initState() {
    super.initState();
    isDone = false;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: CpuInput(isDone : false)),
        Expanded(child: GameResult(isDone : false)),
        Expanded(child: UserInput(isDone : false, callback: setUserInput)),
      ],
    );
  }

  void setUserInput(InputType userInput) {
    setState(() {
      _userInput = userInput;
      isDone = true;
    });
  }
}

