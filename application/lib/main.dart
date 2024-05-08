import "package:flutter/material.dart";
import 'package:animated_splash_screen/animated_splash_screen.dart';
import "pages/first_page.dart";
import "pages/second_page.dart";
import "pages/third_page.dart";
import "pages/fourth_page.dart";

void main() => runApp(const Todomate());

class Todomate extends StatelessWidget {
  const Todomate({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.dark,
      home: AnimatedSplashScreen(
        splash: Image.asset('assets/images/Preview.jpg'),
        nextScreen: const MyWidget(),
        splashTransition:
            SplashTransition.fadeTransition, // https://itwise.tistory.com/19
      ),
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
            ),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: '운동정보/마켓',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble,
            ),
            label: '커뮤니티',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: '마이페이지',
          ),
        ],
        selectedItemColor: Colors.green,
        selectedIconTheme: const IconThemeData(color: Colors.green),
        unselectedItemColor: Colors.black,
        currentIndex: selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
