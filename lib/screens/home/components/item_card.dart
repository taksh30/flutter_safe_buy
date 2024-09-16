import 'package:flutter/material.dart';
import 'package:safe_buy/constants.dart';
import 'package:safe_buy/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function onTap;
  const ItemCard({
    super.key,
    required this.product,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: AspectRatio(
                aspectRatio: 1,
                child: Container(
                  padding: EdgeInsets.all(kDefaultPadding),
                  // height: 180,
                  // width: 160,
                  decoration: BoxDecoration(
                    color: product.color,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Image.asset(
                    product.image,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 3),
              child: Text(
                product.title,
                style: TextStyle(color: kTextLightColor),
              ),
            ),
            Text(
              '${product.price}/-',
              style: const TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
