import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Widget을 상하좌우로 배치하기"),
          backgroundColor: Colors.blue,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
          actions: [
            IconButton(
              onPressed: () {
                print("Pressed!");
              },
              icon: Icon(Icons.home),
            ),
          ],
        ),
        body: Body(),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.bug_report),
          onPressed: () {
            print("Pressed FAB!");
          },
        ),
      ),
    ),
  );
}

class Body extends StatelessWidget {
  const Body({super.key});

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
              child: Text("Container 1"),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.green,
              child: Text("Container 2"),
            ),
            Container(
              width: 100,
              height: 80,
              color: Colors.blue,
              child: Text("Container 3"),
            ),
          ],
        ),
        Container(
          width: 300,
          height: 120,
          color: Colors.grey,
          child: Text("Container 4"),
        ),
      ],
    );
  }
}

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
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              offset: Offset(10, 10),
              blurRadius: 10,
              spreadRadius: 5,
              blurStyle: BlurStyle.normal,
            ),
            BoxShadow(
              color: Colors.blue.withAlpha(100),
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
        padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
        child: Center(
          child: Container(
            color: Colors.yellow,
            child: Text('Hello Container'),
          ),
        ),
      ),
    );
  }
}
