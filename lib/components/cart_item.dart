import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/model/cart.dart';
import 'package:sneaker_shop/model/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          child: Image.asset(widget.shoe.imagePath),
        ),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price),
        trailing: IconButton(
          onPressed: removeItemFromCart,
          icon: Icon(Icons.delete),
        ),
      ),
    );
  }
}
