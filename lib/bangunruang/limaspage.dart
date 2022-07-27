import 'package:bangun_datar_dan_ruang/konstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LimasPage extends StatefulWidget {
  const LimasPage({Key? key}) : super(key: key);

  @override
  State<LimasPage> createState() => _LimasPageState();
}

class _LimasPageState extends State<LimasPage> {
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
