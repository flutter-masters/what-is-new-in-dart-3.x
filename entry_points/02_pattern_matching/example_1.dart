
// https://dart.dev/language/branches#guard-clause
void main() {
  final weekday = DateTime.now().weekday;

  // switch expressions
  // switch pattern matching

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

  final email = 'test@fluttermasters.dev' as String?;

  // if (email != null && email.endsWith('fluttermasters.dev') && email.contains('@')) {}

  // if (email case != null when email.endsWith('fluttermasters.dev') && email.contains('@')) {}
}
