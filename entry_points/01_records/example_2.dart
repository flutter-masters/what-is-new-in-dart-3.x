import 'dart:math';

import '../../core/employee.dart';


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

  final results = filterEmployees(
    Fields(age: 30, salary: 3000),
    employees,
  );

  print(results.length);
}

class Fields {
  final int age;
  final double salary;

  Fields({
    required this.age,
    required this.salary,
  });
}

List<Employee> filterEmployees(
  Fields fields,
  List<Employee> employees,
) {
  final age = fields.age;
  final salary = fields.salary;
  return employees
      .where(
        (e) => e.age >= age && e.salary >= salary,
      )
      .toList();
}
