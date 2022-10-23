import 'package:flutter/material.dart';

class QuizQuestionModel {
  final String question;
  final String correctAnwser;
  final List<String> options;

  QuizQuestionModel(
      {required this.question,
      required this.correctAnwser,
      required this.options});
}



