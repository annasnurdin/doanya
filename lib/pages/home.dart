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
  final ScrollController _scrollController = ScrollController();
  int _expandedIndex = -1;
  bool baruNyari = false;
  bool _expanded = false;
  bool _isSearching = false;
  int selectedIndex = 0;

  //init
  @override
  void initState() {
    super.initState();
    Doa.initData();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    _filter.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset > 50 && !_isSearching) {
      setState(() {
        _isSearching = true;
      });
    } else if (_scrollController.offset <= 50 && _isSearching) {
      setState(() {
        _isSearching = false;
      });
    }
  }

  void _searchDoa(String query) {
    final results = boxDoa.values
        .where((doa) => doa.namaDoa.toLowerCase().contains(query.toLowerCase()))
        .toList()
        .cast<Doa>();
    setState(() {
      _searchResults = results;
      baruNyari = true;
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
      backgroundColor: primaryColor,
      body: NestedScrollView(
        controller: _scrollController,
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(
            backgroundColor: primaryColor,
            expandedHeight: 80.0,
            floating: false,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Padding(
                padding:
                    const EdgeInsets.only(top: 30.0, right: 28.0, left: 15.0),
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
          ),
          SliverAppBar(
            backgroundColor: primaryColor,
            expandedHeight: 100.0,
            floating: false,
            pinned: false,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  const SizedBox(height: 25.0),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 25.0),
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.white10,
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _buildPilihanItem('Doa Harian', 0),
                          _buildPilihanItem('Amalan Rutin', 1),
                          _buildPilihanItem('Doa-Doa', 2),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPersistentHeader(
            pinned: true,
            floating: false,
            delegate: _SearchBarDelegate(
              isSearching: _isSearching,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                color: primaryColor,
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                // margin: _isSearching ? const EdgeInsets.only(top: 30.0) : null,
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        onChanged: _searchDoa,
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(40.0)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15.0),
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
            ),
          ),
        ],
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20.0),
                AnimatedSwitcher(
                  duration: const Duration(milliseconds: 400),
                  transitionBuilder:
                      (Widget child, Animation<double> animation) {
                    return FadeTransition(
                      opacity: animation,
                      child: child,
                    );
                  },
                  child: _isSearching
                      ? const SizedBox.shrink(key: ValueKey(1))
                      : _buildTerakhirDibaca(key: const ValueKey(2)),
                ),
                // const SizedBox(height: 20.0),
                AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  padding: const EdgeInsets.only(
                    top: 40.0,
                  ),
                  child: const Text(
                    'Doa-Doa Harian',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
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
                      return _buildDoaItem(doa, index, isExpanded);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildPilihanItem(String title, int index, {bool isSelected = false}) {
    bool isSelected = index == selectedIndex;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: isSelected ? secondaryColor : Colors.transparent,
          borderRadius: BorderRadius.circular(50.0),
        ),
        padding: const EdgeInsets.all(11.0),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18.0,
            color: isSelected ? primaryColor : Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }

  Widget _buildTerakhirDibaca({required ValueKey<int> key}) {
    return Container(
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
                style: const TextStyle(
                  fontSize: 18.0,
                  fontFamily: 'Arabic',
                ),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildDoaItem(dynamic doa, int index, bool isExpanded) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              _expandedIndex = isExpanded ? -1 : index;
            });
          },
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                isExpanded
                    ? const Icon(
                        Icons.expand_more_rounded,
                        size: 30,
                      )
                    : const Icon(
                        Icons.navigate_next,
                        size: 30,
                      ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      doa.namaDoa,
                      style: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () => _toggleFavorite(doa.id),
                  icon: Icon(
                    doa.isFavourite ? Icons.favorite : Icons.favorite_border,
                    color: doa.isFavourite ? Colors.red : Colors.white,
                    size: 30.0,
                  ),
                ),
              ],
            ),
          ),
        ),
        if (isExpanded)
          Container(
            margin: const EdgeInsets.only(bottom: 8.0),
            padding: const EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: Text(
                    doa.arabDoa,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontSize: 18.0,
                      fontFamily: 'Arabic',
                    ),
                  ),
                ),
                const SizedBox(height: 20.0),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/details-doa',
                        arguments: doa.id);
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Selengkapnya',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontFamily: 'Poppins',
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      SizedBox(width: 5.0),
                      Icon(
                        Icons.arrow_forward_rounded,
                        size: 20.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class _SearchBarDelegate extends SliverPersistentHeaderDelegate {
  final Widget child;
  final bool isSearching;

  _SearchBarDelegate({required this.child, required this.isSearching});

  @override
  double get minExtent => 80.0;

  @override
  double get maxExtent => 80.0;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(covariant _SearchBarDelegate oldDelegate) {
    return oldDelegate.isSearching != isSearching;
  }
}
