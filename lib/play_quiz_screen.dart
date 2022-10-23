import 'package:flutter/material.dart';
import 'package:quizapp/quiz_question_model.dart';
import 'package:quizapp/result_screen.dart';
import 'const.dart';

class PlayQuizScreen extends StatefulWidget {
  const PlayQuizScreen({Key? key}) : super(key: key);

  @override
  State<PlayQuizScreen> createState() => _PalyQuizScreenState();
}

class _PalyQuizScreenState extends State<PlayQuizScreen> {
  final PageController pageController = PageController();
  bool isAnswerLoked = false;
  int currentIndex = 0, correctAnswers = 0, wrongAnswers = 0;
  String correctAnswer = "", selectedAnswer = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroungColor,
      appBar: AppBar(
        iconTheme: IconThemeData(color: backgroungColor),
        backgroundColor: foregroundColor,
        centerTitle: true,
        title: Text(
          "PlayQuiz",
          style: TextStyle(color: backgroungColor),
        ),
      ),
      body: PageView.builder(
          controller: pageController,
          physics: NeverScrollableScrollPhysics(),
          itemCount: quizquestions.length,
          itemBuilder: (context, index) {
            QuizQuestionModel model = quizquestions[index];

            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      model.question,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: List.generate(
                        model.options.length,
                        (index) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    isAnswerLoked = true;
                                    selectedAnswer = model.options[index];
                                    correctAnswer = model.correctAnwser;
                                  });
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 50,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: foregroundColor,
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                    color:
                                        selectedAnswer == model.options[index]
                                            ? foregroundColor
                                            : backgroungColor,
                                  ),
                                  alignment: Alignment.centerLeft,
                                  padding: EdgeInsets.all(14),
                                  child: Text(
                                    model.options[index],
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 15),
                                  ),
                                ),
                              ),
                            )),
                  )
                ],
              ),
            );
          }),
      bottomNavigationBar: InkWell(
        onTap: () {
          if (isAnswerLoked) {
            if (selectedAnswer == correctAnswer) {
              correctAnswers++;
            } else {
              wrongAnswers++;
            }

            currentIndex++;
            if (currentIndex != quizquestions.length) {
              pageController.jumpToPage(currentIndex);
            } else {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultScreen(
                    correctAnswers: correctAnswers,
                    wrongAnswers: wrongAnswers,
                  ),
                ),
              );
            }
            print("Correct Anwers:$correctAnswers");
            print("Wrong Answer:$wrongAnswers");
          } else {
            print("Please Select Correct Answer");
          }
        },
        child: Container(
          height: 70,
          color: foregroundColor,
          alignment: Alignment.center,
          child: Text(
            "Next",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: backgroungColor),
          ),
        ),
      ),
    );
  }
}
