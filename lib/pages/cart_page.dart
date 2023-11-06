import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakerapp/components/cart_item.dart';
import 'package:sneakerapp/models/cart.dart';
import 'package:sneakerapp/models/shoe.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  //heading
                  Text(
                    'My Cart',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),

                  const SizedBox(
                    height: 30,
                  ),

                  Expanded(
                      child: ListView.builder(
                          itemCount: value.getUserCart().length,
                          itemBuilder: (context, index) {
                            //get individual shoe
                            Shoe individualShoe = value.getUserCart()[index];

                            //return the cart item
                            return CartItem(shoe: individualShoe);
                          }))
                ],
              ),
            ));
  }
}
