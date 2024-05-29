import 'package:flutter/material.dart';

class Jogging extends StatefulWidget {
  const Jogging({super.key});

  @override
  State<Jogging> createState() => _JoggingState();
}

class _JoggingState extends State<Jogging> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 70, horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: community_block(),
        ),
      ),
    );
  }
}

class community_block extends StatelessWidget {
  const community_block({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.run_circle_rounded),
                  SizedBox(width: 10),
                  Text('뛰어볼까~'),
                  Spacer(
                    flex: 1,
                  ),
                  Icon(Icons.add),
                ],
              ),
              SizedBox(height: 10),
              Text("0명 참여중"),
            ],
          ),
        ),
        const SizedBox(height: 10),
      ],
    );
  }
}
