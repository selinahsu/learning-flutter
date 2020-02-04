import 'package:flutter/material.dart';

class TextSection extends StatelessWidget {
  final String title;
  final String body;
  static const double _hPad = 16.0;

  TextSection(this.title, this.body);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
            padding: const EdgeInsets.fromLTRB(_hPad, 32.0, _hPad, 4.0),
            child: Text(title, style: Theme.of(context).textTheme.title)),
        Container(
            padding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: _hPad),
            child: Text(body)),
      ],
    );
  }
}