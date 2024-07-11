import 'package:application/pages/bottombar_pages/third_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ClickCommunityBlock extends StatefulWidget {
  const ClickCommunityBlock({super.key});

  @override
  State<ClickCommunityBlock> createState() => _ClickCommunityBlockState();
}

class _ClickCommunityBlockState extends State<ClickCommunityBlock> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ParticipantsProvider(),
        ),
      ],
      child: Builder(
        builder: (BuildContext context) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 350,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.green[600],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      //decoration: const BoxDecoration(color: Colors.white30),
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
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
                              const SizedBox(width: 10),
                            ],
                          ),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                '뛰어볼까~',
                                //style: TextStyle(color: Colors.black), //제목만 눈에 띄게, 추후 회의예정
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Row(
                        children: [
                          Text('2024.06.20'),
                        ],
                      ),
                      Container(
                        width: 350,
                        height: 100,
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(9),
                          ),
                          border: Border(
                            left: BorderSide(color: Colors.black, width: 1),
                            right: BorderSide(color: Colors.black, width: 1),
                            top: BorderSide(color: Colors.black, width: 1),
                            bottom: BorderSide(color: Colors.black, width: 1),
                          ),
                        ),
                        child: const Column(
                          children: [
                            Row(
                              children: [
                                Text(
                                  '내용',
                                  style: TextStyle(fontSize: 12),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              '${Provider.of<ParticipantsProvider>(context).participants}명 참여중',
                              style: const TextStyle(fontSize: 13)),
                          ElevatedButton(
                            style: const ButtonStyle(
                              padding: MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(
                                      vertical: 2, horizontal: 4)),
                            ),
                            onPressed: () {
                              Provider.of<ParticipantsProvider>(context,
                                      listen: false)
                                  .increment();
                              // Navigator.pop(context);
                            },
                            child: const Text(
                              '참여',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
