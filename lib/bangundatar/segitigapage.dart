import 'package:bangun_datar_dan_ruang/konstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatefulWidget {
  const SegitigaPage({Key? key}) : super(key: key);

  @override
  State<SegitigaPage> createState() => _SegitigaPageState();
}

class _SegitigaPageState extends State<SegitigaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Get.arguments),
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
