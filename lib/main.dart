import 'package:dart_3_features/examples/01_records/example_1.dart';
import 'package:dart_3_features/examples/01_records/example_2.dart';
import 'package:dart_3_features/examples/01_records/example_3.dart';
import 'package:dart_3_features/widgets/appbar/flutter_master_app_bar.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FlutterMastersAppBar(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Example1(),
                ),
              ),
              child: const Text('Example 1'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Example2(),
                ),
              ),
              child: const Text('Example 2'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Example3(),
                ),
              ),
              child: const Text('Example 3'),
            ),
          ],
        ),
      ),
    );
  }
}

class ClassName extends ChangeNotifier {}
