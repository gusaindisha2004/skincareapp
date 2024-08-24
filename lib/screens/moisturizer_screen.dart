import 'package:flutter/material.dart';
import 'package:makeupapp/data/products_data.dart';
import 'package:makeupapp/provider/cart_notifier.dart';
import 'package:makeupapp/screens/cart_screen.dart';
import 'package:provider/provider.dart';

class MoisturizerScreen extends StatefulWidget {
  const MoisturizerScreen({super.key});

  @override
  State<MoisturizerScreen> createState() => _MoisturizerScreenState();
}
int screen = 1;

class _MoisturizerScreenState extends State<MoisturizerScreen> {
  @override
  Widget build(BuildContext context) {
        var obj = Provider.of<CartNotifier>(context);

    return Scaffold(
        appBar: AppBar(
        title: const Text("Moisturizer"),
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
          itemCount: moisturizer_list.length,
          itemBuilder: (context, index) {
            return Container(
              color: const Color.fromARGB(66, 88, 225, 225),
              child: Card(
                  child: Row(
                children: [
                  Image.network(
                    moisturizer_list[index].p_img,
                    width: MediaQuery.sizeOf(context).width / 2.2 - 100,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${moisturizer_list[index].p_name}",
                          style: const TextStyle(fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Rs.${moisturizer_list[index].p_price}",
                          style: const TextStyle(fontWeight: FontWeight.w800),
                        ),
                        ElevatedButton.icon(
                            onPressed: () {
                              obj.addToCart(screen,index);
                            },
                            label: const Text("Add to cart"),
                            icon: const Icon(Icons.add_shopping_cart_outlined)),
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
