import 'package:dart_3_features/core/employee.dart';
import 'package:dart_3_features/widgets/appbar/flutter_master_app_bar.dart';
import 'package:flutter/material.dart';

class Example2 extends StatefulWidget {
  const Example2({super.key});

  @override
  State<Example2> createState() => _Example2State();
}

class _Example2State extends State<Example2> {
  List<String> character = [];
  Employee employee = const Employee(name: '', salary: 0, age: 0);
  @override
  void initState() {
    super.initState();
    getData();
  }

  void getData() async {
    final futures = [
      getUser(),
      getCharacter(),
    ];
    final result = await Future.wait(futures);

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FlutterMastersAppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              employee.name.isEmpty ? 'Is Empty' : employee.name,
            ),
            Text(
              character.isEmpty ? 'Is Empty' : character[0],
            ),
          ],
        ),
      ),
    );
  }
}

Future<Employee> getUser() => Future.value(
      const Employee(
        name: 'Ben 10',
        age: 10,
        salary: 300,
      ),
    );
Future<List<String>> getCharacter() => Future.value(
      ['Grey matter', 'Kai green', 'Ditto', 'DiamondHead'],
    );
