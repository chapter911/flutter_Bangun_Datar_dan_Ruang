import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class PrismaPage extends StatefulWidget {
  const PrismaPage({Key? key}) : super(key: key);

  @override
  State<PrismaPage> createState() => _PrismaPageState();
}

class _PrismaPageState extends State<PrismaPage> {
  final TextEditingController _alasab = TextEditingController();
  final TextEditingController _tinggi = TextEditingController();
  final TextEditingController _sisibc = TextEditingController();
  final TextEditingController _sisiac = TextEditingController();
  final TextEditingController _tinggiad = TextEditingController();
  final TextEditingController _volume = TextEditingController();
  final TextEditingController _luaspermukaan = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Alas (A - B)",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _alasab,
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
                  hintText: "Alas (A - B)",
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
                "Tinggi Segitiga (t)",
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
                  hintText: "Tinggi Segitiga (t)",
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
                "Sisi Miring (B - C)",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _sisibc,
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
                  hintText: "Sisi Miring (B - C)",
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
                "Sisi Miring (A - C)",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _sisiac,
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
                  hintText: "Sisi Miring (A - C)",
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
                "Tinggi Prisma (A - D)",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _tinggiad,
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
                  hintText: "Tinggi Prisma (A - D)",
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
        Container(
          margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
          width: double.maxFinite,
          child: ElevatedButton(
            onPressed: () {
              if (_alasab.text.isEmpty ||
                  _tinggi.text.isEmpty ||
                  _sisibc.text.isEmpty ||
                  _sisiac.text.isEmpty ||
                  _tinggiad.text.isEmpty) {
                Get.snackbar("Maaf",
                    "Lengkapin dulu Alas, Tinggi, Sisi, dan Tinggi Prismanya Ya... 😁",
                    backgroundColor: Colors.yellow);
              } else {
                double alasab = double.parse(_alasab.text);
                double tinggi = double.parse(_tinggi.text);
                double sisibc = double.parse(_sisibc.text);
                double sisiac = double.parse(_sisiac.text);
                double tinggiad = double.parse(_tinggiad.text);

                _volume.text = (alasab * 0.5 * tinggi * tinggiad)
                    .toStringAsFixed(2)
                    .replaceAll('.00', '');
                _luaspermukaan.text = ((2.0 * (0.5 * alasab * tinggi)) +
                        ((alasab + sisibc + sisiac) * tinggiad))
                    .toStringAsFixed(2)
                    .replaceAll('.00', '');
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
