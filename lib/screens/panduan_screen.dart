import 'package:flutter/material.dart';
import 'package:panduan/screens/buku_panduan/buku_panduan_screen.dart';
import 'package:panduan/screens/kamus_kg_screen/kamus_kg_screen.dart';
import 'package:panduan/screens/video_panduan/video_panduan_screen.dart';
import 'package:panduan/widgets/panduan_card_second.dart';

final List konten = [
  [
    'Buku Panduan',
    'Panduan ini berisi dokumen-dokumen panduan.',
    const BukuPanduan(),
  ],
  [
    'Video Panduan',
    'Panduan ini berisi video-video panduan.',
    const VideoPanduan(),
  ],
  [
    'Kamus KG',
    'Panduan ini berisi konten kampus gratis.',
    const KamusKGScreen(),
  ],
];

class PanduanScreen extends StatelessWidget {
  const PanduanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panduan Konten'),
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
