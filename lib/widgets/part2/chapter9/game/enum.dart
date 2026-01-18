const assetPath = 'assets/images/part2';

enum InputType {
  scissors,
  rock,
  paper,
  ;

  String get path => '$assetPath/$name.png';
}