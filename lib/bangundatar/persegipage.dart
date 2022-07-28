import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PersegiPage extends StatefulWidget {
  const PersegiPage({Key? key}) : super(key: key);

  @override
  State<PersegiPage> createState() => _PersegiPageState();
}

class _PersegiPageState extends State<PersegiPage> {
  final TextEditingController _sisi = TextEditingController();
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
                  "Luas = sisi x sisi\nKeliling = 4 x sisi",
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
                "Sisi (A - B)",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _sisi,
                onChanged: (value) {
                  if (_sisi.text.isNotEmpty) {
                    _luas.text =
                        (double.parse(_sisi.text) * double.parse(_sisi.text))
                            .toStringAsFixed(2)
                            .replaceAll('.00', '');
                    _keliling.text = (double.parse(_sisi.text) * 4)
                        .toStringAsFixed(2)
                        .replaceAll('.00', '');
                  } else {
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
                  hintText: 'Sisi (A - B)',
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
                onChanged: (value) {
                  if (_luas.text.isNotEmpty) {
                    _sisi.text = (sqrt(double.parse(_luas.text)))
                        .toStringAsFixed(2)
                        .replaceAll('.00', '');
                    _keliling.text = (sqrt(double.parse(_luas.text)) * 4)
                        .toStringAsFixed(2)
                        .replaceAll('.00', '');
                  } else {
                    _sisi.text = "";
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
                onChanged: (value) {
                  if (_keliling.text.isNotEmpty) {
                    _sisi.text = (double.parse(_keliling.text) / 4)
                        .toStringAsFixed(2)
                        .replaceAll('.00', '');
                    _luas.text = ((double.parse(_keliling.text) / 4) *
                            (double.parse(_keliling.text) / 4))
                        .toStringAsFixed(2)
                        .replaceAll('.00', '');
                  } else {
                    _sisi.text = "";
                    _luas.text = "";
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
        // Container(
        //   margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
        //   width: double.maxFinite,
        //   child: ElevatedButton(
        //     onPressed: () {},
        //     style: ElevatedButton.styleFrom(
        //       padding: const EdgeInsets.all(20),
        //       tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        //     ),
        //     child: const Text("HITUNG"),
        //   ),
        // ),
      ],
    );
  }
}
