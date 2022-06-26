import 'package:flutter/material.dart';

class CustmTextTitleAuth extends StatelessWidget {
  final String text;

  const CustmTextTitleAuth({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.headline2);
  }
}
