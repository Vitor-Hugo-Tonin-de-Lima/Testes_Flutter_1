import 'package:flutter/material.dart';

class HomeStateFull extends StatefulWidget {
  const HomeStateFull({super.key});

  @override
  State<HomeStateFull> createState() => _HomeStateFullState();
}

class _HomeStateFullState extends State<HomeStateFull> {
  String _texto = "Inicial";
  double contador = 0;

  void alteraTexto(){
    setState(() {
      switch(contador){
        case 0:
          _texto = "Intermediário";
        case 1:
          _texto = "Final";
        case 2:
          _texto = "Pegadinha!!, tem mais pela frente :)";
        case 20:
          _texto = "Verdadeiro Final.";
      }
      contador++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dias da Frase"),
        backgroundColor: Colors.deepOrange,
      ),

      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            Text("Texto superior da aplicação"),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.grey.shade200
              ),
                onPressed: alteraTexto,
                child: Text("Botão pressionável")
            ),
            Text(
                _texto,
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.blueAccent,
                  decoration: TextDecoration.underline,
                ),

            )
          ]
        ),
      ),
    );
  }
}


void main() {
  runApp(MaterialApp(
    title: "Frase do Dia",
    home: HomeStateFull()
  ));
}
