import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

  @override
  Widget build(BuildContext context) {
    Color bgAppBar = const Color(0xFF008584); 
    Color bgBody = const Color(0xFFF5F5F5);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Sobre Nós',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: bgAppBar,
      ),
      body: Container(
        color: bgBody,
        child: const Center(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Sua Jornada Inesquecível Começa Aqui!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Bem-vindo à nossa agência de viagens, onde cada destino é uma porta para aventuras emocionantes e memórias duradouras. Aqui na Agência de Viagens dos Sonhos, estamos apaixonados por explorar o mundo e criar experiências únicas para nossos clientes.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Desde os picos nevados das montanhas até as praias ensolaradas de areias douradas, estamos aqui para tornar seus sonhos de viagem uma realidade. Nossa dedicação vai além de simplesmente reservar voos e hotéis.',
                    textAlign: TextAlign.justify,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Text(
                    'Nosso compromisso é proporcionar a você uma experiência de viagem sem preocupações, desde o momento em que você faz a reserva até o momento em que retorna para casa. Trabalhamos com parceiros de confiança em todo o mundo para garantir que cada detalhe da sua viagem seja cuidadosamente planejado e executado com perfeição.',
                    textAlign: TextAlign.justify,
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
