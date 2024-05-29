import 'package:application/pages/inner/third/sports_category/pilates.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pages/inner/third/sports_category/jogging.dart';
import '../pages/inner/third/sports_category/pilates.dart';
import '../pages/bottombar_pages/third_page.dart';

final List<String> items = [
  '헬스',
  '조깅',
  '수영',
  '필라테스',
];
String? selectedValue;

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({super.key});

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          //isExpanded: true,
          hint: Text(
            '전체',
            style: TextStyle(
              fontSize: 14,
              color: Theme.of(context).hintColor,
            ),
          ),
          items: items
              .map((String item) => DropdownMenuItem<String>(
                    value: item,
                    child: Text(
                      item,
                      style: const TextStyle(
                        fontSize: 14,
                      ),
                    ),
                  ))
              .toList(),
          value: selectedValue,
          onChanged: (String? value) {
            switch (value) {
              case '헬스':
                Provider.of<ThirdPageProvider>(context, listen: false)
                    .changeIndex(0);
                break;
              case '조깅':
                //const Jogging();
                break;
              case '수영':
                break;
              case '필라테스':
                Provider.of<ThirdPageProvider>(context, listen: false)
                    .changeIndex(1);
                break;
            }
            setState(() {
              selectedValue = value;
            });
          },

          buttonStyleData: const ButtonStyleData(
            // padding: EdgeInsets.symmetric(horizontal: 30),
            height: 40,
            width: 90,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
        ),
      ),
    );
  }
}
