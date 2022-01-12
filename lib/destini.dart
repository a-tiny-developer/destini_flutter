import 'package:flutter/material.dart';

import 'screens/screens.dart';

class Destini extends StatelessWidget {
  const Destini({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: const StoryScreen(),
    );
  }
}
