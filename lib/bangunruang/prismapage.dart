import 'package:flutter/material.dart';

class PrismaPage extends StatefulWidget {
  const PrismaPage({Key? key}) : super(key: key);

  @override
  State<PrismaPage> createState() => _PrismaPageState();
}

class _PrismaPageState extends State<PrismaPage> {
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
                  "Volume = luas alas x tinggi prisma\nLuas Permukaan = (2 x Luas alas) + (Keliling alas x Tinggi)",
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
