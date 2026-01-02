import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("할룽"),
          backgroundColor: Colors.blue,
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 30),
          actions: [
            IconButton(
              onPressed: () {
                print("Pressed!");
              },
              icon: Icon(Icons.home),
            ),
          ],
        ),
        body: TestWidget(),
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
