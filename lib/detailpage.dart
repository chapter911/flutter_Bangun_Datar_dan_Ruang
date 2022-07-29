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
import 'package:bangun_datar_dan_ruang/constant/constantwidget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Widget _bangun = Container();
  bool isDatar = false;
  String jenis = "", gambarrumus = "", keteranganbangun = "";

  BannerAd? _bannerAd;
  bool isAdLoaded = false;

  int maxFailedLoadAttempts = 3;

  @override
  void initState() {
    super.initState();
    _createBanner();
    setState(() {
      jenis = Get.arguments[0];
      gambarrumus = Get.arguments[1];
      keteranganbangun = Get.arguments[2];
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

  void _createBanner() {
    _bannerAd = BannerAd(
      size: AdSize.banner,
      adUnitId: "ca-app-pub-6206858748012795/2162133795",
      listener: BannerAdListener(onAdLoaded: (ad) {
        setState(() {
          isAdLoaded = true;
        });
        print("Banner Dijalankan");
      }, onAdFailedToLoad: (ad, error) {
        ad.dispose();
      }),
      request: const AdRequest(),
    );
    _bannerAd!.load();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(jenis),
        actions: [information(context)],
      ),
      body: Stack(
        children: [
          Image.asset(
            'assets/background.png',
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Column(
            children: [
              isAdLoaded
                  ? SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: AdWidget(ad: _bannerAd!))
                  : const SizedBox(),
              keterangan(context, gambarrumus, keteranganbangun),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      rumus(jenis),
                      _bangun,
                    ],
                  ),
                ),
              ),
            ],
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
