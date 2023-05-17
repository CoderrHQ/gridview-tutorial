import 'package:flutter/material.dart';

class GridViewBuilder extends StatelessWidget {
  const GridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 24,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        // mainAxisExtent: 200,
        childAspectRatio: 2 / 3,
      ),
      itemBuilder: (context, index) {
        return Image.network(
          'https://picsum.photos/200/300?random=$index',
          fit: BoxFit.cover,
        );
      },
    );
  }
}
