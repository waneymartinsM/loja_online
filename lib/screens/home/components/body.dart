import 'package:flutter/material.dart';
import 'package:loja_online/constants.dart';
import 'package:loja_online/models/product.dart';
import 'package:loja_online/screens/details/details_screen.dart';
import 'package:loja_online/screens/home/components/categories.dart';
import 'package:loja_online/screens/home/components/item_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Text(
            "Feminino",
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith
              (fontWeight: FontWeight.bold),
          ),
        ),

        const Categories(),
        Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                  product: products[index],
                  press: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: products[index],
                          ),
                      ),
                  ),
                ),
              ),
            ),
        ),
      ],
    );
  }
}




