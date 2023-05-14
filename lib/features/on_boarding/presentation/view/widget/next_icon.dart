import 'package:flutter/material.dart';

class NextIcon extends StatelessWidget {
  const NextIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          boxShadow: const [
            BoxShadow(color: Colors.black, spreadRadius: 1)
          ]
      ),
      child: const CircleAvatar(
        radius: 45,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          backgroundColor: Colors.black,
          radius: 35,
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
            size: 25,
          ),
        ),
      ),
    );
  }
}