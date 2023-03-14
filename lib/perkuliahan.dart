import 'package:flutter/material.dart';
import 'package:tugas/quotes.dart';
import 'dart:math' as math;

class Perkuliahan extends StatelessWidget {
  const Perkuliahan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: listJadwal()
    );
  }
}

class listJadwal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final List bulan = [
      "Pengukuran Kinerja & Evaluasi SI",
      "Perencanaan Sumber Daya Perusahaan",
      "Konstruksi dan Pengujian Perangkat Lunak",
      "Manajemen Pengadaan dan Investasi TI",
      "Pemrograman Perangkat Bergerak",
      "KKN",
      "PKL",
    ];
    return  Scaffold(
      appBar: AppBar(
        title: Text("Mata Kuliah Semester 6"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Card(
                  color: Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(bulan[index], style: TextStyle(fontSize: 20,color: Colors.white)),
                  ),
                );
              },
              itemCount: bulan.length,
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const Quotes()));
              },
              child: Text('next')
          ),
        ],
      ),
    );
  }
}