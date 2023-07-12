import 'package:flutter/material.dart';
import 'package:flutter_block/pages/counter/counter_cubit.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //final _bloc = CounterBloc();
  final _cubit = CounterCubit();

  @override
  void dispose() {
    _cubit.dispose();
    //_bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder<int>(
          stream: _cubit.stream,
          initialData: _cubit.state, //_bloc.counter,
          builder: (context, snapshot) => Text('${_cubit.state}'),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print('🫥');
        _cubit.increment();
        //_bloc.counterEvent(Decrement(10));
      }),
    );
  }
}
