import 'package:counter_bloc/bloc/counter_bloc.dart';
import 'package:counter_bloc/counter_bloc_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        useMaterial3: true,
      ),
      home: BlocProvider(
        //   create: (_) => CounterCubit(),
        //   child: const CounterCubitPage(),
        create: (_) => CounterBloc(),
        child: const CounterBlocPage(),
      ),
    );
  }
}
