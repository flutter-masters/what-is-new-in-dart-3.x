import 'dart:math';

import 'package:dart_3_features/widgets/appbar/flutter_master_app_bar.dart';
import 'package:dart_3_features/widgets/dialog/alert_dialog.dart';
import 'package:flutter/material.dart';

class Example1 extends StatelessWidget {
  const Example1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const FlutterMastersAppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final error = getRandomError();

            final result = mapError(error);

            FlutterMastersDialog.show(
              context: context,
              message: result.message,
              icon: result.icon,
            );
          },
          child: const Text('show'),
        ),
      ),
    );
  }

  RequestError getRandomError() {
    return RequestError.values[Random().nextInt(2)];
  }

  IconMessage mapError(RequestError error) {
    switch (error) {
      case RequestError.network:
        return const IconMessage(icon: Icons.close, message: 'Network error');
      case RequestError.notFound:
        return const IconMessage(
            icon: Icons.code, message: 'Resource not found');
      case RequestError.unauthorized:
        return const IconMessage(icon: Icons.logout, message: 'Unauthorized');
    }
  }
}

class IconMessage {
  const IconMessage({
    required this.icon,
    required this.message,
  });
  final IconData icon;
  final String message;
}

enum RequestError {
  network,
  notFound,
  unauthorized,
}
