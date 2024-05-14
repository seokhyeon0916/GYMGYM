import 'package:flutter/material.dart';
import "package:table_calendar/table_calendar.dart";

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: const Icon(Icons.heart_broken),
                    onTap: () {},
                  ),
                  GestureDetector(
                    child: const Icon(Icons.task),
                    onTap: () {},
                  ),
                  GestureDetector(
                    child: const Icon(Icons.menu),
                    onTap: () {},
                  ),
                ],
              ),
              const Row(
                children: [
                  Column(
                    children: [
                      Icon(
                        Icons.circle_outlined,
                        size: 40,
                      ),
                      Text('Me'),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 41,
                      ),
                      Text(''),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      const Icon(Icons.circle_outlined, size: 70),
                      Transform.translate(
                        offset: const Offset(10, -40),
                        child: const Icon(
                          Icons.add_circle,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('경민이라하옵니다'),
                      Text('프로필에 자기소개를 입력해보세요'),
                      SizedBox(height: 30),
                    ],
                  ),
                  const SizedBox(width: 49),
                  const Icon(
                    Icons.sentiment_satisfied_alt_outlined,
                    size: 40,
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    '2024년 2월',
                  ),
                  SizedBox(width: 200),
                  Icon(Icons.arrow_back_ios_rounded),
                  SizedBox(width: 5),
                  Icon(Icons.arrow_forward_ios_rounded),
                  Icon(
                    Icons.circle,
                  ),
                ],
              ),
              TableCalendar(
                focusedDay: DateTime.now(),
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 20,
                    width: 50,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 20,
                    width: 50,
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    height: 20,
                    width: 50,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
