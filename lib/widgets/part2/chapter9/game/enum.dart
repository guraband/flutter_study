const assetPath = 'assets/images/part2';

enum InputType {
  scissors,
  rock,
  paper;

  InputType get winsAgainst {
    switch (this) {
      case InputType.scissors:
        return InputType.paper;
      case InputType.rock:
        return InputType.scissors;
      case InputType.paper:
        return InputType.rock;
    }
  }

  Result getResult(InputType other) {
    if (this == other) {
      return Result.draw;
    }
    if (winsAgainst == other) {
      return Result.win;
    }

    return Result.lose;
  }

  String get path => '$assetPath/$name.png';
}

enum Result {
  win("승리"),
  lose("패배"),
  draw("무승부");

  const Result(this.message);

  final String message;
}
