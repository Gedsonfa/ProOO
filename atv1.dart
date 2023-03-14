class Venda {
  String data;
  List<Item> itens;
  Venda({required this.data, required this.itens});
  double total() => itens.fold(0, (sum, e) => sum + e.total());
}

class Item {
  Produto produto;
  double quantidade;
  Item({required this.quantidade, required this.produto});
  double total() => quantidade * produto.preco;
}

class Produto {
  double preco;
  String descricao;
  String validade;
  Produto(
      {required this.preco, required this.descricao, required this.validade});
}
