import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loja_online/constants.dart';
import 'package:loja_online/models/product.dart';
import 'package:loja_online/screens/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({
    Key? key,
    required this.product
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: const FaIcon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          onPressed: (){},
          icon: const FaIcon(
            FontAwesomeIcons.search,
            color: Colors.white,
          ),
        ),
        IconButton(
          onPressed: (){},
          icon: const Icon(
            FontAwesomeIcons.cartPlus,
            color: Colors.white,
          ),
        ),
        const SizedBox(width: kDefaultPaddin / 2),
      ],
    );
  }
}
