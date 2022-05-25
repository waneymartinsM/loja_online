import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loja_online/constants.dart';
import 'package:loja_online/models/product.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              ),
            ),
            child: IconButton(
              icon: FaIcon(
                FontAwesomeIcons.cartPlus,
                color: product.color,
              ),
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: product.color,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)
                    ),
                  ),
                  onPressed: (){},
                  child: Text(
                    "Adicionar ao carrinho".toUpperCase(),
                    style: const TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  )
              ),
            ),
          ),
        ],
      ),
    );
  }
}
