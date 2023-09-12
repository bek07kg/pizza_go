import 'package:flutter/material.dart';
import 'package:pizza_go/modules/home/view/home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pizza Go App',
      home: HomeView(),
    );
  }
}
