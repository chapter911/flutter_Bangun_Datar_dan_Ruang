import 'package:bangun_datar_dan_ruang/konstant.dart';
import 'package:flutter/material.dart';

class PersegiPage extends StatefulWidget {
  const PersegiPage({Key? key}) : super(key: key);

  @override
  State<PersegiPage> createState() => _PersegiPageState();
}

class _PersegiPageState extends State<PersegiPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Persegi"),
        actions: [Konstant().information(context)],
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/background.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
