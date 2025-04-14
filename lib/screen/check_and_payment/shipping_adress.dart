import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overflow/screen/check_and_payment/payment_metod.dart';

import 'checkout.dart';

class CheckAndPaymentScreen extends StatefulWidget {
  const CheckAndPaymentScreen({super.key});

  @override
  State<CheckAndPaymentScreen> createState() => _CheckAndPaymentScreenState();
}

class _CheckAndPaymentScreenState extends State<CheckAndPaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(CupertinoIcons.back), title: Text('Back')),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            title: Text(
              'Shipping Adress',
              style: TextStyle(
                color: Colors.black,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              List<String> label = [
                'Country',
                'Town/City',
                'Postcode',
                'Street',
              ];
              return Padding(
                padding: const EdgeInsets.only(left: 15, right: 15, bottom: 20),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(labelText: label[index]),
                    ),

                     if(index == label.length -1)
                       Padding(
                         padding: const EdgeInsets.only(right: 100 , top: 20),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.start,
                           children: [
                         Text('This will be your default shipping address.' , style: TextStyle(color: Colors.grey),),
                         Text('This will be your default biling adress.' , style: TextStyle(color: Colors.grey),),
                           ],
                         ),
                       ),
                    if(index == label.length -1)
                    Padding(
                      padding: const EdgeInsets.only(top: 300),
                      child: Column(
                        children: [
                          ElevatedButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (_)=> CheckoutScreen() ));
                              },
                            style: ElevatedButton.styleFrom(
                              minimumSize: Size(double.infinity, 70),
                              backgroundColor: Colors.blue.shade800,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)
                              )
                            ),
                              child: Text('Next' , style: TextStyle(color: Colors.white  ,fontWeight: FontWeight.bold , fontSize: 18),),
                          )
                        ],
                      ),
                    )

                  ],
                ),
              );
            },
              childCount: 4,
            ),
          ),

        ],
      ),
    );
  }
}
