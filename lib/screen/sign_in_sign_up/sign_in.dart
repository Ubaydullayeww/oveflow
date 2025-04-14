import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:overflow/screen/password_reset/reset.dart';
import 'package:overflow/screen/product/product_screen.dart';
import 'package:overflow/screen/sign_in_sign_up/sign_up.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  void showBottomSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        color: Colors.blue.shade900,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 65),
                  Icon(CupertinoIcons.lock_fill),
                  Text(
                    'Facebook.com',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                height: 50,
                color: Colors.blue.shade700,
                child: Row(
                  children: [
                    Image.network(
                      'https://cdn3d.iconscout.com/3d/free/thumb/free-facebook-3d-logo-download-in-png-blend-fbx-gltf-file-formats--fb-social-media-ios-apps-pack-logos-3105328.png?f=webp',
                      height: 50,
                      width: 50,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 60),
                    Text(
                      'Log in With Facebook',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: 200),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 65, top: 50),
                child: Column(
                  children: [
                    Card(
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThXQ0Ad9nigYH9IzLOTdhPUnD8acf1vNFabw&s',
                        height: 70,
                        width: 70,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Text('Shopin will receive' , style: TextStyle(color: Colors.black , fontSize: 18 , fontWeight: FontWeight.bold),),
                    Text('your public profile and friends list' , style: TextStyle(color: Colors.black , fontSize: 18 , fontWeight: FontWeight.bold),),

                  ],
                ),
              ),

              SizedBox(height: 100,),
              Padding(
                padding: const EdgeInsets.only(left: 30 , right:  30),
                child: ElevatedButton(onPressed: (){}, child: Text('Contine'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent.shade700 ,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    minimumSize: Size(double.infinity, 50),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 170),
                child: TextButton(onPressed: (){}, child: Text('Cancel'),),
              ),
            ],
          ),
        );
      },
    );
  }

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
                  'Sign In',
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
                  decoration: InputDecoration(labelText: 'Email'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 40),
                child: TextField(
                  decoration: InputDecoration(labelText: 'Password'),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => ProductScreen()),
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
                    'Sign In',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 30),
                child: ElevatedButton(
                  onPressed: () {
                    showBottomSheet();
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 60),
                    backgroundColor: CupertinoColors.lightBackgroundGray,
                    side: BorderSide(color: Colors.blue.shade900, width: 2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Sign In with Facebook',
                    style: TextStyle(
                      color: Colors.blueAccent.shade700,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account?',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_)=> SignUp()));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 100, left: 250),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Reset() ));
                  },
                  child: Text(
                    'Forgot Password',
                    style: TextStyle(
                      color: Colors.blue.shade900,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
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
