import 'package:flutter/material.dart';
import 'package:makeupapp/provider/cart_notifier.dart';
import 'package:makeupapp/screens/paymentqr/details_screens.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    var obj = Provider.of<CartNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: obj.cartList.length,
              itemBuilder: (context, index) {
                return Container(
                  color: const Color.fromARGB(66, 88, 225, 225),
                  child: Card(
                    child: Row(
                      children: [
                        Image.network(
                          obj.cartList[index].p_img,
                          width: MediaQuery.sizeOf(context).width / 2.0 - 100,
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                obj.cartList[index].productName,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w800),
                              ),
                              Text(
                                obj.cartList[index].productAmount.toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w800),
                              ),
                              Row(
                                children: [
                                  IconButton.outlined(
                                      onPressed: () {
                                        obj.addqty(index);
                                      },
                                      icon: const Icon(Icons.exposure_plus_1)),
                                  Text(obj.cartList[index].productQty
                                      .toString()),
                                  IconButton.outlined(
                                      onPressed: () {
                                        obj.subqty(index);
                                      },
                                      icon: const Icon(Icons.exposure_minus_1)),
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            
              color: Colors.pink[400],
              height: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Container(
                          decoration:  BoxDecoration( 
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(11),
                            
                            ),
                           height:40,
                           width:110,
                          child: const Center(
                            child: Text(
                              "Total price:",
                              style: TextStyle(fontWeight: FontWeight.w900),
                              
                            ),
                          ),
                        ),
                      
                      Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Text("Rs.${obj.totalprice(obj.cartList)}", style: TextStyle(fontWeight: FontWeight.w900),),
                      ),
                    ],
                  ),
                  
                  ElevatedButton(onPressed: (){
                    Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const DetailScreen()));
                  }
                  , child: const Text("Checkout!", style:TextStyle(fontWeight: FontWeight.w900)))
                ],
              ))
        ],
      ),
    );
  }
}
