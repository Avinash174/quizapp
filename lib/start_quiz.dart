import 'package:flutter/material.dart';
import 'package:quizapp/const.dart';
import 'package:quizapp/play_quiz_screen.dart';

class StartQuizScreen extends StatelessWidget {
  const StartQuizScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroungColor,
      appBar: AppBar(
        title: Text("Start Quiz"),
        centerTitle: true,
        backgroundColor: foregroundColor,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Quiz App",
              style: TextStyle(
                  color: foregroundColor,
                  fontSize: 40,
                  fontWeight: FontWeight.w600),
            ),
            ElevatedButton(
                onPressed: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> PlayQuizScreen()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: foregroundColor,
                ),
                child: Text(
                  "Start Quiz",
                  style: TextStyle(color: backgroungColor, fontSize: 20),
                ))
          ],
        ),
      ),
    );
  }
}
