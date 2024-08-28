class ComprasModel {
  final String imagem;
  final String titulo;
  final String medida;
  final int quantidade;
  final double preco;

  ComprasModel(
      {required this.imagem,
      required this.titulo,
      required this.medida,
      required this.quantidade,
      required this.preco});
}

ComprasModel minhaCompra = ComprasModel(
    imagem: "assets/images/banana.png",
    medida: "1kg, Price",
    preco: 4.99,
    quantidade: 1,
    titulo: "Organic Banana");
