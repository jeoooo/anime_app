// lib/widgets/hero_widget.dart
// ignore_for_file: use_super_parameters

import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  final String imageUrl;
  final String heroTag;
  final double height;

  const HeroWidget({
    Key? key,
    required this.imageUrl,
    required this.heroTag,
    this.height = 400,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Hero(
        tag: heroTag,
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}
