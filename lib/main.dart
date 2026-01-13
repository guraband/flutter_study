import 'package:flutter/material.dart';
import 'package:flutter_example/widgets/part2/chapter7/body03.dart';
import 'package:flutter_example/widgets/part2/chapter7/screen/new_page3.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(
    MaterialApp.router(
      routerConfig: GoRouter(
        initialLocation: "/",
        routes: [
          GoRoute(path: "/", name: "home", builder: (context, _) => Body()),
          GoRoute(
            path: "/new1",
            name: "new1",
            builder: (context, _) => NewPage(),
          ),
          GoRoute(
            path: "/new2",
            name: "new2",
            builder: (context, _) => NewPage2(),
          ),
        ],
      ),
      title: "go_route test",
    ),
  );
}
