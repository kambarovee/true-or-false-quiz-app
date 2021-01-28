import 'Questions.dart';

class Quiz {
  int _questionNumber = 0;
  List<Questions> _questionsList = [
    Questions(q: 'The currency of Kazakhstan is Tenge', a: true),
    Questions(q: 'The highest mountain in England is Ben Nevis', a: false),
    Questions(q: 'Ben Nevis is the tallest mountain in the UK', a: true),
    Questions(q: 'The capital of Libya is Tripoli', a: true),
    Questions(q: 'The UK is about the same size as France', a: false),
    Questions(q: 'The UK is made up of more than 6000 islands', a: true),
    Questions(q: 'Glasgow is north of Belfast', a: true),
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
