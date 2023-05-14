import 'package:flutter/material.dart';

class ProductRating extends StatelessWidget {
  const ProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Row(
        children: const [
          Icon(
            Icons.star,
            size: 30,
            color: Colors.amberAccent,
          ),
          Icon(
            Icons.star,
            size: 30,
            color: Colors.amberAccent,
          ),
          Icon(
            Icons.star,
            size: 30,
            color: Colors.amberAccent,
          ),
          Icon(
            Icons.star,
            size: 30,
            color: Colors.amberAccent,
          ),
          Icon(
            Icons.star,
            size: 30,
            color: Colors.white,
            shadows: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 4,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
