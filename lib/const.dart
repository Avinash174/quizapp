import 'package:flutter/material.dart';
import 'package:quizapp/quiz_question_model.dart';

const backgroungColor = Color.fromRGBO(45, 27, 3, 1);
const foregroundColor = Color.fromRGBO(244, 140, 6, 1);

List<QuizQuestionModel> quizquestions = [
  QuizQuestionModel(
    question: "1. JSON Stands For",
    correctAnwser: "Javascript Object Notation",
    options: [
      "Javascript Standard Output Network",
      "Javascript Object Notation",
      "Javscript Output Name",
      "Java Source Open Network"
    ],
  ),
  QuizQuestionModel(
    question: "2. How do you instantiate an array in Java?",
    correctAnwser: "int arr[] = new int[3];",
    options: [
      "int arr[] = new int(3);",
      "int arr[];",
      "int arr[] = new int[3]",
      "int arr() = new int(3);"
    ],
  ),
  QuizQuestionModel(
    question: "3. Which of these best describes an array?",
    correctAnwser: "Container of objects of similar types",
    options: [
      "A data structure that shows a hierarchical behavior",
      "Container of objects of similar types",
      "Arrays are immutable once initialised",
      "Array is not a data structure"
    ],
  ),

];
