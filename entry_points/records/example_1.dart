import 'dart:math';

import '../../core/tuples.dart';

void main()  {
  // before
  final point = getRandomPoint();
  final pointX = point.item1;
  final pointY = point.item2;

  final circle = getCircle();
  final color = circle.item1;
  final radius = circle.item2;

  final vector = getRandomVector();
  final vectorX = vector.item1;
  final vectorY = vector.item2;
  final vectorZ = vector.item3;
}

enum Color { red, green, blue }

Tuple2<int, int> getRandomPoint() {
  final random = Random();
  return Tuple2(
    random.nextInt(10),
    random.nextInt(100),
  );
}

Tuple2<Color, double> getCircle() {
  return Tuple2(Color.blue, 10);
}

Tuple3<int, int, int> getRandomVector() {
  final random = Random();
  return Tuple3(
    random.nextInt(10),
    random.nextInt(100),
    random.nextInt(50),
  );
}
