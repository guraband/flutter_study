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
    return SafeArea(
      child: Center(
        child: Text(
          "Hello World!",
          style: TextStyle(color: Colors.black, fontSize: 50),
        ),
      ),
    );
  }
}
