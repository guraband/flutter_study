import 'dart:math';

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
  InputType? _userInput;
  Result? _result;
  late InputType _cpuInput;

  @override
  void initState() {
    super.initState();
    isDone = false;
    setCpuInput();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: CpuInput(isDone: isDone, cpuInput: _cpuInput),
        ),
        Expanded(
          child: GameResult(isDone: isDone, result: _result, onRestart: reset),
        ),
        Expanded(
          child: UserInput(
            isDone: isDone,
            userInput: _userInput,
            callback: setUserInput,
          ),
        ),
      ],
    );
  }

  void setUserInput(InputType userInput) {
    setState(() {
      _userInput = userInput;
      _result = _userInput!.getResult(_cpuInput);
      isDone = true;
    });
  }

  void setCpuInput() {
    final random = Random();
    _cpuInput = InputType.values[random.nextInt(3)];
  }

  void reset() {
    setState(() {
      isDone = false;
      setCpuInput();
    });
  }
}
