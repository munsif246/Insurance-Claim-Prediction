import 'package:flutter/material.dart';

typedef OnChangeCallback = void Function(dynamic value);

class RadioBut extends StatefulWidget {
  final String name;
  final String value1;
  final String value2;
  final OnChangeCallback onChanged;

  const RadioBut(this.name, this.value1, this.value2, this.onChanged);

  @override
  State<RadioBut> createState() => _RadioButState();
}

class _RadioButState extends State<RadioBut> {
  String? children;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(widget.name),
              Row(
                children: [
                  Radio(
                      value: widget.value1,
                      groupValue: children,
                      onChanged: (value) {
                        setState(() {
                          children = value.toString();
                        });
                        widget.onChanged(value);
                      }),
                  Text(widget.value1)
                ],
              ),
              Row(
                children: [
                  Radio(
                      value: widget.value2,
                      groupValue: children,
                      onChanged: (value) {
                        setState(() {
                          children = value.toString();
                        });
                        widget.onChanged(value);
                      }),
                  Text(widget.value2)
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
