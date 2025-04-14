import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'checkout.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({super.key});

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  final List<String> labels = ['Name', 'Card Number', 'Expiry Date', 'CVC'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(CupertinoIcons.back),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Colors.white,
            pinned: true,
            title: Text(
              'Payment Method',
              style: TextStyle(
                color: Colors.black,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Payment logos
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildPaymentLogo(
                    'https://adasjisroel.s3.eu-central-1.amazonaws.com/wp-content/uploads/2023/05/29181113/paypal-logo-png-7.png',
                  ),
                  _buildPaymentLogo(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfXXnhrxiaPRLFCLCRLAM0xCKw9elF6BOLR3_088JqIl-5k4G_4khafCs1jsGbWctF2d0&usqp=CAU',
                  ),
                  _buildPaymentLogo(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIjhb3u5RBDP10cw-cwtGFOVR_HENoUDLwGg&s',
                  ),
                ],
              ),
            ),
          ),
          // Text fields
          SliverList(
            delegate: SliverChildBuilderDelegate((_, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: labels[index],
                    border: OutlineInputBorder(),
                  ),
                ),
              );
            }, childCount: labels.length),
          ),
          // Submit button
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(top: 200, left: 30 , right: 30),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue.shade800,
                  minimumSize: const Size(double.infinity, 70),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=>CheckoutScreen()));
                },
                child: const Text(
                  'Next',
                  style: TextStyle(fontSize: 24 , fontWeight: FontWeight.bold  , color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPaymentLogo(String imageUrl) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image.network(
          imageUrl,
          height: 60,
          width: 80,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
