void main() {
  final weekday = DateTime.now().day;

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


  switch ('command') {
  case 'OPEN':
    // executeOpen();
    continue newCase; // Continues executing at the newCase label.

  case 'DENIED': // Empty case falls through.
  case 'CLOSED':
    executeClosed(); // Runs for both DENIED and CLOSED,

  newCase:
  case 'PENDING':
    executeNowClosed(); // Runs for both OPEN and PENDING.
}
}
