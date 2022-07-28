import 'package:bangun_datar_dan_ruang/constant/constantstring.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

IconButton information(BuildContext context) {
  return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            content: Container(
              padding: const EdgeInsets.all(10),
              color: Colors.pink[800],
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/app_logo.png',
                    scale: 3,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Bangun Datar dan Ruang",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "Developed By A.M",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "v.22.7.1",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            contentPadding: const EdgeInsets.all(0),
          ),
        );
      },
      icon: const Icon(Icons.info));
}

Card keterangan(BuildContext context, String gambar, String keterangan) {
  return Card(
    color: warnaPrimary,
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
        children: [
          Row(
            children: [
              Flexible(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        backgroundColor: const Color(0xFF00695c),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: Image.asset(
                                "assets/$gambar.png",
                                color: Colors.white,
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Get.back();
                              },
                              style: ElevatedButton.styleFrom(
                                primary: Colors.red,
                              ),
                              child: const Text("TUTUP"),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  child: Image.asset(
                    "assets/$gambar.png",
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Flexible(
                flex: 3,
                child: Center(
                  child: Text(
                    keterangan,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
          ),
          const Text(
            "Klik Pada Gambar Untuk Memperbesar",
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
            ),
          )
        ],
      ),
    ),
  );
}

Card rumus(String jenis) {
  String keteranganrumus = "";
  if (jenis == "Persegi") {
    keteranganrumus = "Luas = sisi x sisi\nKeliling = 4 x sisi";
  } else if (jenis == "Persegi Panjang") {
    keteranganrumus =
        "Luas = panjang x lebar\nKeliling = 2 x (panjang + lebar)";
  } else if (jenis == "Segitiga") {
    keteranganrumus = "Luas = ½ x alas x tinggi\nKeliling = AB + BC + AC";
  } else if (jenis == "Jajar Genjang") {
    keteranganrumus = "Luas = alas x tinggi\nKeliling = 2 x (AB + BC)";
  } else if (jenis == "Trapesium") {
    keteranganrumus =
        "Luas = ½ x (AB + CD) x tinggi\nKeliling = AB + BC + CD + DA";
  } else if (jenis == "Belah Ketupat") {
    keteranganrumus = "Luas = ½ x Diagonal 1 x Diagonal 2\nKeliling = 4 x sisi";
  } else if (jenis == "Layang-layang") {
    keteranganrumus =
        "Luas = ½ x Diagonal 1 x Diagonal 2\nKeliling = 2 x (AB + AC)";
  } else if (jenis == "Lingkaran") {
    keteranganrumus =
        "Luas = π x r² atau ¼ x π x d²\nKeliling = 2 x π x r atau π x d";
  } else if (jenis == "Kubus") {
    keteranganrumus = "";
  } else if (jenis == "Balok") {
    keteranganrumus = "";
  } else if (jenis == "Prisma") {
    keteranganrumus = "";
  } else if (jenis == "Limas") {
    keteranganrumus = "";
  } else if (jenis == "Tabung") {
    keteranganrumus = "";
  } else if (jenis == "Kerucut") {
    keteranganrumus = "";
  } else if (jenis == "Bola") {
    keteranganrumus = "";
  }
  return Card(
    color: warnaPrimary,
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
        children: [
          const Text(
            "RUMUS",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const Divider(
            color: Colors.white,
            thickness: 2,
          ),
          Text(
            keteranganrumus,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );
}
