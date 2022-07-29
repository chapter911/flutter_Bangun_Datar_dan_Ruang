import 'package:bangun_datar_dan_ruang/constant/constantstring.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class KerucutPage extends StatefulWidget {
  const KerucutPage({Key? key}) : super(key: key);

  @override
  State<KerucutPage> createState() => _KerucutPageState();
}

class _KerucutPageState extends State<KerucutPage> {
  final TextEditingController _jarijari = TextEditingController();
  final TextEditingController _tinggi = TextEditingController();
  final TextEditingController _sisi = TextEditingController();
  final TextEditingController _volume = TextEditingController();
  final TextEditingController _luasselimut = TextEditingController();
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
                "Tinggi (t)",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _tinggi,
                textInputAction: TextInputAction.next,
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
                  hintText: "Tinggi (t)",
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
                "Sisi Miring (s)",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _sisi,
                textInputAction: TextInputAction.done,
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
                  hintText: "Sisi Miring (s)",
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
                "Luas Selimut",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _luasselimut,
                enabled: false,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "Luas Selimut",
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
        Container(
          margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
          width: double.maxFinite,
          child: ElevatedButton(
            onPressed: () {
              if (_jarijari.text.isEmpty ||
                  _tinggi.text.isEmpty ||
                  _sisi.text.isEmpty) {
                Get.snackbar("Maaf",
                    "Lengkapin dulu Jari - Jari dan Tinggi dan Sisinya Ya... 😁",
                    backgroundColor: Colors.yellow);
              } else {
                double jarijari = double.parse(_jarijari.text);
                double tinggi = double.parse(_tinggi.text);
                double sisi = double.parse(_sisi.text);

                if (jarijari % 7 == 0) {
                  _volume.text =
                      (((1 / 3) * 22 * (jarijari * jarijari) * tinggi) / 7)
                          .toStringAsFixed(2)
                          .replaceAll('.00', '');
                  _luasselimut.text = ((22 * jarijari * sisi) / 7)
                      .toStringAsFixed(2)
                      .replaceAll('.00', '');
                  _luaspermukaan.text =
                      ((22 * jarijari * (jarijari + sisi)) / 7)
                          .toStringAsFixed(2)
                          .replaceAll('.00', '');
                } else {
                  _volume.text =
                      (((1 / 3) * 3.14 * (jarijari * jarijari) * tinggi))
                          .toStringAsFixed(2)
                          .replaceAll('.00', '');
                  _luasselimut.text = (3.14 * jarijari * sisi)
                      .toStringAsFixed(2)
                      .replaceAll('.00', '');
                  _luaspermukaan.text = (3.14 * jarijari * (jarijari + sisi))
                      .toStringAsFixed(2)
                      .replaceAll('.00', '');
                }
              }
            },
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(20),
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            child: const Text("HITUNG"),
          ),
        ),
      ],
    );
  }
}
