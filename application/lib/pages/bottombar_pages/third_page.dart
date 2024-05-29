import 'package:application/pages/inner/third/sports_category/pilates.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../widgets/custom_dropdown.dart';
import '../inner/third/open_room.dart';
import '../inner/third/sports_category/jogging.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  // List<Widget> pages = <Widget>[
  //   const Jogging(),
  //   const Pilates(),
  // ];

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 1;

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ListingProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ThirdPageProvider(selectedIndex: selectedIndex),
        ),
      ],
      child: Builder(
        builder: (BuildContext context) {
          return Scaffold(
              appBar: AppBar(
                leadingWidth: 150,
                leading: const CustomDropdown(),
                actions: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OpenRoom()),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: const Text(
                          "모임개설",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              body: Provider.of<ListingProvider>(context).pages[
                  Provider.of<ThirdPageProvider>(context).selectedIndex]);
        },
      ),
    );
  }
}

class ThirdPageProvider extends ChangeNotifier {
  int selectedIndex;

  ThirdPageProvider({required this.selectedIndex});

  void changeIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}

class ListingProvider extends ChangeNotifier {
  List<Widget> pages = <Widget>[
    const Jogging(),
    const Pilates(),
  ];

  @override
  notifyListeners();
}
