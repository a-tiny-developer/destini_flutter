import 'package:flutter/material.dart';

class CheckIcon extends StatelessWidget {
  const CheckIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.check,
      color: Colors.green[400],
    );
  }
}
