import 'package:flutter/material.dart';
import '../community_block.dart';

class DefaultThird extends StatefulWidget {
  const DefaultThird({super.key});

  @override
  State<DefaultThird> createState() => _DefaultState();
}

class _DefaultState extends State<DefaultThird> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        community_block(),
        community_block(),
      ],
    );
  }
}
