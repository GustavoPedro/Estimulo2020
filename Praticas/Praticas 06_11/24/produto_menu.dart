class ProdutoMenu {
  String url, nome;
  ProdutoMenu({this.url, this.nome});
  static List<ProdutoMenu> menu() {
    return [
      ProdutoMenu(
        url: 'https://picsum.photos/250?image=9',
        nome: 'Notebook',
      ),
      ProdutoMenu(
        url:
            'https://images.pexels.com/photos/213780/pexels-photo213780.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        nome: 'Bolo',
      ),
      ProdutoMenu(
        url:
            'https://images.pexels.com/photos/213798/pexels-photo213798.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
        nome: 'Torre e aerogerador',
      ),
    ];
  }
}
