import 'package:flutter/material.dart';

import '../enum.dart';
import 'input_card.dart';

class UserInput extends StatelessWidget {
  final bool isDone;
  final Function(InputType) callback;

  const UserInput({super.key, required this.isDone, required this.callback});

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return const Placeholder();
    }

    return Row(children: _getInputs(callback));
  }

  List<Widget> _getInputs(Function(InputType) callback) {
    return InputType.values
        .map(
          (type) => Expanded(
            child: InputCard(callback: () => callback(type),
            child: Image.asset(type.path)),
          ),
        )
        .toList();
  }
}
