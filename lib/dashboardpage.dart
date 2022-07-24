import 'package:bangun_datar_dan_ruang/bangunruang/persegipage.dart';
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
            if (Konstant().bangunDatar[i] == "Persegi") {
              Get.to(() => const PersegiPage(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1));
            } else if (Konstant().bangunDatar[i] == "Persegi Panjang") {
              Get.to(() => const PersegiPage(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1));
            } else if (Konstant().bangunDatar[i] == "Segitiga") {
              Get.to(() => const PersegiPage(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1));
            } else if (Konstant().bangunDatar[i] == "Jajar Genjang") {
              Get.to(() => const PersegiPage(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1));
            } else if (Konstant().bangunDatar[i] == "Trapesium") {
              Get.to(() => const PersegiPage(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1));
            } else if (Konstant().bangunDatar[i] == "Belah Ketupat") {
              Get.to(() => const PersegiPage(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1));
            } else if (Konstant().bangunDatar[i] == "Layang-layang") {
              Get.to(() => const PersegiPage(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1));
            } else if (Konstant().bangunDatar[i] == "Lingkaran") {
              Get.to(() => const PersegiPage(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1));
            } else if (Konstant().bangunDatar[i] == "Kubus") {
              Get.to(() => const PersegiPage(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1));
            } else if (Konstant().bangunDatar[i] == "Balok") {
              Get.to(() => const PersegiPage(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1));
            } else if (Konstant().bangunDatar[i] == "Prisma") {
              Get.to(() => const PersegiPage(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1));
            } else if (Konstant().bangunDatar[i] == "Limas") {
              Get.to(() => const PersegiPage(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1));
            } else if (Konstant().bangunDatar[i] == "Tabung") {
              Get.to(() => const PersegiPage(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1));
            } else if (Konstant().bangunDatar[i] == "Kerucut") {
              Get.to(() => const PersegiPage(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1));
            } else if (Konstant().bangunDatar[i] == "Bola") {
              Get.to(() => const PersegiPage(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(seconds: 1));
            }
          },
          child: Card(
            color: Colors.green,
            elevation: 5,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  flex: 4,
                  child: Image.asset(
                    isDatar
                        ? "assets/${Konstant().gBangunDatar[i]}.png"
                        : "assets/${Konstant().gBangunRuang[i]}.png",
                    color: Colors.white,
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
