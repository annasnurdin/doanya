import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/models/doa_model.dart';

import '../theme/colors.dart';

class DetailDoa extends StatelessWidget {
  const DetailDoa({super.key, required this.doa});
  final DoaModel doa;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(160),
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(top: 30.0, right: 28.0, left: 15.0),
              child: AppBar(
                iconTheme: const IconThemeData(
                  color: Colors.white, // Ubah warna ikon kembali
                ),
                backgroundColor: primaryColor,
                title: Text(
                  doa.title,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            //SEARCH
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 15.0, vertical: 10.0),
                child: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white10,
                    hintText: 'Cari Doa...',
                    hintStyle: const TextStyle(color: Colors.white38),
                    prefixIcon: const Icon(Icons.search, color: Colors.white),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              doa.description,
              textAlign: TextAlign.center,
              style: GoogleFonts.scheherazadeNew(
                fontSize: 23,
                color: Colors.white,
                height: 2,
              ),
            ),
            const Divider(color: Colors.white38),
            Text(
              doa.caraBaca,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w300,
              ),
            ),
            const Divider(color: Colors.white38),
            Text(
              doa.sumber,
              style: const TextStyle(
                fontSize: 10,
                color: Colors.white,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
      ),
    );
  }
}
