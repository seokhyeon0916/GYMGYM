import "package:flutter/material.dart";
import "package:table_calendar/table_calendar.dart";

void main() => runApp(const Todomate());

class Todomate extends StatelessWidget {
  const Todomate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(backgroundColor: Colors.white),
      ),
      home: const MyWidget(),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int selectedIndex = 0;

  List<Widget> pages = <Widget>[
    const FirstPage(),
    const SecondPage(),
    const ThirdPage(),
    const FourthPage(),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.grey[100],
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: const TextStyle(color: Colors.blueAccent),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            label: '피드',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            label: '검색',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble,
              color: Colors.black,
            ),
            label: '대화',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Colors.black,
            ),
            label: 'My',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.heart_broken),
                  SizedBox(width: 13),
                  Icon(Icons.task),
                  SizedBox(width: 13),
                  Icon(Icons.menu),
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

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('First Page'),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
