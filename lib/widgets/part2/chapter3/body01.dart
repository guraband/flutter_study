import 'package:flutter/material.dart';

class Body01 extends StatelessWidget {
  const Body01({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [const ExampleStateless(), const ExampleStateful(index: 0,)],
    );
  }
}

class ExampleStateless extends StatelessWidget {
  const ExampleStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Container(color: Colors.red));
  }
}

class ExampleStateful extends StatefulWidget {
  final int index;
  const ExampleStateful({required this.index, super.key});

  @override
  State<ExampleStateful> createState() => _ExampleStatefulState();
}

class _ExampleStatefulState extends State<ExampleStateful> {
  late int _index;

  @override
  void initState() {
    super.initState();
    _index = widget.index;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          setState(() {
            if (_index == 5) {
              _index = 0;
              return;
            }

            _index++;
          });
        },
        child: Container(
          color: Colors.blue,
          child: Center(
            child: Text(
              "$_index",
              style: TextStyle(fontSize: 40, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
