import 'package:flutter/material.dart';

typedef OnChangeCallback = void Function(dynamic value);

class DropdownBut extends StatefulWidget {
  final String name;
  final String initialValue;
  final List<String> dropDownOptions;
  final OnChangeCallback onChanged;
  const DropdownBut(this.name, this.dropDownOptions, this.initialValue,this.onChanged);

  @override
  State<DropdownBut> createState() => _DropdownButState();
}

class _DropdownButState extends State<DropdownBut> {
  String? _dropdownValue;

  void dropdownCallback(String? selectedValue) {
    if (selectedValue is String) {
      setState(() {
        _dropdownValue = _dropdownValue;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(widget.name),
            DropdownButton(
              items: widget.dropDownOptions
                  .map<DropdownMenuItem<String>>((String mascot) {
                return DropdownMenuItem<String>(
                    child: Text(mascot), value: mascot);
              }).toList(),
              value: _dropdownValue,
              onChanged: (value) {
                setState(() {
                  _dropdownValue = value;
                });
                widget.onChanged(value);
              },
              style: const TextStyle(
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
