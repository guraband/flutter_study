import 'package:flutter/material.dart';
import 'package:flutter_example/widgets/part2/chapter9/game/widget/input_card.dart';

import '../enum.dart';

class CpuInput extends StatelessWidget {
  final bool isDone;
  final InputType cpuInput;

  const CpuInput({super.key, required this.cpuInput, required this.isDone});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SizedBox.shrink()),
        Expanded(child: InputCard(child: getCpuInput())),
        Expanded(child: SizedBox.shrink()),
      ],
    );
  }

  Widget getCpuInput() {
    if (isDone) {
      return Image.asset(cpuInput.path);
    }

    return SizedBox(
      // width: 72,
      height: 80,
      child: Center(
        child: Text(
          "?",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
