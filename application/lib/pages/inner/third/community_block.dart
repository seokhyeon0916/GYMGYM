import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './join_community.dart';
import './pages/community_block/click_community_block.dart';

class community_block extends StatefulWidget {
  const community_block({super.key});

  @override
  State<community_block> createState() => _community_blockState();
}

class _community_blockState extends State<community_block> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ClickCommunityBlock()),
          );
        },
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.green[600],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //decoration: const BoxDecoration(color: Colors.white30),
              const Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    '뛰어볼까~',
                    //style: TextStyle(color: Colors.black), //제목만 눈에 띄게, 추후 회의예정
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: const Row(
                      children: [
                        Icon(Icons.run_circle_rounded),
                        SizedBox(width: 5),
                        Text(
                          '경민이라하옵니다',
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(width: 10),
                      ],
                    ),
                  ),
                  const SizedBox(width: 150),
                  const Text('0명 참여중', style: TextStyle(fontSize: 13)),
                ],
              ),
            ],
          ),
        ),
      ),
      // const SizedBox(height: 10),
    );
  }
}
