import 'package:flutter/material.dart';
import 'package:gird_view_tutorial/grid_view.dart';
import 'package:gird_view_tutorial/grid_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GridView'),
      ),
      body: const GridViewBuilder(),
    );
  }
}
