import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  Resposta(this.texto, this.quandoSelecionado);

  final String texto;
  final void Function() quandoSelecionado;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
        onPressed: quandoSelecionado,
        child: Container(
          child: Text(
            texto,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
