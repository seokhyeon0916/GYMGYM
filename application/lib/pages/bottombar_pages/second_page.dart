import "package:application/pages/inner/second/market.dart";
import 'package:application/pages/inner/third/sports_category/default.dart';
import "package:flutter/material.dart";
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
              appBar: AppBar(
                leading: GestureDetector(
                  onTap: () {
                    print(SecondPageProvider);
                    Provider.of<SecondPageProvider>(context, listen: false)
                        .changeIndex(selectedIndex--);
                  },
                  child: const Icon(Icons.arrow_back_ios_rounded,
                      size: 30, color: Colors.white),
                ),
                title: Transform.translate(
                  offset: const Offset(28, 0),
                  child: const CustomDropdown(c_d_type: 'second'),
                ),
                actions: [
                  GestureDetector(
                    onTap: () {
                      // print(SecondPageProvider.selectedIndex);
                      print("plus");
                      Provider.of<SecondPageProvider>(context, listen: false)
                          .changeIndex(selectedIndex++);
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(13.0),
                      child: Icon(
                        Icons.arrow_forward_ios_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              body: Provider.of<ListingProvider>(context).pages[
                  Provider.of<SecondPageProvider>(context).selectedIndex]);
        },
      ),
    );
    //  Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Center(
    //     child: Transform.translate(
    //       offset: const Offset(140, 320),
    //       child: ElevatedButton(
    //         style: ElevatedButton.styleFrom(
    //           shape: const CircleBorder(),
    //           padding: const EdgeInsets.all(20),
    //         ),
    //         child: const Icon(
    //           Icons.shopping_bag_outlined,
    //           size: 30,
    //         ),
    //         onPressed: () {
    //           Navigator.push(
    //             context,
    //             MaterialPageRoute(builder: (context) => const market()),
    //           );
    //         },
    //       ),
    //     ),
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
    const Default(),
    const GainMuscle(),
    const GainStrength(),
    const LoseWeight(),
  ];

  @override
  notifyListeners();
}
