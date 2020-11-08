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
            'http://3.bp.blogspot.com/-5DtBFlqT2aw/Uz31iXknAoI/AAAAAAAABro/MVCd4VHiTMg/s1600/SAM_4878.JPG',
        nome: 'Bolo',
      ),
      ProdutoMenu(
        url:
            'https://busmg.files.wordpress.com/2018/08/1900-1-77040-gxs4427-moisesmagno.jpg',
        nome: 'Torre e aerogerador',
      ),
    ];
  }
}
