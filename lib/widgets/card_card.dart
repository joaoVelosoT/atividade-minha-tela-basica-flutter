// ignore: camel_case_types
import 'package:flutter/material.dart';
import 'package:minha_tela_basica/models/compras_model.dart';

class card_cart extends StatelessWidget {

/*
imagem - String
titulo - String
medida - String
quantidade - int
preco - double
*/


final ComprasModel compra;
  const card_cart({
    super.key,
    required this.compra,
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
              Column(children: [
                // "assets/images/banana.png"
                Image.asset(compra.imagem)
                ]
                ),
              Container(
                margin: const EdgeInsets.only(left: 40),
                child: Column(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                         Text(
                          compra.titulo,
                          style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          compra.medida
                        
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
           SizedBox(
            // color: Colors.red,
            
            height: 90,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [const Icon(Icons.close,size: 30,),Text('\$ ${compra.preco}'  ,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)],
            ),
          )
        ],
      ),
    );
  }
}
