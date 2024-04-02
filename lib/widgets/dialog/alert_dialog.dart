import 'package:flutter/material.dart';

final class FlutterMastersDialog {
  static show({
    required BuildContext context,
    required String message,
    required IconData icon,
  }) =>
      showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(icon),
              Text(message),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      );
}
