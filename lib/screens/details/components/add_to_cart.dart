import 'package:flutter/material.dart';
import 'package:safe_buy/constants.dart';
import 'package:safe_buy/models/product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.only(right: kDefaultPadding),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              ),
            ),
            child: IconButton(
                onPressed: () {},
                icon:
                    const Icon(Icons.shopping_cart_checkout)),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(18)),
                      backgroundColor: product.color),
                  onPressed: () {},
                  child: const Text(
                    'BUY NOW',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}