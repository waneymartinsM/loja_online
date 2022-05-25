import 'package:flutter/material.dart';
import 'package:loja_online/constants.dart';
import 'package:loja_online/models/product.dart';


class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.product,
    required this.press
  }) : super(key: key);

  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPaddin),
              decoration: BoxDecoration(
                color: product.color,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(product.image),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),
            child: Text(
              product.title,
              style: const TextStyle(
                  color: kTextLightColor
              ),
            ),
          ),
          Text(
            "R\$${product.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}