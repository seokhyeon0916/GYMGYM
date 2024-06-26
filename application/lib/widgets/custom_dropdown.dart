import 'package:application/pages/inner/third/sports_category/pilates.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../pages/inner/third/sports_category/jogging.dart';
import '../pages/inner/third/sports_category/pilates.dart';
import '../pages/bottombar_pages/third_page.dart';
import '../pages/bottombar_pages/second_page.dart';

final List<String> weightType = ['전체', '헬스', '러닝', '스포츠', '기타'];

final List<String> items = ['전체', '헬스', '러닝', '스포츠', '기타'];

String? selectedValue;

class CustomDropdown extends StatefulWidget {
  final String c_d_type; //custom_dropdown_type

  const CustomDropdown({
    super.key,
    required this.c_d_type,
  });
  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  @override
  Widget build(BuildContext context) {
    String type = widget.c_d_type;

    if (type == 'second') {
      return DropdownButtonHideUnderline(
        child: DropdownButton2<String>(
          isExpanded: true,
          iconStyleData: const IconStyleData(iconSize: 0.0), // 화살표 없애기
          hint: Text(
            '전체',
            style: TextStyle(
              fontSize: 16,
              color: Theme.of(context).hintColor,
            ),
          ),
          items: weightType
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
              case '전체':
                Provider.of<SecondPageProvider>(context, listen: false)
                    .changeIndex(0);
              case '체중감량':
                Provider.of<SecondPageProvider>(context, listen: false)
                    .changeIndex(1);
                break;
              case '근육량증가':
                Provider.of<SecondPageProvider>(context, listen: false)
                    .changeIndex(2);
                break;
              case '체력증진':
                Provider.of<SecondPageProvider>(context, listen: false)
                    .changeIndex(3);
                break;
            }
            setState(() {
              selectedValue = value;
            });
          },
          buttonStyleData: const ButtonStyleData(
            height: 40,
            width: 90,
          ),
          menuItemStyleData: const MenuItemStyleData(
            height: 40,
          ),
        ),
      );
    } else if (type == 'third') {
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
                case '전체':
                  Provider.of<ThirdPageProvider>(context, listen: false)
                      .changeIndex(0);
                case '헬스':
                  Provider.of<ThirdPageProvider>(context, listen: false)
                      .changeIndex(1);
                  break;
                case '조깅':
                  Provider.of<ThirdPageProvider>(context, listen: false)
                      .changeIndex(2);
                  break;
                case '수영':
                  Provider.of<ThirdPageProvider>(context, listen: false)
                      .changeIndex(3);
                  break;
                case '필라테스':
                  Provider.of<ThirdPageProvider>(context, listen: false)
                      .changeIndex(4);
                  break;
              }
              setState(() {
                selectedValue = value;
              });
            },

            buttonStyleData: const ButtonStyleData(
              height: 40,
              width: 90,
            ),
            menuItemStyleData: const MenuItemStyleData(
              height: 40,
            ),
          ),
        ),
      );
    } else {
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
                case '전체':
                  Provider.of<ThirdPageProvider>(context, listen: false)
                      .changeIndex(0);
                case '헬스':
                  Provider.of<ThirdPageProvider>(context, listen: false)
                      .changeIndex(1);
                  break;
                case '조깅':
                  Provider.of<ThirdPageProvider>(context, listen: false)
                      .changeIndex(2);
                  break;
                case '수영':
                  Provider.of<ThirdPageProvider>(context, listen: false)
                      .changeIndex(3);
                  break;
                case '필라테스':
                  Provider.of<ThirdPageProvider>(context, listen: false)
                      .changeIndex(4);
                  break;
              }
              setState(() {
                selectedValue = value;
              });
            },

            buttonStyleData: const ButtonStyleData(
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
}
