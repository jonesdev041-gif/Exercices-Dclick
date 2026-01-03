import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}

// Premier StatelessWidget - Configuration de base de l'application
class MonAppli extends StatelessWidget {
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Magazine',
      debugShowCheckedModeBanner: false,
      home: const PageAccueil(),
    );
  }
}

// Deuxième StatelessWidget - Page d'accueil
class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Configuration de l'AppBar
      appBar: AppBar(
        title: const Text('Magazine Infos'),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 212, 67, 147),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      
      // Corps de la page avec l'image
      body: Center(
        child: Image.asset(
          'assets/images/magazineinfo.jpg',
          fit: BoxFit.cover,
          width: double.infinity,
          //height: double.infinity,
        ),
      ),
      
      // Bouton flottant
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Tu as cliqué dessus');
        },
        backgroundColor: const Color.fromARGB(255, 196, 62, 129),
        child: const Text('Click'),
      ),
    );
  }
}