import 'package:flutter/material.dart';

class KerucutPage extends StatefulWidget {
  const KerucutPage({Key? key}) : super(key: key);

  @override
  State<KerucutPage> createState() => _KerucutPageState();
}

class _KerucutPageState extends State<KerucutPage> {
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
                  "Volume = 1/3 x π x r² x tinggi\nLuas Selimut = π x r x s\nLuas Permukaan = π x r x (r + s)",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
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
            child: const Text(
              "π = 22/7 atau π = 3.14",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
