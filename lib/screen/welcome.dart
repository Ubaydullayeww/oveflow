import 'package:flutter/material.dart';
import 'package:overflow/screen/product/product_screen.dart';

class Welcome extends StatefulWidget {
  const Welcome({super.key});

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image(
            image: AssetImage('assets/images/bk_pictue.jpg'),
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 75),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Spacer(flex: 2),
                Text(
                  'SHOPIN',
                  style: TextStyle(
                    color: Colors.purple.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 60,
                    letterSpacing: 8,
                  ),
                ),
                SizedBox(height: 90),
                Text(
                  'Amazing shopping',
                  style: TextStyle(
                    color: Colors.purple.shade900,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),

                Text(
                  'Exprience a new way',
                  style: TextStyle(color: Colors.purple.shade600 , fontSize: 16),
                ),

                Text(
                  'of shopping.',
                  style: TextStyle(color: Colors.purple.shade600 , fontSize: 16),
                ),
                SizedBox(height: 300),

                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (e)=> ProductScreen()));
                    },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple.shade700,
                  minimumSize: Size(double.infinity, 70),
                  shape:  RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(10),
                  ),
                ),
                    child: Text('Explore' , style: TextStyle(fontSize: 17 , fontWeight: FontWeight.bold ,color: Colors.white),) ,

                ),
                SizedBox(height: 200),

                // Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
