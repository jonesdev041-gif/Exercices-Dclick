import 'package:flutter/material.dart';

void main() {
  runApp(const MonAppli());
}

// Configuration de base de l'application
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

// Page d'accueil 
class PageAccueil extends StatelessWidget {
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magazine Infos'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
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
      body: const Column(
        children: [
          Image(
            image: AssetImage('assets/images/magazineinfo.jpg'),
          ),
          PartieTitre(),
          PartieTexte(),
          PartieIcone(),
          PartieRubrique(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Tu as cliqué dessus');
        },
        backgroundColor: Colors.deepPurple,
        child: const Text('Click'),
      ),
    );
  }
}

// Classe partieTitre
class PartieTitre extends StatelessWidget {
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Magazine Infos Numérique',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Votre source d\'informations quotidiennes',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}

// Classe partieTexte
class PartieTexte extends StatelessWidget {
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: const Text(
        'Magazine Infos est votre magazine numérique de référence pour rester '
        'informé sur l\'actualité mondiale, la technologie, la mode, et bien plus encore. '
        'Découvrez des articles de qualité, des analyses approfondies et des contenus '
        'exclusifs rédigés par nos experts. Restez connecté avec le monde qui vous entoure '
        'grâce à Magazine Infos.',
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 14,
          height: 1.5,
        ),
      ),
    );
  }
}

// Classe partieIcone
class PartieIcone extends StatelessWidget {
  const PartieIcone({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Téléphone
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.pink,
                  size: 30,
                ),
                const SizedBox(height: 5),
                const Text(
                  'TEL',
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // E-mail
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.email,
                  color: Colors.pink,
                  size: 30,
                ),
                const SizedBox(height: 5),
                const Text(
                  'MAIL',
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Partage
          Container(
            child: Column(
              children: [
                Icon(
                  Icons.share,
                  color: Colors.pink,
                  size: 30,
                ),
                const SizedBox(height: 5),
                const Text(
                  'PARTAGE',
                  style: TextStyle(
                    color: Colors.pink,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Classe partieRubrique
class PartieRubrique extends StatelessWidget {
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Première image (Presse)
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/magazineinfo.jpg',
                fit: BoxFit.cover,
                height: 150,
              ),
            ),
          ),
          const SizedBox(width: 10),
          // Deuxième image (Mode)
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/magazineinfo.jpg',
                fit: BoxFit.cover,
                height: 150,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
