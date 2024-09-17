import 'package:flutter/material.dart';
import 'package:safe_buy/constants.dart';
import 'package:safe_buy/models/product.dart';
import 'package:safe_buy/screens/details/components/add_to_cart.dart';
import 'package:safe_buy/screens/details/components/cart_counter.dart';
import 'package:safe_buy/screens/details/components/color_and_size.dart';
import 'package:safe_buy/screens/details/components/description.dart';
import 'package:safe_buy/screens/details/components/product_title_with_image.dart';

class DetailsBody extends StatelessWidget {
  final Product product;
  const DetailsBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.only(
                      top: size.height * 0.12,
                      left: kDefaultPadding,
                      right: kDefaultPadding),
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: 500,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      Description(product: product),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      const CartCounter(),
                      SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      AddToCart(product: product)
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    super.key,
    required this.color,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: kDefaultPadding / 4,
        right: kDefaultPadding / 2,
      ),
      padding: const EdgeInsets.all(2.5),
      height: 19,
      width: 19,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}
