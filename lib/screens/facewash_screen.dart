import 'package:flutter/material.dart';
import 'package:makeupapp/data/products_data.dart';
import 'package:makeupapp/provider/cart_notifier.dart';
import 'package:makeupapp/screens/cart_screen.dart';
import 'package:provider/provider.dart';

class FacewashScreen extends StatefulWidget {
  const FacewashScreen({super.key});

  @override
  State<FacewashScreen> createState() => _FacewashScreenState();
}

int screen = 0;

class _FacewashScreenState extends State<FacewashScreen> {
  @override
  Widget build(BuildContext context) {
    var obj = Provider.of<CartNotifier>(context);
        // var obj1=Provider.of<ProductNotifier>(context);

    return Scaffold(
        appBar: AppBar(
          title: Text("Face Wash"),
           actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (_)=>CartScreen()));
            },
            icon: Icon(
              Icons.shopping_cart,
              size: 40,
            ),
          ),
        ],
       
        ),
        body: ListView.builder(
          itemCount: facewash_list.length,
          itemBuilder: (context, index) {
            return Container(
              color: Color.fromARGB(66, 88, 225, 225),
              child: Card(
                  child: Row(
                children: [
                  Image.network(
                    facewash_list[index].p_img,
                    width: MediaQuery.sizeOf(context).width / 2.2 - 100,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${facewash_list[index].p_name}",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Rs.${facewash_list[index].p_price}",
                          style: TextStyle(fontWeight: FontWeight.w800),
                        ),
                        ElevatedButton.icon(
                            onPressed: () {
                              obj.addToCart(screen,index);
                            },
                            label: Text("Add to cart"),
                            icon: Icon(Icons.add_shopping_cart_outlined)),
                      ],
                    ),
                  )
                ],
              )),
            );
          },
        ));
  }
}
