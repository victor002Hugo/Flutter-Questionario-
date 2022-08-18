import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int pontuacao;
  final void Function() reiniciaQuestionario;

  Resultado(this.pontuacao, this.reiniciaQuestionario);

  String get fraseResultado {
    if (pontuacao < 8) {
      return 'Parabens !';
    } else if (pontuacao < 12) {
      return 'Você é bom !';
    } else if (pontuacao < 16) {
      return 'Impressionante !';
    } else {
      return 'Nivel Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(
              fontSize: 28,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: reiniciaQuestionario,
            child: Container(
              child: Text(
                'Reiniciar ?',
                style: TextStyle(color: Colors.blue, fontSize: 24),
              ),
            ),
          ),
        )
      ],
    );
  }
}
