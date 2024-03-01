import 'dart:math';

import '../../core/icon.dart';
import '../../core/tuples.dart';

void main() {
  final error = getRandomError();
  late final IconData icon;
  late final String message;

  switch (error) {
    case RequestError.network:
      icon = Icons.close;
      message = 'Network error';
    case RequestError.notFound:
      icon = Icons.code;
      message = 'Resource not found';
    case RequestError.unauthorized:
      icon = Icons.logout;
      message = 'Unauthorized';
  }

  print("icons: $icon");
  print("message: $message");

  final values = {
    RequestError.network: Tuple2(Icons.close, 'Network error'),
    RequestError.notFound: Tuple2(Icons.code, 'Resource not found'),
    RequestError.unauthorized: Tuple2(Icons.logout, 'Unauthorized'),
  };

  print("icon: ${values[error]?.item1}");
  print("message: ${values[error]?.item2}");

  Dropdown(
    value: 0,
    options: [
      Option(label: 'Option 0', value: 0),
      Option(label: 'Option 1', value: 1),
    ],
    onChanged: (_) {},
  );
}

enum RequestError { network, notFound, unauthorized }

RequestError getRandomError() {
  return RequestError.values[Random().nextInt(2)];
}

class Dropdown<T> {
  Dropdown({
    required this.value,
    required this.options,
    required this.onChanged,
  });

  final T value;
  final List<Option> options;
  final void Function(T value) onChanged;
}

class Option<T> {
  final String label;
  final T value;

  Option({
    required this.label,
    required this.value,
  });
}
