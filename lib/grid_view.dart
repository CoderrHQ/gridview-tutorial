import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {
  const GridViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GridView(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: width * 0.5,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        // mainAxisExtent: 200,
        childAspectRatio: 9 / 16,
      ),
      children: Iterable.generate(10)
          .map(
            (number) => Image.network(
              'https://picsum.photos/200/300?random=$number',
              fit: BoxFit.cover,
            ),
          )
          .toList(),
    );
  }
}
