import 'package:flutter/material.dart';

class CenterText extends StatelessWidget {
  const CenterText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Center(
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
