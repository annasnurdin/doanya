import 'package:flutter/material.dart';
import 'package:myapp/models/doa_model.dart';

import '../theme/colors.dart';

class DetailDoa extends StatelessWidget {
  DetailDoa({super.key, required this.doa});
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
                title: const Text(
                  "DOA - DOA",
                  style: TextStyle(
                    fontSize: 25.0,
                    color: Colors.white,
                  ),
                ),
                actions: [
                  Container(
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: IconButton(
                      icon: const Icon(Icons.notifications_none_rounded,
                          color: Colors.black, size: 30),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),

            //SEARCH
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
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
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Text(doa.description),
      ),
    );
  }
}
