import 'package:flutter/material.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red,
            width: 5,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(10, 10),
              blurRadius: 10,
              spreadRadius: 5,
              blurStyle: BlurStyle.normal,
            ),
            BoxShadow(
              color: Color.fromARGB(100, 33, 150, 243),
              offset: Offset(-10, -10),
              blurRadius: 10,
              spreadRadius: 5,
              blurStyle: BlurStyle.normal,
            ),
          ],
          color: Color(0xFF9AEFCA),
        ),
        // color: Colors.red.shade200,
        // margin: EdgeInsets.all(10),
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Center(
          child: Container(
            color: Colors.yellow,
            child: const Text('Hello Container'),
          ),
        ),
      ),
    );
  }
}
