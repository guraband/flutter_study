import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const MyAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.blue,
      centerTitle: true,
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
      actions: [
        IconButton(
          onPressed: () {
            print("Pressed!");
          },
          icon: const Icon(Icons.home),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
