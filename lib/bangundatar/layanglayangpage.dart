import 'package:flutter/material.dart';

class LayangLayangPage extends StatefulWidget {
  const LayangLayangPage({Key? key}) : super(key: key);

  @override
  State<LayangLayangPage> createState() => _LayangLayangPageState();
}

class _LayangLayangPageState extends State<LayangLayangPage> {
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
                  "Luas = ½ x Diagonal 1 x Diagonal 2\nKeliling = 2 x (AB + AC)",
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
