import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class PersegiPanjangPage extends StatefulWidget {
  const PersegiPanjangPage({Key? key}) : super(key: key);

  @override
  State<PersegiPanjangPage> createState() => _PersegiPanjangPageState();
}

class _PersegiPanjangPageState extends State<PersegiPanjangPage> {
  final TextEditingController _panjang = TextEditingController();
  final TextEditingController _lebar = TextEditingController();
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
                "Panjang",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _panjang,
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
                  hintText: 'Panjang',
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
                "Lebar",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _lebar,
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
                  hintText: 'Lebar',
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
        Container(
          margin: const EdgeInsets.fromLTRB(5, 10, 5, 0),
          width: double.maxFinite,
          child: ElevatedButton(
            onPressed: () {
              if (_panjang.text.isEmpty || _lebar.text.isEmpty) {
                Get.snackbar(
                    "Maaf", "Lengkapin dulu Panjang dan Lebarnya Ya... 😁",
                    backgroundColor: Colors.yellow);
              } else {
                _luas.text =
                    (double.parse(_panjang.text) * double.parse(_lebar.text))
                        .toStringAsFixed(2)
                        .replaceAll('.00', '');
                _keliling.text = (2 *
                        (double.parse(_panjang.text) +
                            double.parse(_lebar.text)))
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
