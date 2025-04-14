import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overflow/screen/password_reset/email.dart';

class Reset2 extends StatefulWidget {
  const Reset2({super.key});

  @override
  State<Reset2> createState() => _ResetState2();
}

class _ResetState2 extends State<Reset2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.lightBackgroundGray,
      body:  Column(

        children: [
          Padding(
            padding: const EdgeInsets.only(top: 270 ,),
            child: Text('Instructions send' , style: TextStyle(color: Colors.blue.shade700 , fontWeight: FontWeight.bold , fontSize: 40),),
          ),
          Text('Check your inbox an follow the' , style: TextStyle(color: Colors.blueAccent.shade700 , fontSize: 18 , fontWeight: FontWeight.bold),),
          Text('instructions to reset you password' , style: TextStyle(color: Colors.blueAccent.shade700 , fontSize: 18 , fontWeight: FontWeight.bold),),

          Padding(
            padding: const EdgeInsets.only(left: 30 , right: 30 ,  top: 30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=> PasswordResetScreen()));
              },
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 60),
                backgroundColor: Colors.blueAccent.shade700,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                'Go to email',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
