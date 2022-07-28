import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class SegitigaPage extends StatefulWidget {
  const SegitigaPage({Key? key}) : super(key: key);

  @override
  State<SegitigaPage> createState() => _SegitigaPageState();
}

class _SegitigaPageState extends State<SegitigaPage> {
  final TextEditingController _alas = TextEditingController();
  final TextEditingController _sisi = TextEditingController();
  final TextEditingController _tinggi = TextEditingController();
  final TextEditingController _luas = TextEditingController();
  final TextEditingController _keliling = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          color: Colors.green,
          elevation: 10,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          child: Container(
            width: double.maxFinite,
            margin: const EdgeInsets.all(10),
            child: Column(
              children: const [
                Text(
                  "RUMUS",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Divider(
                  color: Colors.white,
                  thickness: 2,
                ),
                Text(
                  "Luas = ½ x alas x tinggi\nKeliling = AB + BC + AC",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Alas",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _alas,
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
                  hintText: 'Alas',
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
                "Sisi",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _sisi,
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
                  hintText: 'Sisi',
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
                  hintText: 'Tinggi (t)',
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
        Container(
          margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
          width: double.maxFinite,
          child: ElevatedButton(
            onPressed: () {
              if (_alas.text.isEmpty ||
                  _sisi.text.isEmpty ||
                  _tinggi.text.isEmpty) {
                Get.snackbar(
                    "Maaf", "Lengkapin dulu Alas, Sisi, dan Tingginya Ya... 😁",
                    backgroundColor: Colors.yellow);
              } else {
                _luas.text = (0.5 *
                        double.parse(_alas.text) *
                        double.parse(_tinggi.text))
                    .toStringAsFixed(2)
                    .replaceAll('.00', '');
                _keliling.text = ((double.parse(_alas.text) +
                        double.parse(_sisi.text) +
                        double.parse(_tinggi.text)))
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
