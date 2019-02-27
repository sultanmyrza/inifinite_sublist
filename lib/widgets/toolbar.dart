import 'package:flutter/material.dart';

class ToolBar extends StatefulWidget {
  @override
  _ToolBarState createState() => _ToolBarState();
}

class _ToolBarState extends State<ToolBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.arrow_left), onPressed: _makeSibling),
            IconButton(icon: Icon(Icons.arrow_right), onPressed: _makeChild)
          ],
        ),
        Row(
          children: <Widget>[
            IconButton(icon: Icon(Icons.check), onPressed: _toggle),
            IconButton(icon: Icon(Icons.speaker_notes), onPressed: _addNote),
            IconButton(
                icon: Icon(Icons.keyboard_arrow_down),
                onPressed: _hideKeyboard),
          ],
        ),
      ],
    );
  }

  void _makeSibling() {
    throw UnimplementedError();
  }

  void _makeChild() {}

  void _toggle() {}

  void _addNote() {}

  void _hideKeyboard() {}
}
