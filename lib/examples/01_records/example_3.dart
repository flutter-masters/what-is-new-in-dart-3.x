import 'dart:math';

import 'package:dart_3_features/core/employee.dart';
import 'package:dart_3_features/widgets/appbar/flutter_master_app_bar.dart';
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

class Example3 extends StatefulWidget {
  const Example3({super.key});

  @override
  State<Example3> createState() => _Example3State();
}

class _Example3State extends State<Example3> {
  List<Employee> filterResult = [];
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    final random = Random();
    final filter = Fields(age: 30, salary: 3000);
    final employees = List.generate(
      10,
      (index) => Employee(
        name: 'name-$index',
        salary:
            1000 + random.nextDouble() * 5000, // salary is >= 1000 and <= 6000
        age: 18 + random.nextInt(50), // age is >= 18 and <= 68
      ),
    );
    final results =
        await compute(filterEmployees, (fields: filter, employees: employees));

    setState(() {
      filterResult.addAll(results);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FlutterMastersAppBar(),
      body: ListView.separated(
        itemBuilder: (context, index) => Row(
          children: [
            Text('${filterResult[index].name} | '),
            Text('${filterResult[index].age} | '),
            Text('Q.${filterResult[index].salary}')
          ],
        ),
        separatorBuilder: (context, counter) => const Divider(),
        itemCount: filterResult.length,
      ),
    );
  }
}

List<Employee> filterEmployees(
    ({
      Fields fields,
      List<Employee> employees,
    }) record) {
  final age = record.fields.age;
  final salary = record.fields.salary;
  return record.employees
      .where(
        (e) => e.age >= age && e.salary >= salary,
      )
      .toList();
}

class Fields {
  final int age;
  final double salary;

  Fields({
    required this.age,
    required this.salary,
  });
}
