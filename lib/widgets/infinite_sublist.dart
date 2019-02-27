import 'package:flutter/material.dart';

class InfiniteSublist extends StatefulWidget {
  @override
  _InfiniteSublistState createState() => _InfiniteSublistState();
}

class _InfiniteSublistState extends State<InfiniteSublist> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        CustomInput(),
        CustomInput(),
        CustomInput(),
      ],
    );
  }
}

class CustomInput extends StatefulWidget {
  @override
  _CustomInputState createState() => _CustomInputState();
}

class _CustomInputState extends State<CustomInput> {
  TextEditingController _textEditingController;

  @override
  void dispose() {
    // Do we call super after or before?
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _textEditingController = TextEditingController();
    var textFormField = TextFormField(
      controller: _textEditingController,
    );

    return ListTile(
      leading: Checkbox(value: false, onChanged: (bool newValue) {}),
      title: textFormField,
      trailing: IconButton(icon: Icon(Icons.add), onPressed: _showHideChildren),
    );
  }

  // TODO any convention to put defined methods above build etc?
  void _showHideChildren() {}
}
