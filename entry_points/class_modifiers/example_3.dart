void main() {
  final state = getState();

  switch (state) {
    case LoadingState():
      print('Loading');
    case LoadedState(data: final data):
      state.data;
      print('Loaded $data');
    case FailedState():
      print('Failed');
  }
}

State getState() => LoadedState("fake data");

abstract class State {}

class LoadingState extends State {}

class LoadedState extends State {
  LoadedState(this.data);
  final String data;
}

class FailedState extends State {}
