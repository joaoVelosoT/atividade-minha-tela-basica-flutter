import 'package:flutter/material.dart';
import 'package:minha_tela_basica/widgets/card_card.dart';

class minha_tela extends StatelessWidget {
  const minha_tela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Cart",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: const Column(
        children: [
          card_cart(),
          card_cart(),
          card_cart(),
          card_cart(),
          card_cart(),
          card_cart(),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        
        child: Container(
          
          color: Colors.green,
          
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Go to Checkout", style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold, fontSize: 20)),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: const Text("\$9,0", style: TextStyle(color: Colors.white,fontSize: 25,height: 1.5),))
              ],
          ),
        ),
      ),
    );
  }
}
