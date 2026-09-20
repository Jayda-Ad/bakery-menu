import 'package:flutter/material.dart';
import 'package:product/product.dart';

class ProductDetail extends StatelessWidget {
  final Product product;

  const ProductDetail({super.key, required this.product});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail", style: TextStyle(fontFamily: "Calligraphy",fontSize: 35,),),),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(product.image),
            ),
            SizedBox(height: 15),
            Text(
              product.name,
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold, fontFamily: "Calligraphy", color: Color(0xffa47148),),
            ),
            //SizedBox(height: 5),
            Text(
              product.price,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.brown),
            ),
            SizedBox(height: 20),
            Text(
              product.description,
              style: TextStyle(fontSize: 16, color: Colors.brown, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      )
    );
  }
}
