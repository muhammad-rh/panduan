import 'package:flutter/material.dart';
import 'package:panduan/screens/buku_panduan/buku_panduan_screen.dart';
import 'package:panduan/widgets/panduan_card_second.dart';

final List konten = [
  [
    'Kamus Aplikasi',
    'Berisi istilah dan akronim yang digunakan.',
    const BukuPanduan(),
  ],
  [
    'Glosarium Materi Credit',
    'Berisi kumpulan.',
    const BukuPanduan(),
  ],
];

class KamusKGScreen extends StatelessWidget {
  const KamusKGScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kamus KG'),
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
                  'Scrum adalah sebuah kerangka-kerja, bukan sebuah metodologi manajemen proyek.'),
              const SizedBox(height: 20),
              SizedBox(
                height: 400,
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: konten.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return PanduanCardSecond(
                      title: konten[index][0],
                      subtitle: konten[index][1],
                      destination: konten[index][2],
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
