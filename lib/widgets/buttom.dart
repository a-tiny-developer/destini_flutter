import 'package:flutter/material.dart';

class StoryButtom extends StatelessWidget {
  const StoryButtom({
    Key? key,
    required this.color,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final Color? color;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color?>(color),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
