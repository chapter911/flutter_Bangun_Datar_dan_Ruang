import 'package:bangun_datar_dan_ruang/bangundatar/belahketupatpage.dart';
import 'package:bangun_datar_dan_ruang/bangundatar/jajargenjangpage.dart';
import 'package:bangun_datar_dan_ruang/bangundatar/layanglayangpage.dart';
import 'package:bangun_datar_dan_ruang/bangundatar/lingkaranpage.dart';
import 'package:bangun_datar_dan_ruang/bangundatar/persegipage.dart';
import 'package:bangun_datar_dan_ruang/bangundatar/persegipanjangpage.dart';
import 'package:bangun_datar_dan_ruang/bangundatar/segitigapage.dart';
import 'package:bangun_datar_dan_ruang/bangundatar/trapesiumpage.dart';
import 'package:bangun_datar_dan_ruang/bangunruang/balokpage.dart';
import 'package:bangun_datar_dan_ruang/bangunruang/bolapage.dart';
import 'package:bangun_datar_dan_ruang/bangunruang/kerucutpage.dart';
import 'package:bangun_datar_dan_ruang/bangunruang/kubuspage.dart';
import 'package:bangun_datar_dan_ruang/bangunruang/limaspage.dart';
import 'package:bangun_datar_dan_ruang/bangunruang/prismapage.dart';
import 'package:bangun_datar_dan_ruang/bangunruang/tabungpage.dart';
import 'package:bangun_datar_dan_ruang/konstant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Widget _bangun = Container();
  bool isDatar = false;
  String jenis = "";

  @override
  void initState() {
    super.initState();
    setState(() {
      jenis = Get.arguments[0];
      isDatar = Get.arguments[3];
    });
    refresh();
  }

  void refresh() {
    if (isDatar) {
      if (jenis == "Persegi") {
        _bangun = PersegiPage(key: UniqueKey());
      } else if (jenis == "Persegi Panjang") {
        _bangun = PersegiPanjangPage(key: UniqueKey());
      } else if (jenis == "Segitiga") {
        _bangun = SegitigaPage(key: UniqueKey());
      } else if (jenis == "Jajar Genjang") {
        _bangun = JajarGenjang(key: UniqueKey());
      } else if (jenis == "Trapesium") {
        _bangun = TrapesiumPage(key: UniqueKey());
      } else if (jenis == "Belah Ketupat") {
        _bangun = BelahKetupatPage(key: UniqueKey());
      } else if (jenis == "Layang-layang") {
        _bangun = LayangLayangPage(key: UniqueKey());
      } else if (jenis == "Lingkaran") {
        _bangun = LingkaranPage(key: UniqueKey());
      }
    } else {
      if (jenis == "Kubus") {
        _bangun = KubusPage(key: UniqueKey());
      } else if (jenis == "Balok") {
        _bangun = BalokPage(key: UniqueKey());
      } else if (jenis == "Prisma") {
        _bangun = PrismaPage(key: UniqueKey());
      } else if (jenis == "Limas") {
        _bangun = LimasPage(key: UniqueKey());
      } else if (jenis == "Tabung") {
        _bangun = TabungPage(key: UniqueKey());
      } else if (jenis == "Kerucut") {
        _bangun = KerucutPage(key: UniqueKey());
      } else if (jenis == "Bola") {
        _bangun = BolaPage(key: UniqueKey());
      }
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(jenis),
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
            margin: const EdgeInsets.all(5),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Konstant()
                      .keterangan(context, Get.arguments[1], Get.arguments[2]),
                  _bangun
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          refresh();
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }
}
