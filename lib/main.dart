import 'package:flutter/material.dart';
import 'package:makeupapp/provider/cart_notifier.dart';
import 'package:makeupapp/provider/product_notifier.dart';
import 'package:makeupapp/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
     MultiProvider(providers: [
      ChangeNotifierProvider<CartNotifier>
      (create: (_)=>CartNotifier()),
       ChangeNotifierProvider<ProductNotifier>
       (create: (_)=>ProductNotifier())
    ],
    child:const MaterialApp( 
      debugShowCheckedModeBanner: false,
    home: Homescreen(),)
  ));
}
