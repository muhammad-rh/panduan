import 'package:flutter/material.dart';
import 'package:panduan/screens/buku_panduan/buku_panduan_detail.dart';
import 'package:panduan/widgets/panduan_card.dart';

final List bukuPanduan = [
  [
    'Panduan Tutorial Aplikasi',
    const BukuPanduanDetail(
      title: 'Panduan Tutorial Aplikasi',
      description:
          '''Desain web itu rumit. Kita harus mempertimbangkan banyak hal saat merancang sebuah situs web, dari tampilan visual (bagaimana tampilan situs web) ke desain fungsional (bagaimana situs web bekerja).

          Saat ini, website sudah makin menjadi kompleks. Sama seperti fashion, desain website pun selalu berubah-ubah mengikuti tren.

          Tentu saja dengan semakin kompleks desain web di jaman sekarang, semakin sulit juga bagi Anda para web developer untuk membangun sebuah website dari nol. Ide-ide klien sendiri pun sudah semakin rumit dan bermacam-macam.

          Maka dari itu, Anda memerlukan cara perencanaan dan langkah-langkah kerja yang bisa membantu Anda untuk mengerjakan proyek desain web dengan lebih efisien.

          Tentu saja dengan semakin kompleks desain web di jaman sekarang, semakin sulit juga bagi Anda para web developer untuk membangun sebuah website dari nol. Ide-ide klien sendiri pun sudah semakin rumit dan bermacam-macam''',
    ),
  ],
  [
    'Panduan Pendaftaran Akun dan Mahasiswa',
    const BukuPanduanDetail(
      title: 'Panduan Pendaftaran Akun dan Mahasiswa',
      description:
          '''Desain web itu rumit. Kita harus mempertimbangkan banyak hal saat merancang sebuah situs web, dari tampilan visual (bagaimana tampilan situs web) ke desain fungsional (bagaimana situs web bekerja).

          Saat ini, website sudah makin menjadi kompleks. Sama seperti fashion, desain website pun selalu berubah-ubah mengikuti tren.

          Tentu saja dengan semakin kompleks desain web di jaman sekarang, semakin sulit juga bagi Anda para web developer untuk membangun sebuah website dari nol. Ide-ide klien sendiri pun sudah semakin rumit dan bermacam-macam.

          Maka dari itu, Anda memerlukan cara perencanaan dan langkah-langkah kerja yang bisa membantu Anda untuk mengerjakan proyek desain web dengan lebih efisien.

          Tentu saja dengan semakin kompleks desain web di jaman sekarang, semakin sulit juga bagi Anda para web developer untuk membangun sebuah website dari nol. Ide-ide klien sendiri pun sudah semakin rumit dan bermacam-macam''',
    ),
  ],
];

class BukuPanduan extends StatelessWidget {
  const BukuPanduan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buku Panduan'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'OVERVIEW',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'Berupa buku petunjuk penggunaan dan pengertian fitur-fitur yang ada di Mobile Apps KG secara terperinci (isinya lebih detail jika dibandingkan video tutorial). Menjelaskan juga keunggulan dan manfaat fitur tersebut.',
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 400,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: bukuPanduan.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return PanduanCard(
                      title: bukuPanduan[index][0],
                      icon: Icons.insert_drive_file_outlined,
                      destination: bukuPanduan[index][1],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
