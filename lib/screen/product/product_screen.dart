import 'package:flutter/material.dart';

import 'detail.dart';

void main() {
  runApp(MaterialApp(
    home: ProductScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int _selectedIndex = 0;
  final List<String> _categories = ['New', 'Furniture', 'Electronic', 'Fashion'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            centerTitle: false,
            title: Text('Product List', style: TextStyle(fontSize: 40, fontWeight: FontWeight.normal)),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search, size: 28, color: Colors.black)
              ),
              SizedBox(width: 10),
            ],
          ),
          SliverPersistentHeader(
            pinned: true,
            delegate: CategoryTabsHeaderDelegate(
              selectedIndex: _selectedIndex,
              categories: _categories,
              onTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 10, right: 10),
              child: Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.grid_view, color: Colors.grey),
                ),
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.all(12.0),
            sliver: SliverGrid(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                childAspectRatio: 0.75,
              ),
              delegate: SliverChildListDelegate([
                ProductCard(
                  backgroundColor: Colors.lightBlue[50]!,
                  price: 879.00,
                  imagePath: 'assets/images/chair.webp',
                ),
                ProductCard(
                  backgroundColor: Color(0xFFFFECDD),
                  price: 2800.00,
                  imagePath: 'assets/images/bike.jpeg',
                ),
                ProductCard(
                  backgroundColor: Color(0xFFFFF5DD),
                  price: 120.00,
                  imagePath: 'assets/images/trashchan.png',
                ),
                ProductCard(
                  backgroundColor: Color(0xFFDDF5F9),
                  price: 350.00,
                  imagePath: 'assets/images/bag.webp',
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryTabsHeaderDelegate extends SliverPersistentHeaderDelegate {
  final int selectedIndex;
  final List<String> categories;
  final Function(int) onTap;

  CategoryTabsHeaderDelegate({
    required this.selectedIndex,
    required this.categories,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.white,
      alignment: Alignment.centerLeft,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(categories.length, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: GestureDetector(
                onTap: () => onTap(index),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      categories[index],
                      style: TextStyle(
                        color: selectedIndex == index ? Colors.black : Colors.grey,
                        fontWeight: selectedIndex == index ? FontWeight.w500 : FontWeight.normal,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: 4),
                    Container(
                      height: 2,
                      width: 30,
                      color: selectedIndex == index ? Colors.red : Colors.transparent,
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  @override
  double get maxExtent => 40.0;

  @override
  double get minExtent => 40.0;

  @override
  bool shouldRebuild(covariant CategoryTabsHeaderDelegate oldDelegate) {
    return selectedIndex != oldDelegate.selectedIndex;
  }
}

class ProductCard extends StatelessWidget {
  final Color backgroundColor;
  final double price;
  final String imagePath;

  const ProductCard({
    required this.backgroundColor,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductDetailScreen(
              price: price,
              imagePath: imagePath,
            ),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  imagePath,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.image_not_supported, size: 80, color: Colors.black54);
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text('···', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

