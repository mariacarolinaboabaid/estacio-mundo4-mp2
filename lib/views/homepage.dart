import 'package:flutter/material.dart';
import 'destino.dart';
import 'destinos.dart';
import 'pacotes.dart';
import 'contatos.dart';
import 'sobre.dart';
import 'dart:async';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  final List<Destino> _destinos = [
    Destino(
      imagePath: 'assets/images/sydney.png',
      title: 'Sydney - A cidade inesquecível',
      location: 'Sydney, Austrália',
      bodyText: 'Em Sydney, na Austrália, a icônica Sydney Opera House domina a linha do horizonte, enquanto a Harbour Bridge se estende majestosamente sobre as águas azuis da Baía de Sydney. Os vibrantes bairros à beira-mar oferecem uma mistura de cultura, gastronomia e entretenimento, enquanto as praias ensolaradas convidam para dias de lazer e relaxamento à beira-mar. Sydney é uma cidade cosmopolita que combina harmoniosamente sua rica história com uma vida urbana moderna e dinâmica.',
      likes: 900
    ),
    Destino(
      imagePath: 'assets/images/kyoto.png',
      title: 'Kyoto - Conhecendo novas culturas',
      location: 'Kyoto, Japão',
      bodyText: 'Kyoto, no Japão, é uma cidade impregnada de história e tradição. Com seus templos antigos, jardins zen meticulosamente projetados e geishas elegantes passeando pelas ruas, Kyoto oferece uma viagem no tempo para os visitantes. Os picos das montanhas cercam a cidade, proporcionando uma paisagem deslumbrante que se transforma com as estações do ano. À medida que exploramos suas ruas sinuosas e mercados tradicionais, somos envolvidos pela serenidade e pela rica cultura japonesa que permeia cada esquina de Kyoto.',
      likes: 999
    ),
    Destino(
      imagePath: 'assets/images/riodejaneiro.png',
      title: 'Rio de Janeiro - Continua lindo',
      location: 'Rio de Janeiro, Brasil',
      bodyText: 'No Rio de Janeiro, as praias acolhem o sol radiante e o calor do verão, enquanto o Cristo Redentor observa majestosamente do alto do Morro do Corcovado. As montanhas imponentes e a vegetação exuberante do Parque Nacional da Tijuca oferecem refúgio e aventura aos visitantes. Nas ruas movimentadas da cidade, o samba ecoa e a cultura carioca pulsa com vida, em meio aos sabores irresistíveis da culinária local. À noite, a cidade se ilumina com a energia vibrante dos bairros boêmios e das festas animadas que nunca terminam. No Rio de Janeiro, a diversidade, a beleza e a paixão estão sempre presentes.',
      likes: 1000
    ),
    Destino(
      imagePath: 'assets/images/paris.png',
      title: 'Paris - A cidade das luzes',
      location: 'Paris, França',
      bodyText: 'Paris, a cidade das luzes, cativa com sua elegância atemporal e charme romântico. Com ícones como a Torre Eiffel erguendo-se graciosamente sobre o horizonte e os majestosos museus como o Louvre abrigando tesouros artísticos, Paris é um deleite para os sentidos. Suas ruas pavimentadas de paralelepípedos são um convite para explorar boutiques chiques, cafés pitorescos e encantadores jardins.',
      likes: 1500
    ),
    Destino(
      imagePath: 'assets/images/roma.png',
      title: 'Roma - História a cada esquina',
      location: 'Roma, Itália',
      bodyText: 'Roma, a Cidade Eterna, é um tesouro de história e cultura que ecoa pelos séculos. Com seus monumentos icônicos, como o Coliseu imponente e o majestoso Pantheon, Roma respira o legado do Império Romano em cada esquina. Suas ruas estreitas e praças charmosas convidam a passeios serenos, enquanto as fontes barrocas espalham uma aura de encanto e romance. À medida que exploramos suas ruínas antigas e igrejas ornamentadas, somos transportados para uma jornada fascinante pela história da humanidade.',
      likes: 1700
    ),
  ];

  @override
  void initState() {
    super.initState();
    Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentIndex < _destinos.length - 1) {
        _currentIndex++;
      } else {
        _currentIndex = 0;
      }
      _pageController.animateToPage(
        _currentIndex,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    Color bgAppBar = const Color(0xFF008584);
    Color bgBody = const Color(0xFFF5F5F5);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bem-vindo(a)',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: bgAppBar,
        actions: [
          IconButton(
            icon: const Icon(Icons.location_on),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const DestinosPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.card_travel),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const PacotesPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.contact_phone),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ContatoPage()),
              );
            },
          ),
          IconButton(
            icon: const Icon(Icons.info),
            color: Colors.white,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SobrePage()),
              );
            },
          ),
        ],
      ),
      body: Container(
        color: bgBody,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.all(45),
              child: Text(
                'Agência de Viagens dos Sonhos',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 300,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => NextPage(
                      imagePath: _destinos[_currentIndex].imagePath,
                      title: _destinos[_currentIndex].title, 
                      location: _destinos[_currentIndex].location,
                      bodyText: _destinos[_currentIndex].bodyText, 
                      likes: _destinos[_currentIndex].likes
                    )),
                  );
                },
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemCount: _destinos.length,
                  itemBuilder: (context, index) {
                    return Image.asset(
                      _destinos[index].imagePath,
                      fit: BoxFit.cover,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Destino {
  final String imagePath;
  final String title;
  final String bodyText;
  final String location;
  final int likes;

  Destino({
    required this.imagePath,
    required this.title,
    required this.bodyText,
    required this.location,
    required this.likes
  });
}
