import 'package:flutter/material.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reviews (45)'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          ReviewItem(
            name: 'Jessie Phelps',
            date: 'Jan 06, 2020',
            rating: 5,
            title: 'Great chair',
            content: 'The size and color blends well with our mid century home. Sturdy and comfortable. Very happy with this purchase!',
          ),
          Divider(height: 32),
          ReviewItem(
            name: 'Larry May',
            date: 'Dec 14, 2019',
            rating: 5,
            title: 'Love new chairs',
            content: 'Very happy with my new chair. This is a great addition to my office.',
          ),
          Divider(height: 32),
          ReviewItem(
            name: 'Bradley Parks',
            date: 'Dec 11, 2019',
            rating: 4,
            title: 'Place to relax in bedroom',
            content: 'Well worth the long wait for delivery. Nice comfy spot to decompress at the end of the day and enjoy a good book.',
          ),
          Divider(height: 32),
          ReviewItem(
            name: 'Jackson Rogers',
            date: 'Nov 12, 2019',
            rating: 5,
            title: 'A bit of a wait, but worth it.',
            content: 'Goes great with our decor. Professional delivery, too. Thanks.',
          ),
        ],
      ),
    );
  }
}

class ReviewItem extends StatelessWidget {
  final String name;
  final String date;
  final int rating;
  final String title;
  final String content;

  const ReviewItem({
    required this.name,
    required this.date,
    required this.rating,
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            Text(
              'Review left on $date',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: List.generate(5, (index) {
            return Icon(
              index < rating ? Icons.star : Icons.star_border,
              color: Colors.amber,
              size: 20,
            );
          }),
        ),
        SizedBox(height: 8),
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        SizedBox(height: 8),
        Text(
          content,
          style: TextStyle(
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}