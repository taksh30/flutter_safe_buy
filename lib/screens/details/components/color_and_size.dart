import 'package:flutter/material.dart';
import 'package:safe_buy/constants.dart';
import 'package:safe_buy/models/product.dart';
import 'package:safe_buy/screens/details/components/details_body.dart';

class ColorAndSize extends StatelessWidget {
  const ColorAndSize({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Color'),
              Row(
                children: [
                  ColorDot(
                    isSelected: true,
                    color: Color(0xFF356C95),
                  ),
                  ColorDot(
                    color: Color(0xFFF8C078),
                  ),
                  ColorDot(
                    color: Color(0xFFA29B9B),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
              text: TextSpan(style: TextStyle(color: kTextColor), children: [
            const TextSpan(text: 'Size\n'),
            TextSpan(
                text: '${product.size}',
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(fontWeight: FontWeight.bold)),
          ])),
        )
      ],
    );
  }
}
