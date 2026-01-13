import 'package:flutter/material.dart';
import 'package:flutter_example/widgets/part2/chapter7/screen/new_page2.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NewPage()),
        );
      },
          child: Text("Go to New Page")),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("페이지 이동하기"),
      backgroundColor: Colors.blue,
      centerTitle: true,
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}