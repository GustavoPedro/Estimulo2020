class Produto {
  int id;
  String url, nome, descricao;
  double preco;
  Produto({this.id, this.url, this.nome, this.descricao, this.preco});
  static List<Produto> produtos() {
    return [
      Produto(
          id: 1,
          url: 'https://picsum.photos/250?image=9',
          nome: 'Notebook',
          descricao: 'Notebook Dell Inspiron I15 Intel 8GB 1TB 15,6" Preto',
          preco: 30109.98),
      Produto(
          id: 2,
          url:
              'http://3.bp.blogspot.com/-5DtBFlqT2aw/Uz31iXknAoI/AAAAAAAABro/MVCd4VHiTMg/s1600/SAM_4878.JPG',
          nome: 'Bolo',
          descricao: 'Bolo em camadas com cobertura de frutas e nozes',
          preco: 15.19),
      Produto(
          id: 3,
          url:
              'https://busmg.files.wordpress.com/2018/08/1900-1-77040-gxs4427-moisesmagno.jpg',
          nome: 'Torre e aerogerador',
          descricao: 'Torre e aerogerador - de energia eólica',
          preco: 50125.47),
    ];
  }
}
