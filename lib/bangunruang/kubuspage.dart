import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KubusPage extends StatefulWidget {
  const KubusPage({Key? key}) : super(key: key);

  @override
  State<KubusPage> createState() => _KubusPageState();
}

class _KubusPageState extends State<KubusPage> {
  final TextEditingController _sisi = TextEditingController();
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
                "Sisi (A - B)",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              TextField(
                controller: _sisi,
                textInputAction: TextInputAction.done,
                onChanged: (value) {
                  if (_sisi.text.isNotEmpty) {
                    _volume.text = (double.parse(_sisi.text) *
                            double.parse(_sisi.text) *
                            double.parse(_sisi.text))
                        .toStringAsFixed(2)
                        .replaceAll('.00', '');
                    _luaspermukaan.text = (6 *
                            (double.parse(_sisi.text) *
                                double.parse(_sisi.text)))
                        .toStringAsFixed(2)
                        .replaceAll('.00', '');
                  } else {
                    _volume.text = "";
                    _luaspermukaan.text = "";
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
                  hintText: 'Volume',
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
                  hintText: 'Luas Permukaan',
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
