import 'package:flutter/material.dart';

class ColorSelection extends StatefulWidget {
  const ColorSelection({super.key});

  @override
  State<ColorSelection> createState() => _ColorSelectionState();
}

class _ColorSelectionState extends State<ColorSelection> {
  String _displayColor = 'Blue';
  final _items = ['Red', 'Blue', 'Brown', 'Black'];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton(
        items: _items
            .map(
              (String color) => DropdownMenuItem(
                value: color,
                child: Text(color),
              ),
            )
            .toList(),
        onChanged: (String? newColor) {
          setState(
            () {
              _displayColor = newColor!;
            },
          );
        },
        value: _displayColor,
        icon: const Icon(Icons.keyboard_arrow_down),
        iconSize: 30,
        style: const TextStyle(fontSize: 20, fontFamily: 'Roboto', color: Colors.black),
        underline: Container(),

      ),
    );
  }
}
