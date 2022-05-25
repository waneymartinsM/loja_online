import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loja_online/constants.dart';
import 'package:loja_online/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar(){
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const FaIcon(
          FontAwesomeIcons.arrowLeft,
          color: Colors.black87,
        ),
        onPressed: () {},
      ),


      actions: [
        IconButton(
          onPressed: (){},
          icon: const FaIcon(
            FontAwesomeIcons.search,
            color: Colors.black87,
          ),
        ),
        IconButton(
          onPressed: (){},
          icon: const Icon(
            FontAwesomeIcons.cartPlus,
            color: Colors.black87,
          ),
        ),
        const SizedBox(width: kDefaultPaddin / 2)
      ],

    );
  }
}