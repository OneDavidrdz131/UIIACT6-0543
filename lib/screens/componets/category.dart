import 'package:tablarodriguez0543/model/product_model.dart';
import 'package:flutter/material.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.85),
        itemBuilder: (context, index) => CategoryCard(
              product: products[index],
            ));
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.product,
  }) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        padding: const EdgeInsets.all(1.0),
        decoration: BoxDecoration(
            color: product.color, borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: [
            Image.asset(
              product.image,
              height: 100,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              product.nombre,
              style: const TextStyle(
                  fontSize: 9,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              product.anio,
              style: const TextStyle(
                  fontSize: 9,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              product.motor,
              style: const TextStyle(
                  fontSize: 9,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            Text(
              product.traccion,
              style: const TextStyle(
                  fontSize: 9,
                  color: Colors.white,
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "${product.valor}.",
              style: const TextStyle(
                fontSize: 13,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
