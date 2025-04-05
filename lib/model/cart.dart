import 'package:flutter/material.dart';
import 'package:sneaker_shop/model/shoe.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeList = [
    Shoe(
      name: "Nike Air Max",
      price: '120.99',
      imagePath: "lib/images/sneaker1.jpeg",
      description: "A comfortable and stylish running shoe.",
    ),
    Shoe(
      name: "Adidas Ultraboost",
      price: '180.50',
      imagePath: "lib/images/sneaker2.jpg",
      description: "High-performance running shoes with Boost cushioning.",
    ),
    Shoe(
      name: "Puma RS-X",
      price: '95.00',
      imagePath: "lib/images/sneaker3.jpg",
      description: "Retro-inspired sneakers with a bold design.",
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeList;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

  int getItemCount() {
    return shoeList.length;
  }
}
