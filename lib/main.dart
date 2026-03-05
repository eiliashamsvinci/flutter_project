import 'package:flutter/material.dart';
import 'product_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ProductWidget(
                name: "iPhone 15 Pro Max",
                description: "Lorem ipsum ...",
                price: 1479,
                imagePath: "images/iphone.jpg",
              ) ,
              SizedBox(height: 12),
              ProductWidget(
                  name: "GeForce RTX 4080 SUPER",
                  price: 1110,
                  description:
                  "Des jeux ultra-réalistes, ultra-fluides et ultra-immersifs, "
                      "la carte graphique GeForce RTX 4080 SUPER met à votre "
                      "disposition les technologies les plus avancées pour "
                      "vous permettre de jouer dans les meilleures conditions, "
                      "en très haute résolution ou en Réalité Virtuelle.",
                  imagePath: "images/cg.jpg"
              ),
            ],
          ),
        ),
      ),
    );
  }
}