import 'package:flutter/material.dart';

class TextItem extends StatefulWidget {
  final String name;
  final TextEditingController fieldController;
  const TextItem(this.name, this.fieldController);

  @override
  State<TextItem> createState() => _TextItemState();
}

class _TextItemState extends State<TextItem> {
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
      child: Container(
        child: Row(
          children: [
            Text(widget.name),
            SizedBox(
              width: 200.0,
              child: TextField(
                controller: widget.fieldController,
                obscureText: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: widget.name,
                  hintText: 'Enter' + widget.name,
                ),
                onChanged: ((value) {
                  setState(() {
                    text = value;
                  });
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
