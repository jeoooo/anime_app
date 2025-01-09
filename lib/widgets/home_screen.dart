import 'package:anime_app/theme/app_theme.dart';
import 'package:anime_app/widgets/hero_widget.dart';
import 'package:anime_app/widgets/anime_categories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();
  double _heroHeight = 400;
  int _selectedIndex = 0;

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

  // Handle screen selection
  static const List<Widget> _pages = <Widget>[
    HeroWidget(
      imageUrl: 'https://cdn.myanimelist.net/images/anime/1404/98182l.jpg',
      heroTag: 'hero-image',
    ),
    Center(child: Text('Catalog')),
    Center(child: Text('My List')),
    Center(child: Text('Download')),
    Center(child: Text('Profile')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverAppBar(
            expandedHeight: 300.0, // Increased height
            floating: false,
            pinned: true,
            flexibleSpace: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                var top = constraints.biggest.height;
                return FlexibleSpaceBar(
                  title: AnimatedOpacity(
                    opacity: top <= kToolbarHeight ? 1.0 : 0.0,
                    duration: const Duration(milliseconds: 300),
                    child: const Text('Anime App'),
                  ),
                  background: Stack(
                    fit: StackFit.expand,
                    children: [
                      Image.network(
                        'https://cdn.myanimelist.net/images/anime/1404/98182l.jpg',
                        fit: BoxFit.cover,
                      ),
                      Positioned(
                        bottom: 16.0,
                        left: 16.0,
                        child: AnimatedOpacity(
                          opacity: top > kToolbarHeight ? 1.0 : 0.0,
                          duration: const Duration(milliseconds: 300),
                          child: const Text(
                            'Main Image Text',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  // Navigate to the search screen
                },
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                if (_selectedIndex == 0) ...[
                  const SizedBox(height: 20),
                  const AnimeCategories(),
                  const SizedBox(height: 20),
                  const AnimeCategories(),
                  const SizedBox(height: 20),
                  const AnimeCategories(),
                ] else ...[
                  _pages[_selectedIndex],
                ],
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'Catalog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'My List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download),
            label: 'Download',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        showUnselectedLabels: true,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.grey[600],
      ),
    );
  }
}
