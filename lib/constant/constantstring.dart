import 'dart:io';

import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

Future<String> getAppVersion() async {
  if (Platform.isAndroid) {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    return packageInfo.version;
  } else {
    return "22.12.1";
  }
}

List<String> bangunDatar = [
  "Persegi",
  "Persegi Panjang",
  "Segitiga",
  "Jajar Genjang",
  "Trapesium",
  "Belah Ketupat",
  "Layang-layang",
  "Lingkaran"
];

List<String> bangunRuang = [
  "Kubus",
  "Balok",
  "Prisma",
  "Limas",
  "Tabung",
  "Kerucut",
  "Bola"
];

List<String> gBangunDatar = [
  "icon_persegi",
  "icon_persegi_panjang",
  "icon_segitiga_siku",
  "icon_jajar_genjang",
  "icon_trapesium",
  "icon_belah_ketupat",
  "icon_layangan",
  "icon_lingkaran"
];

List<String> gBangunRuang = [
  "icon_kubus",
  "icon_balok",
  "icon_prisma",
  "icon_limas",
  "icon_tabung",
  "icon_kerucut",
  "icon_bola"
];

List<String> rBangunDatar = [
  "rumus_persegi",
  "rumus_persegi_panjang",
  "rumus_segitiga_siku",
  "rumus_jajar_genjang",
  "rumus_trapesium",
  "rumus_belah_ketupat",
  "rumus_layangan",
  "rumus_lingkaran"
];

List<String> rBangunRuang = [
  "rumus_kubus",
  "rumus_balok",
  "rumus_prisma",
  "rumus_limas",
  "rumus_tabung",
  "rumus_kerucut",
  "rumus_bola"
];

List<String> keteranganDatar = [
  "Persegi adalah bangun datar segi empat dengan semua sisinya memiliki panjang yang sama dan semua sudutnya sama besar membentuk sudut siku-siku (90°).",
  "Persegi panjang adalah bangun datar bersegi empat yang keempat sudutnya membentuk siku-siku (90°) dan sisi-sisi yang berhadapan sama panjang.",
  "Segitiga adalah bangun datar yang jumlah sudutnya 180° dan di bentuk dengan menghubungkan tiga buah titik yang letaknya tidak segaris pada satu bidang, sehingga mempunyai tiga sisi dan tiga sudut.",
  "Jajar genjang adalah bangun datar bersegi empat dengan sisi- sisi yang berhadapan sejajar dan sama panjang, serta memiliki sudut-sudut yang berhadapan sama besar.",
  "Trapesium adalah bangun datar segi empat yang mempunyai sepasang sisi yang tepat berhadapan dan sejajar tetapi tidak sama panjang.",
  "Belah ketupat adalah bangun jajar genjang yang keempat sisinya sama panjang, sehingga memiliki sifat setiap sudut yang dibagi dua oleh diagonalnya akan sama besar dan diagonal-diagonal yang berpotongan akan saling tegak lurus.",
  "Layang-layang adalah bangun datar segi empat yang mempunyai dua pasang sisi berdampingan sama panjang dengan diagonal-diagonalnya saling berpotongan dan tegak lurus.",
  "Lingkaran adalah kumpulan titik--titik pada garis lengkung yang mempunyai jarak yang sama atau disebut jari-jari, terhadap sebuah titik tertentu yang disebut pusat lingkaran."
];

List<String> keteranganRuang = [
  "Kubus adalah bangun ruang yang dibatasi oleh enam bidang sisi berbentuk persegi dengan bentuk dan ukuran yang sama.",
  "Balok adalah bangun ruang yang dibentuk oleh tiga pasang persegi atau persegi panjang, dengan bentuk dan ukurannya sama atau salah satu pasang sisi ukuran yang berbeda",
  "Prisma adalah bangun ruang yang memiliki alas dan tutup dengan bentuk dan ukurannya sama, sedangkan sisi bagian samping berbentuk persegi atau persegi panjang.",
  "Limas adalah bangun ruang yang mempunyai alas bersegi - n dan bidang sisi lainnya berbentuk segitiga yang bertemu pada satu titik puncak.",
  "Tabung adalah bangun ruang yang dibentuk oleh dua buah lingkaran yang sejajar dengan bentuk dan ukuran yang sama serta sebuah persegi panjang yang mengelilingi kedua lingkaran tersebut.",
  "Kerucut merupakan bangun ruang sisi lengkung yang menyerupai limas segi-n beraturan dengan bidang alasnya berbentuk lingkaran.",
  "Bola merupakan bangun ruang sisi lengkung yang dibatasi satu bidang lengkung. Bola dapat dibentuk dari bangun setengah lingkarang yang diputar samapai 360° pada garis tengahnya."
];

const MaterialColor warnaPrimary = MaterialColor(
  0xBF00695c,
  <int, Color>{
    50: Color(0xBFe0f2f1), //10%
    100: Color(0xBFb2dfdb), //20%
    200: Color(0xBF80cbc4), //30%
    300: Color(0xBF4db6ac), //40%
    400: Color(0xBF26a69a), //50%
    500: Color(0xBF009688), //60%
    600: Color(0xBF00897b), //70%
    700: Color(0xBF00796b), //80%
    800: Color(0xBF00695c), //90%
    900: Color(0xBF004d40), //100%
  },
);
