import 'dart:math';

import '../../core/employee.dart';
import '../../core/tuples.dart';

void main() {
  // before
  final random = Random();
  final employees = List.generate(
    10000000,
    (index) => Employee(
      name: 'name-$index',
      salary: 1000 + random.nextDouble() * 5000, // salary is >= 1000 and <= 6000
      age: 18 + random.nextInt(50), // age is >= 18 and <= 68
    ),
  );

  final results = filterEmployees(Tuple2(30, 3000), employees);
  print(results.length);
}

List<Employee> filterEmployees(
  Tuple2<int, double> fields,
  List<Employee> employees,
) {
  final age = fields.item1;
  final salary = fields.item2;
  return employees
      .where(
        (e) => e.age >= age && e.salary >= salary,
      )
      .toList();
}
