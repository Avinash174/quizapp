import 'package:flutter/material.dart';
import 'package:quizapp/const.dart';
import 'package:quizapp/play_quiz_screen.dart';

class ResultScreen extends StatelessWidget {
  int correctAnswers, wrongAnswers;

  ResultScreen(
      {Key? key, required this.correctAnswers, required this.wrongAnswers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroungColor,
      appBar: AppBar(
        backgroundColor: foregroundColor,
        iconTheme: IconThemeData(color: backgroungColor),
        centerTitle: true,
        title: Text(
          "Result",
          style: TextStyle(color: backgroungColor),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                answerTab("Correct Answer", correctAnswers),
                answerTab("Wrong Answer", wrongAnswers),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => PlayQuizScreen()),
                    (route) => false);
              },
              style: ElevatedButton.styleFrom(primary: foregroundColor),
              child: Text(
                "Restart Quiz",
                style: TextStyle(color: backgroungColor),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget answerTab(String title, int value) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          "$value",
          style: TextStyle(
            color: foregroundColor,
            fontWeight: FontWeight.bold,
            fontSize: 60,
          ),
        ),
      ],
    );
  }
}
