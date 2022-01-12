import 'package:flutter/material.dart';

class CancelIcon extends StatelessWidget {
  const CancelIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.cancel,
      color: Colors.red[300],
    );
  }
}
