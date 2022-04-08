// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
              child: Image(
            image: NetworkImage(
                "https://cdn.shopify.com/s/files/1/1000/7716/products/Levitating_planter_Lyfe_by_Flyte_available_in_US_2-01_5db80824-57d4-48da-a83b-0ce52250e231_900x.jpg?v=1648534224"),
          )),
          Expanded(
              child: Container(
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.7),
              borderRadius: BorderRadius.circular(12),
            ),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "FLYTE NIKOLA : Levitating Light Bulb",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text(
                      "In Stock",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    Expanded(child: Container()),
                    Text(
                      "92 reviews",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "4.0 ⭐",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    )
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 12),
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    width: double.infinity,
                    child: Text(
                      "Levitating light bulb inspired by and named in honor of the celebrated inventor Nikola Tesla, our NIKOLA model combines a classic, rich-toned Walnut base with our innovative MARCONI bulb in Chrome.",
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$ 19.9",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // ADD TO CART
                      },
                      style: ButtonStyle(
                        shape: MaterialStateProperty.resolveWith(
                          (states) => RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                        ),
                        backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Colors.white.withOpacity(0.2),
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                        child: Text(
                          "ADD TO CART",
                          style: TextStyle(fontSize: 18.0),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
