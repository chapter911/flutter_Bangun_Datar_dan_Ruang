import 'package:flutter/material.dart';

class BelahKetupatPage extends StatefulWidget {
  const BelahKetupatPage({Key? key}) : super(key: key);

  @override
  State<BelahKetupatPage> createState() => _BelahKetupatPageState();
}

class _BelahKetupatPageState extends State<BelahKetupatPage> {
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
                  "Luas = ½ x Diagonal 1 x Diagonal 2\nKeliling = 4 x sisi",
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
