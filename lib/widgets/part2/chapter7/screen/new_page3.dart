import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../common/my_app_bar.dart';

class NewPage extends StatelessWidget {
  const NewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "New Page"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () => context.pushNamed("new2"),
              child: Text("Go NewPage2"),
            ),
            TextButton(
              onPressed: () => context.pop(),
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}

class NewPage2 extends StatelessWidget {
  const NewPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(title: "New Page2"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            TextButton(
              onPressed: () => context.pop(),
              child: Text("Go Back"),
            ),
            TextButton(
              onPressed: () => context.goNamed("home"),
              child: Text("Go Home"),
            ),
          ],
        ),
      ),
    );
  }
}
