import 'dart:math';

import 'package:bangun_datar_dan_ruang/constant/constantstring.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LingkaranPage extends StatefulWidget {
  const LingkaranPage({Key? key}) : super(key: key);

  @override
  State<LingkaranPage> createState() => _LingkaranPageState();
}

class _LingkaranPageState extends State<LingkaranPage> {
  final TextEditingController _jarijari = TextEditingController();
  final TextEditingController _diameter = TextEditingController();
  final TextEditingController _luas = TextEditingController();
  final TextEditingController _keliling = TextEditingController();

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
                onChanged: (value) {
                  if (_jarijari.text.isNotEmpty) {
                    _diameter.text = (double.parse(_jarijari.text) * 2)
                        .toStringAsFixed(2)
                        .replaceAll('.00', '');
                    if (double.parse(_jarijari.text) % 7 == 0) {
                      _luas.text =
                          (22 * pow(double.parse(_jarijari.text), 2) / 7)
                              .toStringAsFixed(2)
                              .replaceAll('.00', '');
                      _keliling.text =
                          (2 * 22 * double.parse(_jarijari.text) / 7)
                              .toStringAsFixed(2)
                              .replaceAll('.00', '');
                    } else {
                      _luas.text = (3.14 * pow(double.parse(_jarijari.text), 2))
                          .toStringAsFixed(2)
                          .replaceAll('.00', '');
                      _keliling.text = (2 * 3.14 * double.parse(_jarijari.text))
                          .toStringAsFixed(2)
                          .replaceAll('.00', '');
                    }
                  } else {
                    _diameter.text = "";
                    _luas.text = "";
                    _keliling.text = "";
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
                  hintText: 'Jari - Jari',
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
                "Diameter",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _diameter,
                onChanged: (value) {
                  if (_diameter.text.isNotEmpty) {
                    _jarijari.text = (double.parse(_diameter.text) / 2)
                        .toStringAsFixed(2)
                        .replaceAll('.00', '');
                    _luas.text = (0.25 *
                            3.14 *
                            (double.parse(_diameter.text) *
                                double.parse(_diameter.text)))
                        .toStringAsFixed(2)
                        .replaceAll('.00', '');
                    _keliling.text = (3.14 * double.parse(_diameter.text))
                        .toStringAsFixed(2)
                        .replaceAll('.00', '');
                  } else {
                    _jarijari.text = "";
                    _luas.text = "";
                    _keliling.text = "";
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
                  hintText: 'Diameter',
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
                "Luas",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _luas,
                enabled: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Luas',
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
                "Keliling",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _keliling,
                enabled: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Keliling',
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
