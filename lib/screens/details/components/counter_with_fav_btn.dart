import 'package:flutter/material.dart';
import 'package:loja_online/screens/details/components/cart_counter.dart';

class CounterWithFavBnt extends StatelessWidget {
  const CounterWithFavBnt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const CartCounter(),
        Container(
            padding: const EdgeInsets.all(4),
            height: 32,
            width: 32,
            decoration: const BoxDecoration(
              color: Color(0xFFFF6464),
              shape: BoxShape.circle,
            ),
            child: Image.asset("images/heart.png")
        ),
      ],
    );
  }
}