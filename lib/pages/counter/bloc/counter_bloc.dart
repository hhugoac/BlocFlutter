import 'dart:async';

import 'package:flutter_block/state_management/bloc.dart';

class CounterBloc extends Bloc {}

/*
enum CounterEvent {
  decrement,
  increment,
}*/

/*abstract class CounterEvent {
  final int factor;

  CounterEvent(this.factor);
}

class Increment extends CounterEvent {
  Increment(super.factor);
}

class Decrement extends CounterEvent {
  Decrement(super.factor);
}

class CounterBloc {
  int _counter = 0;
  int get counter => _counter;

  final _controller = StreamController<int>.broadcast();
  Stream<int> get stream => _controller.stream;

  void counterEvent(CounterEvent event) {
    if (event is Increment) {
      _emit(_counter + event.factor);
    } else if (event is Decrement) {
      _emit(_counter - event.factor);
    }
    /*switch (event) {
      case CounterEvent.decrement:
        _emit(_counter--);
        break;
      case CounterEvent.increment:
        _emit(_counter++);
        break;
    }*/
  }

  void _emit(int newCounter) {
    if (newCounter != _counter) {
      _counter = newCounter;
      _controller.add(_counter);
    }
  }

  void dispose() {
    _controller.close();
  }
}*/
