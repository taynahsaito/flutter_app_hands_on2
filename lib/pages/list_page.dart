import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Página'),
      ),
      body: const Center(
        child: Text('Esta é a segunda página!'),
      ),
    );
  }
}
