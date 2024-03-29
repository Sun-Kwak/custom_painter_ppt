import 'package:custom_painter/Widget/dragDown_floating_button.dart';
import 'package:custom_painter/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'SebangGothic'
      ),
      debugShowCheckedModeBanner: false,
      home: const Scaffold(
          floatingActionButton: DragDownFloatingActionButton(),
          body: HomeView()),
    );
  }
}
