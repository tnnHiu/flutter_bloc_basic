import 'package:bloc_basic/bloc/counter_bloc.dart';
import 'package:bloc_basic/bloc/counter_event.dart';
import 'package:bloc_basic/bloc/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final counterBloc = context.read<CounterBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Basic Bloc"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            return Text(
              "${state.count}",
              style: const TextStyle(
                fontSize: 53,
                color: Colors.cyan,
              ),
            );
          },
        ),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(CounterIncrementPressed());
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () {
              counterBloc.add(CounterDecrementPressed());
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
