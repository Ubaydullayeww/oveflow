import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overflow/screen/password_reset/reset2.dart';

class Reset extends StatefulWidget {
  const Reset({super.key});

  @override
  State<Reset> createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.lightBackgroundGray,
      body:  Column(

          children: [
            Padding(
              padding: const EdgeInsets.only(top: 270 ,),
              child: Text('Password Reset' , style: TextStyle(color: Colors.blue.shade700 , fontWeight: FontWeight.bold , fontSize: 40),),
            ),
             Text('Enter your email adress. Well send' , style: TextStyle(color: Colors.blueAccent.shade700 , fontSize: 18 , fontWeight: FontWeight.bold),),
              Text('a link to reset you password' , style: TextStyle(color: Colors.blueAccent.shade700 , fontSize: 18 , fontWeight: FontWeight.bold),),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 30 , right: 30),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Email'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30 , right: 30 ,  top: 30),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_)=> Reset2()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 60),
                  backgroundColor: Colors.blueAccent.shade700,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  'Send',
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
