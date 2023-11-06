import 'package:flutter/material.dart';

import 'shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Dunk High',
        price: '8,621',
        description: 'DUNK HIGH RETRO SE MONARCH/MONARCH-SAIL',
        imagePath: 'lib/images/nikedunkhigh.webp'),
    Shoe(
        name: 'Lebron Nxxt',
        price: '14,000',
        description: 'LEBRON NXXT GEN EP',
        imagePath: 'lib/images/lebro-nxxt-gen-ep.webp'),
    Shoe(
        name: 'Air Vapormax',
        price: '19,295',
        description: 'AIR VAPORMAX 2023 FLYKNIT BLACK/BLACK-ANTHRACITE-BLACK',
        imagePath: 'lib/images/air-vapormax.webp'),
    Shoe(
        name: 'Air Jordan',
        price: '10,295',
        description: 'AIR JORDAN 1 HIGH OG BLACK/ROYAL BLUE-WHITE-ROYAL BLUE',
        imagePath: 'lib/images/air-jordan-1-mid.webp'),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
