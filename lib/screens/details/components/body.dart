import 'package:flutter/material.dart';
import 'package:loja_online/constants.dart';
import 'package:loja_online/models/product.dart';
import 'package:loja_online/screens/details/components/add_to_cart.dart';
import 'package:loja_online/screens/details/components/color_and_size.dart';
import 'package:loja_online/screens/details/components/counter_with_fav_btn.dart';
import 'package:loja_online/screens/details/components/description.dart';
import 'package:loja_online/screens/details/components/product_title_with_image.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
    required this.product
  }) : super(key: key);

  final Product product;

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
                  margin: EdgeInsets.only(top: size.height * 0.4),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    )
                  ),
                  child: Column(
                    children: [
                      ColorAndSize(product: product),
                      Description(product: product),
                      const CounterWithFavBnt(),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product)
              ]
            ),
          )
        ],
      ),
    );
  }
}










