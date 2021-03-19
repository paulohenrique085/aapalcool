import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //atributos
  //nesse formato o valor do controller vem como string
  TextEditingController _controllerAlcool = TextEditingController();
  TextEditingController _controllerGasolina = TextEditingController();
  String _textoResultado = "";

  //metodo
  void calcular() {
    //convertendo de string para double uso o metodo tryparse pois
    //se o usuario digitar algo invalido ele permite retornar uma mensagem
    double precoAlcool = double.tryParse(_controllerAlcool.text);
    double precoGasolina = double.tryParse(_controllerGasolina.text);

    if (precoAlcool == null || precoGasolina == null) {
      setState(() {
        _textoResultado =
            "Valor inválido, digite números maiores que 0, e ultilizando (.)";
      });
    } else {
      if ((precoAlcool / precoGasolina) >= 0.7) {
        setState(() {
          _textoResultado = "Melhor abastecer com Álcool";
        });
      } else {
        setState(() {
          _textoResultado = "Melhor abastecer com gasolina";
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 35),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 200,
                  height: 140,
                  child: Image.asset("assets/icone.png"),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30, left: 30),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      //retirando linha textfild
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Preço Álcool  ex: 3.58",
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          )),
                      //estilo do texto que entra
                      style: TextStyle(fontSize: 20),
                      //pegando o que o usuário digitou
                      controller: _controllerAlcool,
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30, left: 30),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      //retirando linha textfild
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: "Preço Gasolina  ex: 3.32",
                          labelStyle: TextStyle(
                            color: Colors.grey,
                          )),
                      //estilo do texto que entra
                      style: TextStyle(fontSize: 20),
                      //pegando o que o usuário digitou
                      controller: _controllerGasolina,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32, left: 15),
                  child: Container(
                    width: 200,
                    height: 52,
                    child: RaisedButton(
                      //arredondando bordas do botão
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12)),
                      color: Color(0xFFd66055),
                      onPressed: () => calcular(),
                      child: Text(
                        "Calcular",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30, left: 30),
                    child: Text(
                      _textoResultado,
                      style: TextStyle(
                        color: Color(0xFF3f51b5),
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
