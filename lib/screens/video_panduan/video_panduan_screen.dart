import 'package:flutter/material.dart';
import 'package:panduan/screens/video_panduan/video_panduan_detail.dart';
import 'package:panduan/widgets/panduan_card.dart';

final List videoPanduan = [
  [
    'Panduan Pendaftaran',
    VideoPanduanDetail(),
  ],
  [
    'Panduan Penggunaan Aplikasi',
    VideoPanduanDetail(),
  ],
  [
    'Panduan Pengisian Data',
    VideoPanduanDetail(),
  ],
];

class VideoPanduan extends StatelessWidget {
  const VideoPanduan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Video Panduan'),
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
                  itemCount: videoPanduan.length,
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(
                      height: 20,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return PanduanCard(
                      title: videoPanduan[index][0],
                      icon: Icons.play_circle,
                      destination: videoPanduan[index][1],
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
