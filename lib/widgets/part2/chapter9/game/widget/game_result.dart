import 'package:flutter/material.dart';

import '../enum.dart';

class GameResult extends StatelessWidget {
  final bool isDone;
  final Result? result;
  final VoidCallback onRestart;

  const GameResult({
    super.key,
    required this.isDone,
    this.result,
    required this.onRestart,
  });

  @override
  Widget build(BuildContext context) {
    if (isDone) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            result!.message,
            style: const TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          OutlinedButton(
            onPressed: () => onRestart(),
            style: OutlinedButton.styleFrom(
              side: const BorderSide(width: 2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: const Text(
              '다시 하기',
              style: TextStyle(fontSize: 24, color: Colors.black),
            ),
          ),
        ],
      );
    }
    return const Center(
      child: Text(
        "가위, 바위, 보 중에 하나를 선택해주세요.",
        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
