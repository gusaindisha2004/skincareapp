import 'package:flutter/material.dart';
import 'package:makeupapp/screens/cart_screen.dart';
import 'package:makeupapp/screens/facewash_screen.dart';
import 'package:makeupapp/screens/lipbalm_screen.dart';
import 'package:makeupapp/screens/moisturizer_screen.dart';
import 'package:makeupapp/screens/serum_screen.dart';
import 'package:makeupapp/screens/toner_screen.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Icon(Icons.home_filled, size: 30),
            Text(
              "Home",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
          
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, 
              MaterialPageRoute(builder: (_)=>const CartScreen()));
            },
            icon: const Icon(
              Icons.shopping_cart,
              size: 40,
            ),
          ),
        ],
       
      ),
      
  
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.category_outlined, size: 28, color: Colors.pink),
                Text(
                  "Categories",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
            InkWell(
              child: Container(
                margin: const EdgeInsets.only(bottom: 11),
                height: 80,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(115, 230, 179, 227),
                    borderRadius: BorderRadius.circular(11)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text("Face Wash",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w400,
                        )),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(28),
                          image: const DecorationImage(
                              image: AssetImage("assets/images/facewash.jpg"))),
                    )
                  ],
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const FacewashScreen()));
              },
            ),
            InkWell(
                child: Container(
                    margin: const EdgeInsets.only(bottom: 11),
                    height: 80,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(115, 239, 161, 233),
                        borderRadius: BorderRadius.circular(11)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Moisturiser",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            )),
                        // SizedBox(width: 200,),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(28),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/moisturizer.jpg"))),
                        )
                      ],
                    )),
                onTap: () {
Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MoisturizerScreen()));                }),
            InkWell(
                child: Container(
                    margin: const EdgeInsets.only(bottom: 11),
                    height: 80,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(115, 237, 131, 230),
                        borderRadius: BorderRadius.circular(11)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Toner",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            )),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(28),
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/toner.jpg"))),
                        )
                      ],
                    )),
                onTap: () {
Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TonerScreen()));                }),
            InkWell(
                child: Container(
                    margin: const EdgeInsets.only(bottom: 11),
                    height: 80,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(115, 238, 91, 228),
                        borderRadius: BorderRadius.circular(11)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Serum",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            )),
                        // SizedBox(width: 200,),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(28),
                              image: const DecorationImage(
                                  image:
                                      AssetImage("assets/images/serum.jpg"))),
                        )
                      ],
                    )),
                onTap: () {
Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const SerumScreen()));                }),
                    InkWell(
                child: Container(
                    margin: const EdgeInsets.only(bottom: 11),
                    height: 80,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(115, 238, 57, 226),
                        borderRadius: BorderRadius.circular(11)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Text("Lipbalm",
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                            )),
                        // SizedBox(width: 200,),
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(28),
                              image: const DecorationImage(
                                  image: AssetImage(
                                      "assets/images/lipbalm.webp"))),
                        )
                      ],
                    )),
                onTap: () {
Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const LipbalmScreen()));                }),
          ],
        ),
      ),
    );
  }
}
