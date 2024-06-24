import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "../inner/fourth/settings.dart";

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70, horizontal: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    child: const Icon(Icons.settings),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Settings()));
                    },
                  ),
                ],
              ),
              const SizedBox(height: 22),
              Column(
                children: [
                  Row(
                    children: [
                      const Icon(Icons.circle_outlined, size: 70),
                      Transform.translate(
                        offset: const Offset(-35, 17),
                        child: const Icon(
                          Icons.add_circle,
                          size: 35,
                        ),
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('경민이라하옵니다'),
                          Text('dnwndls5828@gmail.com'),
                          Row(
                            children: [
                              Text('팔로잉'),
                              SizedBox(width: 10),
                              Text('팔로워'),
                            ],
                          ),
                        ],
                      ),
                    ],
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
