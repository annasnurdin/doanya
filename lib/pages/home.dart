import 'package:flutter/material.dart';
import 'package:myapp/theme/colors.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: Padding(
          padding: const EdgeInsets.only(top: 30.0, right: 28.0, left: 15.0),
          child: AppBar(
            backgroundColor: primaryColor,
            title: const Text("DOA - DOA",
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                )),
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
                borderRadius: BorderRadius.circular(40.0)),
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
                    // color: Colors.white12,
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
                    // color: Colors.white12,
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
                const Expanded(
                  child: TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Poppins',
                      fontSize: 18.0,
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white10,
                      hintText: 'Cari Doa',
                      hintStyle: TextStyle(
                        color: Colors.white,
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
                IconButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(secondaryColor),
                    shape: WidgetStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40.0),
                      ),
                    ),
                  ),
                  icon: const Icon(
                    Icons.search,
                    color: Colors.black,
                    size: 30.0,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(height: 40.0),
          // List Doa
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
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
                        const Text('Terakhir Dibaca',
                            style: TextStyle(fontSize: 18.0)),
                        Divider(
                          color: secondaryColor,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              children: [
                                Text(
                                  'Doa Mau Makan',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text('20 Agustus 2021',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      fontFamily: 'Poppins',
                                      color: Colors.grey,
                                    )),
                              ],
                            ),
                            IconButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                backgroundColor:
                                    WidgetStateProperty.all(secondaryColor),
                                shape: WidgetStateProperty.all(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                ),
                              ),
                              icon: const Icon(
                                Icons.keyboard_arrow_down_rounded,
                                color: Colors.white,
                                size: 30.0,
                              ),
                            )
                          ],
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
                  Container(
                    decoration: BoxDecoration(
                      color: secondaryColor,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(Icons.arrow_forward_ios_rounded, size: 30),
                          Text(
                            'Doa Akan Makan',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(Icons.favorite_border_rounded, size: 30)
                        ],
                      ),
                    ),
                  )
                ],
                // child: ListView.builder(
                //   itemCount: 10,
                //   itemBuilder: (context, index) {
                //     return ListTile(
                //       leading: const CircleAvatar(
                //         backgroundImage:
                //             NetworkImage('https://via.placeholder.com/150'),
                //       ),
                //       title: Text('Judul Doa ${index + 1}',
                //           style: const TextStyle(fontWeight: FontWeight.bold)),
                //       subtitle:
                //           const Text('Deskripsi singkat tentang doa ini...'),
                //       trailing: const Icon(Icons.arrow_forward_ios),
                //       onTap: () {},
                //       // tileColor: index % 2 == 0 ? Colors.grey[200] : Colors.white,
                //       shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.circular(10.0),
                //       ),
                //     );
                //   },
                // ),
              ),
            ),
          )
        ],
      ),
      // body: ListView.builder(
      // itemCount: 10,
      // itemBuilder: (context, index) {
      //   return ListTile(
      //     leading: const CircleAvatar(
      //       backgroundImage: NetworkImage('https://via.placeholder.com/150'),
      //     ),
      //     title: Text('Judul Doa ${index + 1}',
      //         style: const TextStyle(fontWeight: FontWeight.bold)),
      //     subtitle: const Text('Deskripsi singkat tentang doa ini...'),
      //     trailing: const Icon(Icons.arrow_forward_ios),
      //     onTap: () {},
      //     tileColor: index % 2 == 0 ? Colors.grey[200] : Colors.white,
      //     shape: RoundedRectangleBorder(
      //       borderRadius: BorderRadius.circular(10.0),
      //     ),
      //   );
      // },
      // ),
    );
  }
}
