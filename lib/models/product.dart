import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Bolsa Elegante",
      price: 29,
      size: 12,
      description: dummyText,
      image: "images/bolsa_1.png",
      color: const Color(0xFF3D82AE)), //0xFFC5CAE9
  Product(
      id: 2,
      title: "Bolsa Elegante ",
      price: 29,
      size: 8,
      description: dummyText,
      image: "images/bolsa_2.png",
      color: const Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Bolsa Elegante",
      price: 29,
      size: 10,
      description: dummyText,
      image: "images/bolsa_3.png",
      color: const Color(0xFF989493)),
  Product(
      id: 4,
      title: "Bolsa Elegante",
      price: 29,
      size: 11,
      description: dummyText,
      image: "images/bolsa_4.png",
      color: const Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Bolsa Elegante",
      price: 29,
      size: 12,
      description: dummyText,
      image: "images/bolsa_5.png",
      color: const Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Bolsa Elegante",
    price: 29,
    size: 12,
    description: dummyText,
    image: "images/bolsa_6.png",
    color: const Color(0xFFAEAEAE),
  ),
];

String dummyText = "Tipo de Cinta: Punho Duplo. Tipo de Desenho: Simples. Estilo: Elegante. Tamanho do Bolsa: Pequeno. Quantidade: 1 pedaço. Tipo: Bolsa quadrada. Tecido/material: 100% Poliuretano. Material: Couro do Plutônio.";