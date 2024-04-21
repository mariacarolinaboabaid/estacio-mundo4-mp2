import 'package:flutter/material.dart';

class DestinosPage extends StatelessWidget {
  const DestinosPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color bgAppBar = const Color(0xFF008584);
    Color bgBody = const Color(0xFFF5F5F5);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Destinos',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: bgAppBar,
      ),
      body: Container(
        color: bgBody,
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
          children: [
            _buildDestino(
              nome: 'Paris',
              pais: 'França',
              descricao:
                  'Conhecida como "Cidade Luz", Paris é famosa por seus monumentos icônicos, como a Torre Eiffel e o Museu do Louvre. Explore suas charmosas ruas, desfrute de uma croissant em um café parisiense e maravilhe-se com a arte e a cultura desta cidade incrível.',
            ),
            _buildDestino(
              nome: 'Rio de Janeiro',
              pais: 'Brasil',
              descricao:
                  'O Rio de Janeiro, conhecido como a "Cidade Maravilhosa", é famoso por suas praias deslumbrantes, incluindo Copacabana e Ipanema, seu carnaval animado e o icônico Cristo Redentor. Descubra a beleza natural, a cultura vibrante e a hospitalidade calorosa desta cidade.',
            ),
            _buildDestino(
              nome: 'Kyoto',
              pais: 'Japão',
              descricao:
                  'Kyoto é uma cidade japonesa repleta de história, templos e jardins tradicionais. Explore os templos antigos, como o Fushimi Inari-taisha, caminhe pelas ruas de paralelepípedos do bairro de Gion e experimente a gastronomia única desta cidade encantadora.',
            ),
            _buildDestino(
              nome: 'Roma',
              pais: 'Itália',
              descricao:
                  'Roma é uma cidade com uma rica herança histórica, repleta de locais antigos, como o Coliseu, o Fórum Romano e o Vaticano. Passeie pelas praças pitorescas, como a Piazza Navona, e delicie-se com a deliciosa culinária italiana enquanto explora esta cidade fascinante.',
            ),
            _buildDestino(
              nome: 'Sydney',
              pais: 'Austrália',
              descricao:
                  'Sydney é uma cidade cosmopolita conhecida por sua deslumbrante Sydney Opera House, suas praias deslumbrantes, como Bondi Beach, e seu estilo de vida ao ar livre. Explore seus bairros vibrantes, faça um cruzeiro na Baía de Sydney e descubra a diversidade cultural desta cidade incrível.',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildDestino(
      {required String nome, required String pais, required String descricao}) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            nome,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            'País: $pais',
            style: const TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            descricao,
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
