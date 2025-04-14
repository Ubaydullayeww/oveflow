import 'package:flutter/material.dart';
import 'package:overflow/screen/product/product_screen.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _Order();
}

class _Order extends State<Order> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/bk_pictue.jpg',
            fit: BoxFit.cover,
            height: height,
            width: width,
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 2),
                  Text(
                    'Congratulations',
                    style: TextStyle(
                      color: Colors.purple.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 35, // Responsive text size
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height * 0.05),
                  Text(
                    'Your order Sucsesfuly placed',
                    style: TextStyle(
                      color: Colors.purple.shade900,
                      fontWeight: FontWeight.normal,
                      fontSize: width * 0.06,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: height * 0.1),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => ProductScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple.shade700,
                      minimumSize: Size(double.infinity, height * 0.08),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Continue Shopping',
                      style: TextStyle(
                        fontSize: width * 0.045,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
