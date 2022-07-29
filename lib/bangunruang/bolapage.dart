import 'dart:math';

import 'package:bangun_datar_dan_ruang/constant/constantstring.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class BolaPage extends StatefulWidget {
  const BolaPage({Key? key}) : super(key: key);

  @override
  State<BolaPage> createState() => _BolaPageState();
}

class _BolaPageState extends State<BolaPage> {
  final TextEditingController _jarijari = TextEditingController();
  final TextEditingController _volume = TextEditingController();
  final TextEditingController _luaspermukaan = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: warnaPrimary,
          elevation: 10,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Container(
            width: double.maxFinite,
            margin: const EdgeInsets.all(10),
            child: const Text(
              "π = 22/7 atau π = 3.14",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Jari - Jari",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _jarijari,
                textInputAction: TextInputAction.next,
                onChanged: (value) {
                  if (_jarijari.text.isEmpty) {
                    _volume.text = "";
                    _luaspermukaan.text = "";
                  } else {
                    double jarijari = double.parse(_jarijari.text);

                    if (jarijari % 7 == 0) {
                      _volume.text = (((4 / 3) * 22 * pow(jarijari, 3)) / 7)
                          .toStringAsFixed(2)
                          .replaceAll('.00', '');
                      _luaspermukaan.text = ((4 * 22 * pow(jarijari, 2)) / 7)
                          .toStringAsFixed(2)
                          .replaceAll('.00', '');
                    } else {
                      _volume.text = ((4 / 3) * 3.14 * pow(jarijari, 3))
                          .toStringAsFixed(2)
                          .replaceAll('.00', '');
                      _luaspermukaan.text = (4 * 3.14 * pow(jarijari, 2))
                          .toStringAsFixed(2)
                          .replaceAll('.00', '');
                    }
                  }
                },
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                  signed: false,
                ),
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r"[0-9.]")),
                ],
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Jari - Jari",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Volume",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _volume,
                enabled: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Volume",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Luas Permukaan",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _luaspermukaan,
                enabled: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Luas Permukaan",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
