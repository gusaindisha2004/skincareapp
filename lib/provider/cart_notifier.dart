import 'package:flutter/material.dart';
import 'package:makeupapp/data/products_data.dart';
import 'package:makeupapp/models/cart_model.dart';

class CartNotifier extends ChangeNotifier {
  List cartList = [];
  addqty(index) {
    cartList[index].productQty++;
    cartList[index].productAmount * cartList[index].productQty;
    notifyListeners();
  }

  subqty(index) {
    cartList[index].productQty--;
    notifyListeners();
    cartList[index].productAmount =
        cartList[index].productAmount * cartList[index].productQty;
    if (cartList[index].productQty == 0) {
      cartList.removeAt(index);
    }
    notifyListeners();
  }

  addToCart(screen, index) {
    var curr_item = products_list[screen][index];
    bool found = false;
    for (int i = 0; i < cartList.length; i++) {
      if (cartList[i].id == curr_item.p_id) {
        found = true;
        cartList[i].productQty++;
        notifyListeners();

        break;
      } else {
        found = false;
      }
    }

    if (!found) {
      print("cart is empty");
      cartList.add(CartModel(
          p_img: curr_item.p_img,
          id: curr_item.p_id,
          productName: curr_item.p_name,
          productAmount: curr_item.p_price));
      notifyListeners();
    }
  }

  totalprice(cartList) {
    double price = 0;
    for (int index = 0; index < cartList.length; index++) {
      price =
          price + cartList[index].productAmount * cartList[index].productQty;
      // price=price + cartList[index].productAmount
    }
    return price.toString();
  }
}
