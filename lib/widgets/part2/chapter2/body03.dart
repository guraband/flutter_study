import 'package:flutter/material.dart';

class Body03 extends StatelessWidget {
  const Body03({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(width: 500, height: 500, color: Colors.black,),
        Container(width: 350, height: 350, color: Colors.red,),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(width: 250, height: 250, color: Colors.blue,)),
        Positioned(
            bottom: 10,
            left: 10,
            child: Container(width: 200, height: 200, color: Colors.green,)
        )
      ],
    );
  }
}
