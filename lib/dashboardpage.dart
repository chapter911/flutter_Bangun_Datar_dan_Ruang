import 'package:bangun_datar_dan_ruang/constant/constantwidget.dart';
import 'package:bangun_datar_dan_ruang/detailpage.dart';
import 'package:bangun_datar_dan_ruang/constant/constantstring.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<Widget> listMateriDatar = [], listMateriRuang = [];

  @override
  void initState() {
    super.initState();
    getMateri();
  }

  void getMateri() {
    int totaldatar = bangunDatar.length;
    int totalruang = bangunRuang.length;

    for (int i = 0; i < totaldatar; i++) {
      listMateriDatar.add(
        InkWell(
          onTap: () {
            Get.to(() => const DetailPage(),
                arguments: [
                  bangunDatar[i],
                  rBangunDatar[i],
                  keteranganDatar[i],
                  true,
                ],
                transition: Transition.rightToLeft,
                duration: const Duration(seconds: 1));
          },
          child: Card(
            color: warnaPrimary,
            elevation: 5,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        "assets/${gBangunDatar[i]}.png",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Center(
                      child: Container(
                        color: Colors.grey[300],
                        child: Center(
                          child: Text(
                            bangunDatar[i],
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
        ),
      );
    }

    for (int i = 0; i < totalruang; i++) {
      listMateriRuang.add(
        InkWell(
          onTap: () {
            Get.to(() => const DetailPage(),
                arguments: [
                  bangunRuang[i],
                  rBangunRuang[i],
                  keteranganRuang[i],
                  false,
                ],
                transition: Transition.rightToLeft,
                duration: const Duration(seconds: 1));
          },
          child: Card(
            color: warnaPrimary,
            elevation: 5,
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    flex: 4,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      child: Image.asset(
                        "assets/${gBangunRuang[i]}.png",
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Center(
                      child: Container(
                        color: Colors.grey[300],
                        child: Center(
                          child: Text(
                            bangunRuang[i],
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
        ),
      );
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Pilih Materi"),
          actions: [information(context)],
          bottom: const TabBar(
            indicatorColor: Colors.pink,
            tabs: [
              Tab(
                child: Text("BANGUN DATAR"),
              ),
              Tab(
                child: Text("BANGUN RUANG"),
              ),
            ],
          ),
        ),
        body: Stack(
          children: [
            Image.asset(
              'assets/background.png',
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            TabBarView(
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: listMateriDatar),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(10),
                  child: Expanded(
                    child: GridView.count(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        children: listMateriRuang),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
