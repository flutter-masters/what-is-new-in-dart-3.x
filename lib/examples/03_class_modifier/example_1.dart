// https://dart.dev/language/class-modifiers
// https://dart.dev/language/modifier-reference#valid-combinations

void main() {}

abstract interface class Notifier {
  void addListener();
}

base class StateNotifier extends Notifier {
  @override
  void addListener() {}
}

interface class NoExtend {}

class MySubclass extends NoExtend {}
