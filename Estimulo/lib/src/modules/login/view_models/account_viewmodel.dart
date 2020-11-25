import 'package:flutter/material.dart';

class AccountViewModel {
  TextEditingController nome = TextEditingController();
  TextEditingController telefone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();
  TextEditingController cep = TextEditingController();
  TextEditingController rua = TextEditingController();
  TextEditingController bairro = TextEditingController();
  TextEditingController cidade = TextEditingController();
  TextEditingController uf = TextEditingController();
  TextEditingController numero = TextEditingController();

  AccountViewModel({
    String nome,
    String telefone,
    String email,
    String senha,
    String cep,
    String rua,
    String bairro,
    String cidade,
    String uf,
    String numero,
  }) {
    this.nome.text = nome;
    this.telefone.text = telefone;
    this.email.text = email;
    this.senha.text = senha;
    this.cep.text = cep;
    this.rua.text = rua;
    this.bairro.text = bairro;
    this.cidade.text = cidade;
    this.uf.text = uf;
    this.numero.text = numero;
  }
}
