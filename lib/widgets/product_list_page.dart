import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flyte/widgets/flyte_input.dart';
import 'package:flyte/widgets/product_card.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: FlyteInput(),
        ),
        Expanded(
            child: SingleChildScrollView(
          child: StaggeredGrid.count(
            crossAxisCount: 2,
            crossAxisSpacing: 6,
            children: [
              ProductCard(),
              ProductCard(),
              ProductCard(),
              ProductCard(),
            ],
          ),
        ))
      ],
    );
  }
}
