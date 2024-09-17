import 'package:flutter/material.dart';
import 'package:safe_buy/constants.dart';
import 'package:safe_buy/models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Safe Buy',
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(text: 'Price\n'),
                    TextSpan(
                      text: '${product.price}/-',
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall
                          ?.copyWith(
                              color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                width: 100,
              ),
              Expanded(
                child: Hero(
                  tag: '${product.id}',
                  child: Image.asset(
                    width: 160,
                    height: 160,
                    product.image,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
