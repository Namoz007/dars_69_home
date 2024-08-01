import 'package:dars_69_lesson/bloc/book_bloc/book_bloc.dart';
import 'package:dars_69_lesson/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen()
      ),
    );
  }
}
