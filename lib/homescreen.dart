import 'package:flutter/material.dart';
import 'package:product/product.dart';
import 'package:product/productcard.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  final List<Product> products = [
    Product(name: "Croissant", price: "60 LE", image: "assets/images/croissants.png", description: "A buttery, flaky pastry perfect for breakfast."),
    Product(name: "Cookies", price: "40 LE", image: "assets/images/chocolatechipcookies.png", description: "Crispy on the outside, soft on the inside with chocolate chips."),
    Product(name: "Brownies", price: "50 LE", image: "assets/images/brownies.png", description: "Rich and fudgy chocolate brownies."),
    Product(name: "Cinnamon Roll", price: "60 LE", image: "assets/images/cinnamonroll.png", description: "Soft roll with cinnamon filling and glaze."),
    Product(name: "Glazed Donut", price: "30 LE", image: "assets/images/donuts.png", description: "Classic donut with sweet glaze."),
    Product(name: "Vanilla Cupcake", price: "30 LE", image: "assets/images/cupcake.png", description: "Light vanilla cupcake with creamy frosting."),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffd4a276),
      appBar: AppBar(
        backgroundColor: Color(0xffa47148),
        title: Text(
          "Jayda's Bakery",
          style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xffffedd8),fontFamily: "Calligraphy",fontSize: 35,),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (context, index) {
            return Productcard(productItem: products[index]);
          },
        ),
      ),
    );
  }
}
