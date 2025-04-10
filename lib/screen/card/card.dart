import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardPage extends StatefulWidget {
  const CardPage({super.key});

  @override
  State<CardPage> createState() => _CardState();
}

class _CardState extends State<CardPage> {
  List<String> images = [
    'assets/images/bag.webp',
    'assets/images/bike.jpeg',
    'assets/images/chair.webp',
  ];
  List<String> name = ['Rains BackPack Pacific', 'Bike', 'Orange chair'];
  List<String> price = ['\$80', '\$120', '\$879'];
  List<int> count = [1, 1, 1];

  void myDialog(BuildContext context, String content, String title, VoidCallback onConfirm) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                minimumSize: Size(100, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                onConfirm(); // Confirm action
                Navigator.pop(context); // Close dialog
              },
              child: Text('Yes'),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(100, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: Text('back'),
        centerTitle: false,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            centerTitle: false,
            automaticallyImplyLeading: false,
            title: Text(
              'Your Cart',
              style: TextStyle(color: Colors.black, fontSize: 30),
            ),
            actions: [
              IconButton(
                onPressed: () {
                  myDialog(
                    context,
                    'Are you sure you want to delete all items in your cart?',
                    'Empty cart',
                        () {
                      setState(() {
                        images.clear();
                        name.clear();
                        price.clear();
                        count.clear();
                      });
                    },
                  );
                },
                icon: Icon(CupertinoIcons.trash, size: 20, color: Colors.black),
              ),
            ],
          ),

          if (name.isEmpty)
            SliverFillRemaining(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('🛒' ,style: TextStyle(fontSize: 100),),
                    SizedBox(height: 30,),
                    Text('Your card is empty',style: TextStyle(color: Colors.black , fontSize: 25 , fontWeight: FontWeight.bold),
                    ),
                    Text('Looking for ideas' , style: TextStyle(color: Colors.grey , fontSize: 18),),
                    SizedBox(height: 30,),
         Padding(
           padding: const EdgeInsets.only(left: 30 , right: 30),
           child: ElevatedButton(onPressed: (){}, child: Text('Explore New Products' , style: TextStyle(color: Colors.white),),

             style: ElevatedButton.styleFrom(
               backgroundColor: Colors.blue.shade900,
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(10),
               ),
               minimumSize: Size(double.infinity, 70)
             ),
           ),
         ),
                  ],
                ),
              ),
            )
          else
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ListTile(
                      title: Text(
                        name[index],
                        style: TextStyle(color: Colors.black, fontSize: 24),
                      ),
                      subtitle: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              myDialog(
                                context,
                                'Are you sure want to delete "${name[index]}"?',
                                'Delete "${name[index]}"',
                                    () {
                                  setState(() {
                                    images.removeAt(index);
                                    name.removeAt(index);
                                    price.removeAt(index);
                                    count.removeAt(index);
                                  });
                                },
                              );
                            },
                            icon: Icon(CupertinoIcons.trash),
                          ),
                          SizedBox(width: 20),
                          Text('${count[index]}'),
                          SizedBox(width: 20),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                count[index]++;
                              });
                            },
                            icon: Icon(CupertinoIcons.plus),
                          ),
                          SizedBox(width: 80),
                          Text(
                            price[index],
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ],
                      ),
                      leading: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(images[index], fit: BoxFit.fill),
                        ),
                      ),
                    ),
                  );
                },
                childCount: name.length,
              ),
            ),

          // Checkout button
          if (name.isNotEmpty)
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(top: 250, left: 15, right: 15),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Colors.blue,
                    minimumSize: Size(double.infinity, 80),
                  ),
                  child: Column(
                    children: [
                      Text('Check out'),
                      Text('\$1079'), // You can calculate total dynamically too
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
