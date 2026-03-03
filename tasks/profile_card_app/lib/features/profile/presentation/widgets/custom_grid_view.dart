import 'package:flutter/material.dart';

class CustomGridView extends StatelessWidget {
  final String imageUrl;
  const CustomGridView({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.fill),
      ),
    );
  }
}
