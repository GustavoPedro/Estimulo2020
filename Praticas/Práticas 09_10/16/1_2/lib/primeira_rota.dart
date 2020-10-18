import 'package:flutter/material.dart';
import 'package:pratica16/preco.dart';
import 'package:pratica16/segunta_rota.dart';

class PrimeiraRota extends StatefulWidget {
  @override
  _PrimeiraRotaState createState() => _PrimeiraRotaState();
}

class _PrimeiraRotaState extends State<PrimeiraRota> {
  String melhorOpcao;
  TextEditingController precoGasolinaController = TextEditingController();
  TextEditingController precoEtanolController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _resetFields() {
    precoEtanolController.text = "";
    precoGasolinaController.text = "";
    _formKey = GlobalKey<FormState>();
  }

  @override
  Widget build(BuildContext context) {
    final calcButton = Padding(
      padding: EdgeInsets.only(
        top: 10.0,
        bottom: 10.0,
      ),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          color: Colors.blue,
          onPressed: () async {
            String melhorOpcao = await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SegundaRota(
                  preco: Preco(
                    double.parse(precoEtanolController.text),
                    double.parse(precoGasolinaController.text),
                  ),
                ),
              ),
            );
            setState(() {
              this.melhorOpcao = melhorOpcao;
            });
          },
          child: Text(
            "Ir para Segunda Rota",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Qual combustível?"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: _resetFields,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Icon(Icons.time_to_leave, size: 100.0, color: Colors.blue),
              TextFormField(
                controller: precoGasolinaController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Gasolina R\$",
                ),
                textAlign: TextAlign.center,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Informe o preço da Gasolina!";
                  }
                },
              ),
              TextFormField(
                controller: precoEtanolController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: "Etanol R\$",
                ),
                textAlign: TextAlign.center,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Informe o preço do Etanol!";
                  }
                },
              ),
              calcButton,
              Text(
                melhorOpcao ?? "",
                style: TextStyle(color: Colors.blue, fontSize: 22),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
