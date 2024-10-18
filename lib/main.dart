import 'package:bloc_basic/bloc/counter_bloc.dart';
import 'package:bloc_basic/pages/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter basic BLOC",
      home: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => CounterBloc()),
        ],
        child: const CounterPage(),
      ),
    );
  }
}
