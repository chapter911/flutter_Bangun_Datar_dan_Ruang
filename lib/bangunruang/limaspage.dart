import 'package:flutter/material.dart';

class LimasPage extends StatefulWidget {
  const LimasPage({Key? key}) : super(key: key);

  @override
  State<LimasPage> createState() => _LimasPageState();
}

class _LimasPageState extends State<LimasPage> {
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
                  "Volume = 1/3 x luas alas x tinggi\nLuas Permukaan = Luas alas + jumlah Luas semua sisi tegak",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
