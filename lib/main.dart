import 'package:flutter/material.dart';
import 'package:projekt/about.dart';
import 'package:projekt/gallery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      initialRoute: '/',
      routes: {
        '/gallery': (context) => const GalleryPage(),
        '/about': (context) => const AboutPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Home page'),
      ),
      body: Center(
        child: 
          Column(
            children: [
              Text('Welcome to Home Page!'),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/gallery');
                }, 
                child: const Text('Gallery')
                ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/about');
                }, 
                child: const Text('About')
                ),
              ],
            ),
          ),
    );
  }
}