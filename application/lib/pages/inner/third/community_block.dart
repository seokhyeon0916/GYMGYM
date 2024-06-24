import 'package:flutter/material.dart';
import './join_community.dart';

class community_block extends StatefulWidget {
  const community_block({super.key});

  @override
  State<community_block> createState() => _community_blockState();
}

class _community_blockState extends State<community_block> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.run_circle_rounded),
                      const SizedBox(width: 10),
                      const Text('뛰어볼까~'),
                      const Spacer(
                        flex: 1,
                      ),
                      GestureDetector(
                        onTap: () {
                          // Navigator.pop(
                          //   context,
                          //   MaterialPageRoute(
                          //     builder: (context) => const JoinCommunity(),
                          //   ),
                          // );
                          showDialog(
                              context: context,
                              builder: (BuildContext context) => const Dialog(
                                    child: JoinCommunity(),
                                  ));
                        },
                        child: const Icon(Icons.add),
                      ),
                      // const Icon(Icons.add),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text("0명 참여중"),
                ],
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    ));
  }
}
