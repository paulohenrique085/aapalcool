import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                      //retirando linha textfild
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Preço Álcool  ex: 3.58",
                      ),
                      //estilo do texto que entra
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 30, left: 30),
                    child: TextField(
                      //retirando linha textfild
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Preço Gasolina  ex: 3.32",
                      ),
                      //estilo do texto que entra
                      style: TextStyle(fontSize: 20),
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
                      onPressed: () {},
                      child: Text(
                        "Calcular",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
