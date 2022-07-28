import 'package:bangun_datar_dan_ruang/detailpage.dart';
import 'package:bangun_datar_dan_ruang/konstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  String _title = "Materi Bangun Datar";

  List<Widget> listMateri = [];

  bool isDatar = true;

  @override
  void initState() {
    super.initState();
    getMateri();
  }

  void getMateri() {
    listMateri = [];

    int totaldata =
        isDatar ? Konstant().bangunDatar.length : Konstant().bangunRuang.length;

    for (int i = 0; i < totaldata; i++) {
      listMateri.add(
        InkWell(
          onTap: () {
            isDatar
                ? Get.to(() => const DetailPage(),
                    arguments: [
                      Konstant().bangunDatar[i],
                      Konstant().rBangunDatar[i],
                      Konstant().keteranganDatar[i],
                      isDatar,
                    ],
                    transition: Transition.rightToLeft,
                    duration: const Duration(seconds: 1))
                : Get.to(() => const DetailPage(),
                    arguments: [
                      Konstant().bangunRuang[i],
                      Konstant().rBangunRuang[i],
                      Konstant().keteranganRuang[i],
                      isDatar,
                    ],
                    transition: Transition.rightToLeft,
                    duration: const Duration(seconds: 1));
          },
          child: Card(
            color: Colors.green,
            elevation: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  flex: 4,
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      isDatar
                          ? "assets/${Konstant().gBangunDatar[i]}.png"
                          : "assets/${Konstant().gBangunRuang[i]}.png",
                      color: Colors.white,
                    ),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Center(
                    child: Container(
                      height: double.maxFinite,
                      width: double.maxFinite,
                      color: Colors.grey[300],
                      child: Center(
                        child: Text(
                          isDatar
                              ? Konstant().bangunDatar[i]
                              : Konstant().bangunRuang[i],
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
        actions: [Konstant().information(context)],
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/background.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _title = "Materi Bangun Datar";
                            isDatar = true;
                            getMateri();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: isDatar ? Colors.red[800] : Colors.green,
                        ),
                        child: const Text(
                          "Bangun Datar",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            _title = "Materi Bangun Ruang";
                            isDatar = false;
                            getMateri();
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          primary: isDatar ? Colors.green : Colors.red[800],
                        ),
                        child: const Text(
                          "Bangun Ruang",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: GridView.count(
                      crossAxisCount: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      children: listMateri),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
