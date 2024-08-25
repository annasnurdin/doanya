import 'package:flutter/material.dart';
import 'package:myapp/model/boxes.dart';
import 'package:myapp/model/doa.dart';
import 'package:myapp/theme/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<Doa> _searchResults = [];
  final TextEditingController _filter = TextEditingController();
  int _expandedIndex = -1;
  bool baruNyari = false;
  bool _expanded = false;
  //init
  @override
  void initState() {
    super.initState();
    Doa.initData();
  }

  void _searchDoa(String query) {
    final results = boxDoa.values
        .where((doa) => doa.namaDoa.toLowerCase().contains(query.toLowerCase()))
        .toList()
        .cast<Doa>();
    setState(() {
      _searchResults = results;
      baruNyari = true;
      for (var doa in _searchResults) {
        print('Nama Doa: ${doa.namaDoa}');
        print('----------------------');
      }
    });
  }

  void _toggleFavorite(int doaId) async {
    final doa = boxDoa.get(doaId) as Doa;
    doa.isFavourite = !doa.isFavourite;
    await boxDoa.put(doaId, doa);
    setState(() {});
  }

  void _toggleExpansion() {
    setState(() {
      _expanded = !_expanded;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, right: 28.0, left: 15.0),
          child: AppBar(
            backgroundColor: primaryColor,
            title: const Text(
              "DOA - DOA",
              style: TextStyle(
                fontWeight: FontWeight.bold,
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
                  icon: const Icon(
                    Icons.notifications_none_rounded,
                    color: Colors.black,
                    size: 30,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          const SizedBox(height: 25.0),
          // Pilihan
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25.0),
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: Colors.white10,
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Doa Harian',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: primaryColor,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    'Amalan Rutin',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  padding: const EdgeInsets.all(10.0),
                  child: const Text(
                    'Doa-Doa',
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 30.0),
          // Cari
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (text) {
                      _searchDoa(text);
                    },
                    controller: _filter,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 18.0,
                    ),
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white10,
                      hintText: 'Cari Doa',
                      hintStyle: TextStyle(
                        color: Colors.white30,
                        fontFamily: 'Poppins',
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40.0)),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 15.0),
                //tombol cari
                Container(
                  decoration: BoxDecoration(
                    color: secondaryColor,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: IconButton(
                    onPressed: () {
                      _searchDoa(_filter.text);
                    },
                    icon: const Icon(
                      Icons.search,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40.0),
          // List Doa
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              padding: const EdgeInsets.only(top: 30.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Doa Terakhir Dibaca
                    Container(
                      padding: const EdgeInsets.all(10.0),
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius: BorderRadius.circular(15.0),
                        border: Border.all(color: secondaryColor),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Terakhir Dibaca',
                            style: TextStyle(fontSize: 18.0),
                          ),
                          Divider(
                            color: secondaryColor,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    boxDoa.isNotEmpty
                                        ? (boxDoa.get(1) as Doa).namaDoa
                                        : 'Tidak ada data',
                                    style: const TextStyle(
                                      fontSize: 16.0,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Text(
                                    '20 Agustus 2021',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Poppins',
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: secondaryColor,
                                  borderRadius: BorderRadius.circular(40.0),
                                ),
                                child: IconButton(
                                  onPressed: _toggleExpansion,
                                  icon: _expanded
                                      ? const Icon(
                                          Icons.expand_more_rounded,
                                          color: Colors.white,
                                          size: 30.0,
                                        )
                                      : const Icon(
                                          Icons.navigate_next,
                                          color: Colors.white,
                                          size: 30.0,
                                        ),
                                ),
                              ),
                            ],
                          ),
                          if (_expanded)
                            Container(
                              padding: const EdgeInsets.all(10.0),
                              child: Text(
                                textAlign: TextAlign.right,
                                (boxDoa.get(1) as Doa).arabDoa,
                              ),
                            ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20.0),
                    const Divider(),
                    const SizedBox(height: 10.0),
                    // List Doa
                    const Text(
                      'Doa-Doa Harian',
                      style: TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Expanded(
                      child: ListView.builder(
                        itemCount:
                            baruNyari ? _searchResults.length : boxDoa.length,
                        itemBuilder: (context, index) {
                          final doa = baruNyari
                              ? _searchResults[index]
                              : boxDoa.getAt(index);
                          bool isExpanded = _expandedIndex == index;
                          return Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: secondaryColor,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0, vertical: 20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              _expandedIndex =
                                                  isExpanded ? -1 : index;
                                            });
                                          },
                                          child: isExpanded
                                              ? const Icon(
                                                  Icons.expand_more_rounded,
                                                  size: 30,
                                                )
                                              : const Icon(
                                                  Icons.navigate_next,
                                                  size: 30,
                                                ),
                                        ),
                                        Text(
                                          doa.namaDoa,
                                          style: const TextStyle(
                                            fontFamily: 'Poppins',
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            _toggleFavorite(doa.id);
                                          },
                                          child: doa.isFavourite
                                              ? Icon(
                                                  color: merah,
                                                  Icons.favorite,
                                                  size: 30,
                                                )
                                              : const Icon(
                                                  Icons.favorite_border_rounded,
                                                  size: 30,
                                                ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              //expand doanya
                              if (isExpanded)
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0),
                                  child: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Text(
                                        doa.arabDoa,
                                        textAlign: TextAlign.right,
                                        style: const TextStyle(
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                            ],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
