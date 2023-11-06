import 'package:flutter/material.dart';
import 'package:sneakerapp/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(25),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              //Gap
              const SizedBox(
                height: 100,
              ),

              //logo
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'lib/images/nikelogo.jpg',
                  height: 200,
                ),
              ),

              //Gap
              const SizedBox(height: 100),

              //title
              Text('Just Do It',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),

              //Gap
              const SizedBox(height: 15),

              //sub-title
              Text(
                'Brand new sneakers and custom kicks made with premium quality',
                style:
                    TextStyle(fontWeight: FontWeight.w500, color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              //Gap
              const SizedBox(height: 45),

              //shop-now button
              GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage())),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(25),
                  child: Center(
                    child: Text(
                      'Shop Now',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              )
            ]),
          ),
        ));
  }
}
