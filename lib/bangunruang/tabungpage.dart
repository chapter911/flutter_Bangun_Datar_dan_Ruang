import 'package:flutter/material.dart';

class TabungPage extends StatefulWidget {
  const TabungPage({Key? key}) : super(key: key);

  @override
  State<TabungPage> createState() => _TabungPageState();
}

class _TabungPageState extends State<TabungPage> {
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
                  "Volume = luas alas x tinggi\nLuas Selimut = 2 x π x r x t\nLuas Permukaan = 2 x π x r x (r + t)",
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
