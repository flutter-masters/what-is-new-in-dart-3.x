import 'dart:developer';

void main() {
  final state = getState();

  if (state is LoadingState) {
    log('Loading state');
  } else if (state is LoadedState) {
    log('Loaded state');
  } else if (state is FailedState) {
    log('failure state');
  }

  switch (state) {
    case LoadingState():
      log('Loading');
    case LoadedState(data: final data):
      state.data;
      log('Loaded $data');
    case FailedState():
      log('failure state');
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
