import 'question.dart';
class Quiz_Brain
{
  List<Questions> _Brain = [

    Questions(q: 'The black box in a plane is black',a: false),
    Questions(q: 'Marrakesh is the capital of Morocco',a: false),
    Questions(q: 'An octopus has three hearts',a: true)

  ];


  String QuestionText(int questionNumber)
  {
    return _Brain[questionNumber].questioText;

  }

  bool QuestionAnswer(int questionNumber)
  {
    return _Brain[questionNumber].questionAnswer;

  }
}

