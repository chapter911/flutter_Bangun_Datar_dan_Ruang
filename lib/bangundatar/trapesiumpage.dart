import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class TrapesiumPage extends StatefulWidget {
  const TrapesiumPage({Key? key}) : super(key: key);

  @override
  State<TrapesiumPage> createState() => _TrapesiumPageState();
}

class _TrapesiumPageState extends State<TrapesiumPage> {
  final TextEditingController _sisiab = TextEditingController();
  final TextEditingController _sisicd = TextEditingController();
  final TextEditingController _sisibc = TextEditingController();
  final TextEditingController _sisiad = TextEditingController();
  final TextEditingController _tinggi = TextEditingController();
  final TextEditingController _luas = TextEditingController();
  final TextEditingController _keliling = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
                    "Luas = ½ x (AB + CD) x tinggi\nKeliling = AB + BC + CD + DA",
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
                  "Sisi Bawah (A - B)",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextField(
                  controller: _sisiab,
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
                    hintText: "Sisi Bawah (A - B)",
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
                  "Sisi Atas (C - D)",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextField(
                  controller: _sisicd,
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
                    hintText: "Sisi Atas (C - D)",
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
                  "Sisi Miring (A - D)",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextField(
                  controller: _sisiad,
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
                    hintText: "Sisi Miring (A - D)",
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
                if (_sisiab.text.isEmpty ||
                    _sisicd.text.isEmpty ||
                    _sisibc.text.isEmpty ||
                    _sisiad.text.isEmpty ||
                    _tinggi.text.isEmpty) {
                  Get.snackbar(
                      "Maaf", "Lengkapin dulu Sisi dan Tingginya Ya... 😁",
                      backgroundColor: Colors.yellow);
                } else {
                  _luas.text = (0.5 *
                          (double.parse(_sisiab.text) +
                              double.parse(_sisicd.text)) *
                          double.parse(_tinggi.text))
                      .toStringAsFixed(2)
                      .replaceAll('.00', '');
                  _keliling.text = (double.parse(_sisiab.text) +
                          double.parse(_sisicd.text) +
                          double.parse(_sisibc.text) +
                          double.parse(_sisiad.text))
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
      ),
    );
  }
}
