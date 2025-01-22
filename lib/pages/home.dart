import 'package:flutter/material.dart';
import 'package:myapp/models/doa_model.dart';
import 'package:myapp/pages/detail_doa.dart';
import 'package:myapp/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<DoaModel> filteredList = [];
  final doaList = List.generate(
    20,
    (i) => DoaModel(
      'Doa Akan Makan ${i + 1}',
      'Alhamdulillah ${i + 1}',
      'Cara Baca ${i + 1}',
      'Sumber ${i + 1}',
    ),
  );

  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredList = doaList;
  }

  void filterDoaList(String query) {
    setState(() {
      if (query.isEmpty) {
        filteredList = doaList;
      } else {
        filteredList = doaList.where((doa) {
          return doa.title.toLowerCase().contains(query.toLowerCase()) ||
              doa.description.toLowerCase().contains(query.toLowerCase()) ||
              doa.caraBaca.toLowerCase().contains(query.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(160),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(top: 30.0, right: 28.0, left: 15.0),
                child: AppBar(
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
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 15.0, vertical: 10.0),
                  child: TextField(
                    controller: searchController,
                    onChanged: (value) => filterDoaList(value),
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
        body: Column(
          children: [
            const SizedBox(height: 20.0),
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                itemCount: filteredList.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: const EdgeInsets.only(bottom: 15.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Theme(
                      data: Theme.of(context).copyWith(
                        dividerColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      child: ExpansionTile(
                        expandedAlignment: Alignment.topRight,
                        leading:
                            const Icon(Icons.book_rounded, color: Colors.blue),
                        title: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    DetailDoa(doa: filteredList[index]),
                              ),
                            );
                          },
                          child: Text(
                            filteredList[index].title,
                            style: const TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        childrenPadding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 8.0),
                        children: [
                          //DESKRIPSI DOA
                          Directionality(
                            textDirection: TextDirection.rtl,
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailDoa(doa: filteredList[index]),
                                  ),
                                );
                              },
                              child: Text(
                                filteredList[index].description,
                                style: GoogleFonts.scheherazadeNew(
                                  fontSize: 18,
                                  color: Colors.black,
                                  height: 1.8,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
