import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StaggeredGridTile.count(
      crossAxisCellCount: 1,
      mainAxisCellCount: 2,
      child: Card(
        elevation: 12,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(8),
              child: Text(
                "20% Off",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
              ),
            ),
            Stack(
              children: [
                Image(
                  image: NetworkImage(
                      "https://cdn.shopify.com/s/files/1/1000/7716/products/Levitating_planter_Lyfe_by_Flyte_available_in_US_2-01_5db80824-57d4-48da-a83b-0ce52250e231_900x.jpg?v=1648534224"),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.only(right: 12, bottom: 12),
                    decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      Icons.favorite_rounded,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
            Text(
              "FLYTE PLANTER",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
            ),
            Text("\$ 20"),
          ],
        ),
      ),
    );
  }
}
