import 'package:flutter/material.dart';

class SizeSelection extends StatefulWidget {
  const SizeSelection({super.key});

  @override
  State<SizeSelection> createState() => _SizeSelectionState();
}

class _SizeSelectionState extends State<SizeSelection> {
  String _dropDownValue = '42';
  final _items = <String>[
    '38',
    '39',
    '40',
    '41',
    '42',
    '43',
    '44',
    '45',
    '46',
    '47',
    '48',
    
  ];
  int selectedSize = 42;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        items: _items.map((String item) {
          return DropdownMenuItem(
            value: item,
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Text(item),
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            _dropDownValue = newValue!;
          });
        },
        value: _dropDownValue,
        borderRadius: const BorderRadius.all(
          Radius.circular(8),
        ),
        icon: const Icon(Icons.keyboard_arrow_down),
        iconSize: 30,
        style: const TextStyle(fontSize: 20, fontFamily: 'Roboto', color: Colors.black),
        
        underline: Container(),
      ),
    );
  }
}
