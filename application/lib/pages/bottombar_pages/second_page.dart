import "package:application/pages/inner/second/market.dart";
import 'package:application/pages/inner/second/weight_information/default.dart';
import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import '../../widgets/custom_dropdown.dart';
import 'package:provider/provider.dart';
import '../inner/second/weight_information/gain_muscle.dart';
import '../inner/second/weight_information/gain_strength.dart';
import '../inner/second/weight_information/lose_weight.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ListingProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => SecondPageProvider(selectedIndex: selectedIndex),
        ),
      ],
      child: Builder(
        builder: (BuildContext context) {
          return Scaffold(
              floatingActionButton: FloatingActionButton(
                autofocus: true,
                //backgroundColor: Colors.white,
                //foregroundColor: Colors.black,
                shape: const CircleBorder(side: BorderSide(width: 1)),
                onPressed: (() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const market()),
                  );
                }),
                child: const Icon(
                  Icons.storefront_sharp,
                  size: 35,
                ),
              ),
              drawer: Drawer(
                child: ListView(
                  children: [
                    ListTile(
                      title: const Text(
                        "GYMGYM's PICK",
                        style: TextStyle(fontSize: 15),
                      ),
                      onTap: () {},
                    ),
                    ExpansionTile(
                      title: const Text(
                        "체중감량 및 체력증진",
                        style: TextStyle(fontSize: 15),
                      ),
                      children: [
                        ListTile(
                          leading: const Text('헬스장'),
                          onTap: () {
                            print('a');
                          },
                        ),
                        ListTile(
                          leading: const Text('홈트'),
                          onTap: () {
                            print('a');
                          },
                        )
                      ],
                    ),
                    ExpansionTile(
                      title: const Text(
                        "근육량 증가",
                        style: TextStyle(fontSize: 15),
                      ),
                      children: [
                        ListTile(
                          leading: const Text('가슴'),
                          onTap: () {
                            print('a');
                          },
                        ),
                        ListTile(
                          leading: const Text('등'),
                          onTap: () {
                            print('a');
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
              appBar: AppBar(
                // ),
                title: Image.asset(
                  'assets/images/GYMGYM대지마.png',
                  alignment: Alignment.center,
                  width: 150,
                ),
              ),
              body: SingleChildScrollView(
                child: Provider.of<ListingProvider>(context).pages[
                    Provider.of<SecondPageProvider>(context).selectedIndex],
              ));
        },
      ),
    );
    //  Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Center(
    //
    //   ),
    // ),
  }
}

class SecondPageProvider extends ChangeNotifier {
  int selectedIndex;

  SecondPageProvider({required this.selectedIndex});

  void changeIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}

class ListingProvider extends ChangeNotifier {
  List<Widget> pages = <Widget>[
    const DefaultSecond(),
    const GainMuscle(),
    const GainStrength(),
    const LoseWeight(),
  ];

  @override
  notifyListeners();
}
