import 'package:flutter/material.dart';
import 'package:makeupapp/provider/cart_notifier.dart';
import 'package:makeupapp/screens/paymentqr/qr_screen.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late TextEditingController upiIdController;
  late TextEditingController payeeController;

  @override
  void initState() {
    upiIdController = TextEditingController();
    payeeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    upiIdController.dispose();
    payeeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
        var obj = Provider.of<CartNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("QR Generate"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextFormField(
              controller: upiIdController,
              decoration: const InputDecoration(
                labelText: "Enter UPI ID",
                hintText: "Enter UPI ID",
              ),
            ),
            TextFormField(
              controller: payeeController,
              decoration: const InputDecoration(
                labelText: "Enter Payee Name",
                hintText: "Enter Payee Name",
              ),
            ),
            
            const SizedBox(
              height: 30,
            ),
            Text("Enter UPI Details"),
            ElevatedButton(
              onPressed: () {
                double amount = double.parse(obj.totalprice(obj.cartList));

                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QrCodeScreen(
                        upiID: upiIdController.text,
                        payeeName: payeeController.text,
                        amount: amount,),
                  ),
                );
              },
              child: const Text("Generate"),
            )
          ],
        ),
      ),
    );
  }
}