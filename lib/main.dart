import 'package:flutter/material.dart';
import 'package:torsim/screns/home_page.dart';
import 'package:torsim/utl/app_routters.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp( home: HomePage(),);
  }
}

