import 'package:flutter/material.dart';
import '../community_block.dart';

class Jogging extends StatefulWidget {
  const Jogging({super.key});

  @override
  State<Jogging> createState() => _JoggingState();
}

class _JoggingState extends State<Jogging> {
  @override
  Widget build(BuildContext context) {
    return const community_block();
  }
}
