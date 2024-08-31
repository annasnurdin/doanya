import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myapp/model/boxes.dart';
import 'package:myapp/model/doa.dart';
import 'package:myapp/pages/details.dart';
import 'pages/home.dart';
import 'theme/colors.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(DoaAdapter());
  boxDoa = await Hive.openBox<Doa>('doaBox');
  Doa.initData();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: primaryColor,
        fontFamily: GoogleFonts.montserratAlternates().fontFamily,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/details-doa': (context) => const DetailsDoa(),
      },
    );
  }
}
