// ignore: camel_case_types
import 'package:flutter/material.dart';

class card_cart extends StatelessWidget {
  const card_cart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30),
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          border: Border(
               bottom: BorderSide(width: 1))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Column(children: [Image.asset("assets/images/banana.png")]),
              Container(
                margin: const EdgeInsets.only(left: 40),
                child: Column(
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Organic Banana",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "1kg, Price",
                        
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: const Color.fromARGB(79, 0, 0, 0)),
                              borderRadius: BorderRadius.circular(15)),
                            child: Icon(Icons.remove, size: 40,))),
                        const Text("1", style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                        Container(
                          margin: const EdgeInsets.only(left: 10),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(width: 1, color: const Color.fromARGB(79, 0, 0, 0)),
                              borderRadius: BorderRadius.circular(15)),
                            child: const Icon(Icons.add, size: 40,color: Colors.green,)))
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            // color: Colors.red,
            
            height: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Icon(Icons.close, size: 30,), Text("\$4.99",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)],
            ),
          )
        ],
      ),
    );
  }
}
