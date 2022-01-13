import 'dart:math';

class Game {
  static const defaultMaxRandom = 100;
  int? _answer;
  int _guessCount = 0;
  String _text = '';
  String _titleText = '';
  static final List<int> guessCountList = [];

  Game() {
    var r = Random();
    _answer = r.nextInt(defaultMaxRandom) + 1;
  }

  String get titleText{
    return _titleText;
  }

  String get Text{
    return _text;
  }

  int get guessCount {
    return _guessCount;
  }

  void addCountList() {
    guessCountList.add(_guessCount);
  }

  void doGuess(int num) {

    _guessCount++;
    if (num > _answer!) {
      _titleText = 'RESULT';
      _text = 'มากเกินไป กรุณาลองใหม่';
      //return 1;
    } else if (num < _answer!) {
      _titleText = 'RESULT';
      _text = 'น้อยเกินไป กรุณาลองใหม่';
      //return -1;
    } else {
      _titleText = 'RESULT';
      _text = 'ถูกต้อง!! \nคุณทายทั้งหมด $guessCount ครั้ง';
      //return 0;
    }
  }
}