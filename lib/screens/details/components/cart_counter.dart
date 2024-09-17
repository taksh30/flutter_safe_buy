import 'package:flutter/material.dart';
import 'package:safe_buy/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(
            icon: Icons.remove,
            onTap: () {
              setState(() {
                if (numOfItems > 1) {
                  numOfItems--;
                }
              });
            }),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
          child: Text(
            numOfItems.toString().padLeft(2, '0'),
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        buildOutlinedButton(
            icon: Icons.add,
            onTap: () {
              setState(() {
                numOfItems++;
              });
            }),
      ],
    );
  }

  SizedBox buildOutlinedButton(
      {required IconData icon, required Function onTap}) {
    return SizedBox(
      height: 32,
      width: 40,
      child: OutlinedButton(
          style: ButtonStyle(
              padding: const WidgetStatePropertyAll(EdgeInsets.zero),
              shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ))),
          onPressed: () {
            onTap();
          },
          child: Icon(icon)),
    );
  }
}