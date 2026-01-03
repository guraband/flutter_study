import 'package:flutter/material.dart';

class Body02 extends StatelessWidget {
  const Body02({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 80,
              color: Colors.red,
              child: const Text("Container 1"),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.green,
              child: const Text("Container 2"),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.blue,
              child: const Text("Container 3"),
            ),
          ],
        ),
        Container(
          width: 300,
          height: 120,
          color: Colors.grey,
          child: const Text("Container 4"),
        ),
      ],
    );
  }
}
