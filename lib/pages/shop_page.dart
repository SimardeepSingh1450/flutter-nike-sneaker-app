import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakerapp/components/shoe_tile.dart';
import 'package:sneakerapp/models/cart.dart';
import 'package:sneakerapp/models/shoe.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //alert the user,shoe successfully added
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Successfully added!'),
              content: Text('Check your cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
        builder: (context, value, child) => Column(
              children: [
                //Gap
                const SizedBox(
                  height: 10,
                ),

                //search-bar
                Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(8)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Search',
                          style: TextStyle(color: Colors.grey),
                        ),
                        Icon(Icons.search, color: Colors.grey)
                      ]),
                ),

                //Gap
                const SizedBox(
                  height: 5,
                ),

                //hot-picks section
                Padding(
                  padding: const EdgeInsets.only(top: 25, left: 25),
                  child: Row(
                    children: [
                      Text(
                        'Hot Picks 🔥',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 15,
                ),

                Expanded(
                  child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        //get dynamically shoe from the shoelist
                        Shoe shoe = value.getShoeList()[index];
                        return ShoeTile(
                          shoe: shoe,
                          onTap: () => addShoeToCart(shoe),
                        );
                      }),
                ),

                const SizedBox(
                  height: 10,
                )
              ],
            ));
  }
}
