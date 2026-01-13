import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../common/MyAppBar.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "go_route test"),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.pushNamed("new1");
          },
          child: Text("Go to New Page"),
        ),
      ),
    );
  }
}

