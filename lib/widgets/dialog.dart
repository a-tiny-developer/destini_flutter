// import 'package:flutter/material.dart';

// import 'package:quizzler_flutter/components/components.dart';

// class CustomDialog extends StatelessWidget {
//   const CustomDialog({
//     Key? key,
//     required this.onPressed,
//   }) : super(key: key);

//   final VoidCallback onPressed;

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: Colors.grey[300],
//       title: const Text('Finished'),
//       content: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           const Text('You have reached the end of the quiz'),
//           Text(
//             'You score is:  ${QuizBrain.score} / ${QuizBrain.questionBank.length}',
//             style: const TextStyle(fontWeight: FontWeight.bold),
//           ),
//         ],
//       ),
//       actions: [
//         TextButton(
//           onPressed: onPressed,
//           child: const Text('RESET'),
//         )
//       ],
//     );
//   }
// }
