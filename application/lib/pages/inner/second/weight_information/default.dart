import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../third/community_block.dart'; //테스트용 삭제예정.

class DefaultSecond extends StatefulWidget {
  const DefaultSecond({super.key});

  @override
  State<DefaultSecond> createState() => _DefaultState();
}

class _DefaultState extends State<DefaultSecond> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        community_block(),
        community_block(),
        community_block(),
        community_block(),
        community_block(),
        community_block(),
        community_block(),
        community_block(),
        community_block(),
        community_block(),
      ],
    ); //테스트용 삭제예정.
  }
}
