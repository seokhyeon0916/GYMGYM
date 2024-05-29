import 'package:flutter/material.dart';

class Pilates extends StatefulWidget {
  const Pilates({super.key});

  @override
  State<Pilates> createState() => _PilatesState();
}

class _PilatesState extends State<Pilates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
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
                        Text('필라테스~'),
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
                        Icon(Icons.circle_outlined),
                        SizedBox(width: 10),
                        Text('러닝할 분 구합니다!'),
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
          ),
        ),
      ),
    );
  }
}
