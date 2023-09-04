import 'package:flutter/material.dart';

import '../widget/governorate_grid_view_builder.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "سياحه",
          style: TextStyle(fontSize: 30),
        ),
        backgroundColor: const Color(0xff5F7E90),
      ),
      body: const GovernorateGridViewBuilder(),
    );
  }
}

