import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class BelahKetupatPage extends StatefulWidget {
  const BelahKetupatPage({Key? key}) : super(key: key);

  @override
  State<BelahKetupatPage> createState() => _BelahKetupatPageState();
}

class _BelahKetupatPageState extends State<BelahKetupatPage> {
  final TextEditingController _diagonal1 = TextEditingController();
  final TextEditingController _diagonal2 = TextEditingController();
  final TextEditingController _sisiab = TextEditingController();
  final TextEditingController _luas = TextEditingController();
  final TextEditingController _keliling = TextEditingController();

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
                "Diagonal 1 (A - C)",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _diagonal1,
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
                  hintText: "Diagonal 1 (A - C)",
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
                "Diagonal 2 (B - D)",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _diagonal2,
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
                  hintText: "Diagonal 2 (B - D)",
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
                "Sisi (A - B)",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _sisiab,
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
                  hintText: "Sisi (A - B)",
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
                enabled: false,
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
              if (_diagonal1.text.isEmpty ||
                  _diagonal2.text.isEmpty ||
                  _sisiab.text.isEmpty) {
                Get.snackbar(
                    "Maaf", "Lengkapin dulu Diagonal dan Sisinya Ya... 😁",
                    backgroundColor: Colors.yellow);
              } else {
                _luas.text = (0.5 *
                        double.parse(_diagonal1.text) *
                        double.parse(_diagonal2.text))
                    .toStringAsFixed(2)
                    .replaceAll('.00', '');
                _keliling.text = (4 * double.parse(_sisiab.text))
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
