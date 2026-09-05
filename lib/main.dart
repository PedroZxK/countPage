import 'package:flutter/material.dart';

void main() {
  runApp(const ContadorApp());
}

class ContadorApp extends StatelessWidget {
  // Essa classe é só uma casca de configuração do app, ela não guarda nenhum dado.
  const ContadorApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Monta e devolve a configuração geral do App
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Contador de inspeção",
      // Título interno do app
      home: const TelaContador(),
      // A tela inicial do app é o Widget TelaContador, definido logo abaixo.
    );
  }
}

class TelaContador extends StatefulWidget {
  // Isso é novo em relação ao projeto (Crachá), agora, a tela precisa lembrar de dados que mudam a contagem, o nome digitado, o histórico.
  // Esta classe ainda não está guardando nada sozinha, mas ela já declara que existe um State associado a ela.
  const TelaContador({super.key});

  @override
  State<TelaContador> createState() => _TelaContadorState();
  // createState é o método que o Flutter chama para criar o objeto de estado ligado a este widget.
}

class _TelaContadorState extends State<TelaContador> {
  // Esta é a classe que efetivamente guarda os dados que podem mudar durante o uso do App.
  // Funciona como um "cofre" que sobrevive entre uma reconstrução e outras das telas.

  int _pecasAprovadas = 0;
  // Variável que guarda a contagem atual de peças aprovadas, começando em zero.
  final _nomeController = TextEditingController();
  // TextEditingController é a ponte entre o que aparece em tela (TextField) e o nosso código Dart.
  // Guarda o texto digitado e o permite lê-lo a qualquer momento em '_nomeController.text'. O "final" em si nunca muda, sempre aponta para o mesmo objeto.
  // Quem muda é o texto dentro dele.
}
