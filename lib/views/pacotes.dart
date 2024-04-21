import 'package:flutter/material.dart';

class PacotesPage extends StatelessWidget {
  const PacotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    Color bgAppBar = const Color(0xFF008584);
    Color bgBody = const Color(0xFFE0E0E0); 

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Pacotes de Viagem',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: bgAppBar,
      ),
      body: Container(
        color: bgBody, 
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            _buildPacote(
              tipo: 'Pacote Simples',
              descricao: 'Hotel e passagem para 3 dias para qualquer destino',
              preco: 'R\$ 10.000,00',
            ),
            _buildPacote(
              tipo: 'Pacote Mediano',
              descricao: 'Hotel e passagem para 10 dias para qualquer destino',
              preco: 'R\$ 20.000,00',
            ),
            _buildPacote(
              tipo: 'Pacote Black',
              descricao: 'Preço variável dependendo da quantidade de dias e do destino',
              preco: 'Preço sob consulta',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPacote({required String tipo, required String descricao, required String preco}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tipo,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            descricao,
            style: const TextStyle(
              fontSize: 16,
            ),
          ),
          const SizedBox(height: 5),
          Text(
            'Preço: $preco',
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 86, 33, 243), 
            ),
          ),
        ],
      ),
    );
  }
}