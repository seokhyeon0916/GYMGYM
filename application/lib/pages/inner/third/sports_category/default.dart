import 'package:flutter/material.dart';
import '../community_block.dart';

class Default extends StatefulWidget {
  const Default({super.key});

  @override
  State<Default> createState() => _DefaultState();
}

class _DefaultState extends State<Default> {
  @override
  Widget build(BuildContext context) {
    return const community_block();
  }
}
