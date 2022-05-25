import 'package:flutter/material.dart';
import 'package:loja_online/constants.dart';
import 'package:loja_online/models/product.dart';

class ProductTitleWithImage extends StatelessWidget {
  const ProductTitleWithImage({
    Key? key,
    required this.product
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Punho Duplo Simples",
            style: TextStyle(
                color: Colors.white
            ),
          ),
          Text(
            product.title,
            style: Theme.of(context)
                .textTheme
                .headline4
                ?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: kDefaultPaddin),
          Row(
            children: [
              RichText(
                text: TextSpan(
                    children: [
                      const TextSpan(text: "Preço\n"),
                      TextSpan(text: "R\$${product.price}",
                        style: Theme.of(context)
                            .textTheme
                            .headline4
                            ?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ]
                ),
              ),
              const SizedBox(width: kDefaultPaddin),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}