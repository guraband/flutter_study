import 'package:flutter/material.dart';

const assetImagePath = "assets/images";

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset("$assetImagePath/coding_cat.png"),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("Local Resource"),
      backgroundColor: Colors.blue,
      centerTitle: true,
      titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}