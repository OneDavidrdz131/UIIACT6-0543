import 'package:flutter/material.dart';

class Product {
  final String image, nombre, valor, anio, motor, traccion;
  final int id;
  final Color color;
  Product({
    required this.image,
    required this.anio,
    required this.motor,
    required this.traccion,
    required this.nombre,
    required this.valor,
    required this.color,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    nombre: "Mustang shelbygt500",
    image: "assets/images/FordMustang20-removebg-preview.png",
    anio: "2020",
    motor: "5.2L, V8 de 760HP y 625 lb-pie de Torque",
    traccion: "Tracera ",
    valor: "2,574,500.00",
    color: Color(0xFF9ba0fc),
  ),
  Product(
    id: 2,
    nombre: "Mustang Mach-E",
    image: "assets/images/mach-e.png",
    anio: "2023",
    motor: "Eléctrico",
    traccion: "Traccion total ",
    valor: "1.445 millones",
    color: Color(0xFFff6374),
  ),
  Product(
    id: 3,
    nombre: "Mustang ShelbyGt250",
    image: "assets/images/shelby350.png",
    anio: "2018",
    motor: "motor V8 de 5.2L",
    traccion: "Tracera ",
    valor: "879.000 ",
    color: Color(0xFFff6374),
  ),
  Product(
    id: 4,
    nombre: "Mustang Rtr",
    image: "assets/images/mustangrtr.png",
    anio: "2024",
    motor: "motor V8 de 5.0 litros",
    traccion: "Tracera ",
    valor: "211,77",
    color: Color(0xFF9ba0fc),
  ),
];
