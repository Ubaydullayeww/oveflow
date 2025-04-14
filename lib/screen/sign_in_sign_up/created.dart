import 'package:flutter/material.dart';
import 'package:overflow/screen/product/product_screen.dart';
import 'package:overflow/screen/sign_in_sign_up/sign_in.dart';

class Created extends StatefulWidget {
  const Created({super.key});

  @override
  State<Created> createState() => _CreatedScreen();
}

class _CreatedScreen extends State<Created> {

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
                      fontSize: width * 0.12, // Responsive text size
                      letterSpacing: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: height * 0.05),
                  Text(
                    'Your Account',
                    style: TextStyle(
                      color: Colors.purple.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: width * 0.06,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    'Sucsesfully created',
                    style: TextStyle(
                      color: Colors.purple.shade600,
                      fontSize: width * 0.04,
                    ),
                  ),
                  Text(
                    'of shopping.',
                    style: TextStyle(
                      color: Colors.purple.shade600,
                      fontSize: width * 0.04,
                    ),
                  ),
                  SizedBox(height: height * 0.1),
                  ElevatedButton(
                    onPressed: () {
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple.shade700,
                      minimumSize: Size(double.infinity, height * 0.08),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'Sign In',
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
