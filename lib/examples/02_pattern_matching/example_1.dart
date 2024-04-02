void main() {
  final weekday = DateTime.now().weekday;

  switch (weekday) {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
      print('Feeling the Monday blues?');
    case _:
      print('Enjoy the weekend!');
  }
}
