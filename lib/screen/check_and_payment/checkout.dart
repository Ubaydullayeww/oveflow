import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overflow/screen/check_and_payment/order.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // App Bar
          SliverAppBar(
            pinned: true,
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios, size: 20),
              onPressed: () {},
            ),
            title: const Text(
              'Back',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            titleSpacing: -10,
          ),

          // Main Content
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                const Text(
                  'Checkout',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A1F36),
                  ),
                ),
                const SizedBox(height: 30),

                // Shipping Address Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Shipping Adress',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A1F36),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Change',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                const Text(
                  'Berlin, str. Schinkenstraße 35',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const Text(
                  '10114 Berlin, Germany',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 30),

                // Payment Section
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Payment',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A1F36),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Change',
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Container(
                  width: 85,
                  height: 50,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircleAvatar(
                          radius: 15,
                          backgroundColor: Colors.red,
                        ),
                        Transform.translate(
                          offset: const Offset(
                            -10,
                            0,
                          ), // Use Transform.translate instead of negative margin
                          child: CircleAvatar(
                            radius: 15,
                            backgroundColor: Colors.amber.shade700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  '*** **** **** 5708',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const Text(
                  'Gabriel Chapman',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const Text(
                  '06/23',
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                ),
                const SizedBox(height: 30),

                // Review Products Section
                const Text(
                  'Review Products',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF1A1F36),
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildProductItem(
                      color: Colors.lightBlue.shade50,
                      icon: Icons.phone_android,
                      iconColor: Colors.blue,
                    ),
                    _buildProductItem(
                      color: Colors.blue.shade50,
                      icon: Icons.chair,
                      iconColor: Colors.orange,
                    ),
                    _buildProductItem(
                      color: Colors.orange.shade50,
                      icon: Icons.lightbulb,
                      iconColor: Colors.black,
                    ),
                  ],
                ),

                // Add some space before the button
                const SizedBox(height: 150),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> Order()));
                    },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade800,
                  minimumSize: Size(double.infinity, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
                    child: Text('Place Order',  style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: 24),),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildProductItem({
    required Color color,
    required IconData icon,
    required Color iconColor,
  }) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(child: Icon(icon, size: 40, color: iconColor)),
    );
  }
}
