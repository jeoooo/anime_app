// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, library_private_types_in_public_api

import 'package:anime_app/widgets/anime_categories.dart';
import 'package:anime_app/widgets/hero_image.dart';
import 'package:flutter/material.dart';

class HeroScrollScreen extends StatefulWidget {
  const HeroScrollScreen({super.key});

  @override
  _HeroScrollScreenState createState() => _HeroScrollScreenState();
}

class _HeroScrollScreenState extends State<HeroScrollScreen> {
  final ScrollController _scrollController = ScrollController();
  double _heroHeight = 400;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      double offset = _scrollController.offset;
      setState(() {
        _heroHeight = (400 - offset).clamp(0, 400);
      });
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            SizedBox(
              height: _heroHeight,
              child: HeroImage(
                imageUrl:
                    'https://cdn.myanimelist.net/images/anime/1404/98182l.jpg',
                heroTag: 'hero-image',
              ),
            ),
            AnimeCategories(),
            AnimeCategories(categoryName: "New Episode Releases"),
            AnimeCategories(categoryName: "Winter 2024"),
          ],
        ),
      ),
    );
  }
}
