import 'package:flutter/material.dart';

class InputCard extends StatelessWidget {
  final VoidCallback? callback;
  final Widget child;

  const InputCard({super.key, this.callback, required this.child});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback?.call(),
      child: InputContents(child: child),
    );
  }
}

class InputContents extends StatelessWidget {
  const InputContents({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: Colors.grey, width: 5),
      ),
      child: child,
    );
  }
}
