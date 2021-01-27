import 'Questions.dart';

class Quiz {
  int _questionNumber = 0;
  List<Questions> _questionsList = [
    Questions(q: 'First Question', a: true),
    Questions(q: 'Second Question', a: false),
    Questions(q: 'Third Question', a: true),
  ];

  void nextQuestionNum() {
    if (_questionNumber < _questionsList.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestion() {
    return _questionsList[_questionNumber].question;
  }

  bool getAnswer() {
    return _questionsList[_questionNumber].answer;
  }

  int maxQuestionNum() {
    return _questionsList.length;
  }

  bool isFinished() {
    if (_questionNumber == _questionsList.length - 1) {
      return true;
    }
  }

  int reset() {
    return _questionNumber = 0;
  }
}
