void main() {
  final state = getState();

  if (state is LoadingState) {
  } else if (state is LoadedState) {
  } else if (state is FailedState) {}

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
