import 'package:flutter/material.dart';
import 'package:product/product.dart';
import 'package:product/product_detail.dart';

class Productcard extends StatelessWidget {
  final Product productItem;
  Productcard({super.key, required this.productItem});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetail(product: productItem),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                child: Image.asset(
                  productItem.image,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 12, 4),
              child: Text(
                productItem.name,
                style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xff603808),fontSize: 18,),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(18, 2, 12, 12),
              child: Text(
                productItem.price,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff583101),
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
