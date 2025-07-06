import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/images/quiz-logo.png', width: 300, color: const Color.fromARGB(255, 225, 225, 225)),
          // Image with opacity
          // Opacity(
          //   opacity: 0.6,
          //   child: Image.asset('assets/images/quiz-logo.png', width: 300),
          // ),
          SizedBox(height: 80),
          Text(
            'Learn Flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
          SizedBox(height: 30),
          // Button without icon
          // ElevatedButton(
          //   onPressed: () {},
          //   style: ElevatedButton.styleFrom(
          //     backgroundColor: Colors.black,
          //     foregroundColor: Colors.white,
          //   ),
          //   child: Text('Start Quiz'),
          // ),
          ElevatedButton.icon(
            onPressed: startQuiz,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              foregroundColor: Colors.white,
            ),
            icon: Icon(Icons.arrow_right_alt, size: 28),
            label: Text('Start Quiz'),
          ),
        ],
      ),
    );
  }
}
