import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overflow/screen/password_reset/email.dart';
import 'package:overflow/screen/password_reset/reset.dart';
import 'package:overflow/screen/password_reset/sucsess.dart';
import 'package:overflow/screen/product/product_screen.dart';
import 'package:overflow/screen/sign_in_sign_up/sign_up.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPassword();
}

class _NewPassword extends State<NewPassword> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CupertinoColors.lightBackgroundGray,
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200, left: 30),
                child: Text(
                  'New Password',
                  style: TextStyle(
                    color: Colors.deepPurple.shade900,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(labelText: 'New Password'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Confirm Password'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) =>Sucsess()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 60),
                    backgroundColor: Colors.blueAccent.shade700,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Save',
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
        ],
      ),
    );
  }
}
