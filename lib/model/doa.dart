import 'package:hive/hive.dart';
import 'package:myapp/model/boxes.dart';

part 'doa.g.dart';

@HiveType(typeId: 1)
class Doa {
  Doa({
    required this.namaDoa,
    required this.arabDoa,
    required this.bacaDoa,
    required this.latinDoa,
    required this.id,
  });
  @HiveField(0)
  int id;
  @HiveField(1)
  String namaDoa;
  @HiveField(2)
  String arabDoa;
  @HiveField(3)
  String latinDoa;
  @HiveField(4)
  String bacaDoa;
  @HiveField(5)
  bool isFavourite = false;

  static Future<void> initData() async {
    boxDoa = await Hive.openBox<Doa>('doaBox');
    if (boxDoa.length == 0) {
      boxDoa.put(
          1,
          Doa(
              id: 1,
              namaDoa: " Doa Pagi Sore",
              arabDoa:
                  " بِسْمِ اللَّهِ الَّذِي لَا يَضُرُّ مَعَ اسْمِهِ شَيْءٌ فِي الْأَرْضِ وَلَا فِي السَّمَاءِ وَهُوَ السَّمِيعُ الْعَلِيمُ",
              latinDoa:
                  " BISMILLAAHILLADZII LAA YADHURRU MA'AS MIHI SYAI UN FIL ARDHI WA LAA FIS SAMAAI WA HUWAS SAMII'UL 'ALIIM",
              bacaDoa:
                  " Dengan menyebutkan nama Allah yang tidak ada sesuatupun dengan menyebut namaNya yang membahayakan di bumi maupun di langit"));
      boxDoa.put(
          2,
          Doa(
              id: 2,
              namaDoa: " Doa Pagi Sore 2",
              arabDoa:
                  " اللَّهُمَّ أَنْتَ رَبِّي لَا إِلَهَ إِلَّا أَنْتَ خَلَقْتَنِي وَأَنَا عَبْدُكَ وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ وَأَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ وَأَعْتَرِفُ بِذُنُوبِي فَاغْفِرْ لِي ذُنُوبِي إِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ",
              latinDoa:
                  " ALLAAHUMMA ANTA RABBII LAA ILAAHA ILLAA ANTA KHALAQTANII WA ANAA 'ABDUKA WA ANAA 'ALAA 'AHDIKA WA WA'DIKA MASTATHA'TU",
              bacaDoa:
                  " A'UUDZU BIKA MIN SYARRI MAA SHANA'TU WA ABUU-U LAKA BINI'MATIKA 'ALAYYA WA A'TARIFU BIDZUNUUBII FAGHFIR LII DZUNUUBII"));
      boxDoa.put(
          3,
          Doa(
              id: 3,
              namaDoa: " Doa Pagi Sore 3",
              arabDoa:
                  " سُبْحَانَ اللَّهِ 100<br> الْحَمْدُ لِلَّهِ 100<br> لَا إِلَهَ إِلَّا اللَّهُ  100<br> اللَّهُ أَكْبَرُ 100",
              latinDoa:
                  " Subhanallah 100X<br> Al HAMDULILLAAH 100X<br> LAA ILAAHA ILLALLAAH 100X<br> ALLAAHU AKBAR 100X",
              bacaDoa: " "));
      boxDoa.put(
          4,
          Doa(
              id: 4,
              namaDoa: " Selesai Dari Majelis",
              arabDoa:
                  " سُبْحَانَكَ اللَّهُمَّ وَبِحَمْدِكَ أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا أَنْتَ أَسْتَغْفِرُكَ وَأَتُوبُ إِلَيْكَ",
              latinDoa:
                  " SUBHAANAKALLAAHUMMA WA BIHAMDIKA ASYHADU ANLAA ILAAHA ILLAA ANTA ASTAGHFIRUKA WA ATUUBU ILAIKA",
              bacaDoa: " Maha Suci Engkau wahai Allah"));
      boxDoa.put(
          5,
          Doa(
              id: 5,
              namaDoa: " Ketika Melihat Orang lain Terkena Musibah",
              arabDoa:
                  " الْحَمْدُ لِلَّهِ الَّذِي عَافَانِي مِمَّا ابْتَلَاكَ بِهِ وَفَضَّلَنِي عَلَى كَثِيرٍ مِمَّنْ خَلَقَ تَفْضِيلًا",
              latinDoa:
                  " Al HAMDULILLAAHILLAADZII 'AAFAANII MIMMAABTALAAKA BIHI WA FADHDHALANII 'ALAA KATSIIRIN MIMMAN KHALAQA TAFDHIILAN",
              bacaDoa:
                  " segala puji bagi Allah yang telah menyelamatkanku dari musibah yang diberikan kepadamu"));
      boxDoa.put(
          6,
          Doa(
              id: 6,
              namaDoa: " Doa Ketika Susah",
              arabDoa:
                  " لَا إِلَهَ إِلَّا اللَّهُ الْعَظِيمُ الْحَلِيمُ، لَا إِلَهَ إِلَّا اللهُ رَبُّ الْعَرْشِ الْعَظِيمِ، لَا إِلَهَ إِلَّا اللهُ رَبُّ السَّمَاوَاتِ وَرَبُّ الْأَرْضِ وَرَبُّ الْعَرْشِ الْكَرِيمِ",
              latinDoa: " LAA-ILAAHA ILLALLAHUL 'ADZIIMUL HALIIM",
              bacaDoa:
                  " LAA-ILAAHA ILLALLAH RABBUL'ARSYIL 'AZHIIMI LAA-ILAAHA ILLALLAH RABBUS SAMAAWAATI WARABBUL ARDLI WARABBUL'ASYIL KARIIMI"));
      boxDoa.put(
          7,
          Doa(
              id: 7,
              namaDoa: " Doa Pengampunan Dosa",
              arabDoa:
                  " لَا إِلَهَ إِلَّا اللَّهُ وَاللَّهُ أَكْبَرُ وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ",
              latinDoa: " LAA ILAAHA ILLALLAAHU WALLAAHU AKBAR",
              bacaDoa: " WA LAA HAULA WA LAA QUWWATA ILLAA BILLAAH"));
      boxDoa.put(
          8,
          Doa(
              id: 8,
              namaDoa: " Berat di timbangan",
              arabDoa: " dan disukai Allah",
              latinDoa:
                  " سُبْحَانَ اللَّهِ وَبِحَمْدِهِ سُبْحَانَ اللَّهِ الْعَظِيمِ",
              bacaDoa: " SUBHAANALLAAHI WA BIHAMDIHI"));
      boxDoa.put(
          9,
          Doa(
              id: 9,
              namaDoa: " Doa Masuk Surga",
              arabDoa:
                  " رَضِيتُ بِاللَّهِ رَبًّا وَبِالْإِسْلَامِ دِينًا وَبِمُحَمَّدٍ رَسُولًا",
              latinDoa:
                  " RADHIITU BILLAAHI RABBAN WA BIL-ISLAAMI DIINAN WA BIMUHAMMADIN RASUULAN",
              bacaDoa: " Aku ridha Allah sebagai Tuhanku"));
      boxDoa.put(
          10,
          Doa(
              id: 10,
              namaDoa: " Doa Pengampunan Dosa 2",
              arabDoa:
                  " أَسْتَغْفِرُ اللَّهَ الَّذِي لَا إِلَهَ إِلَّا هُوَ الْحَيُّ الْقَيُّومَ وَأَتُوبُ إِلَيْهِ",
              latinDoa:
                  " ASTAGHFIRULLAAHAL LADZII LAA ILAAHA ILLAA HUWAL HAYYUL QAYYUUMU WA ATUUBU ILAIH",
              bacaDoa:
                  " aku memohon ampun kepada Allah Dzat yang tidak ada tuhan yang berhak disembah kecuali Dia"));
      boxDoa.put(
          11,
          Doa(
              id: 11,
              namaDoa: " Doa Pengampunan Dosa 3",
              arabDoa:
                  " رَبِّ اغْفِرْ لِي وَتُبْ عَلَيَّ إِنَّكَ أَنْتَ التَّوَّابُ الرَّحِيمُ",
              latinDoa: " RABBIGHFIRLII WA TUB 'ALAYYA",
              bacaDoa: " INNAKA ANTAT TAWWAABUR RAHIIM"));
      boxDoa.put(
          12,
          Doa(
              id: 12,
              namaDoa: " Doa Untuk Orang Tua",
              arabDoa:
                  " رَبِّ اغْفِرْ لِي وَلِوَالِدَيَّ وَ ارْحَمْهُمَا كَمَا رَبَّيَانِي صَغِيرًا",
              latinDoa:
                  " Robbighfirli waliwalidayya warkhamhuma kama rabbayani shoghiro",
              bacaDoa: " "));
      boxDoa.put(
          13,
          Doa(
              id: 13,
              namaDoa: " Doa Setelah Adzan",
              arabDoa:
                  " اللَّهُمَّ رَبَّ هَذِهِ الدَّعْوَةِ التَّامَّةِ وَالصَّلَاةِ الْقَائِمَةِ آتِ مُحَمَّدًا الْوَسِيلَةَ وَالْفَضِيلَةَ وَابْعَثْهُ مَقَامًا مَحْمُودًا الَّذِي وَعَدْتَهُ",
              latinDoa:
                  " ALLAHUMMA RABBA HAADZIHID DA'WATIT TAMMAH WASHSHALAATIL QAA'IMAH. AATI MUHAMMADANIL WASIILATA WALFADLIILAH WAB'ATSHU MAQAAMAM MAHMUUDANIL LADZII WA'ADTAH",
              bacaDoa: " Ya Allah. Rabb Pemilik seruan yang sempurna ini"));
      boxDoa.put(
          14,
          Doa(
              id: 14,
              namaDoa: " Doa Sebelum Wudhu",
              arabDoa: " بِسْمِ اللَّهِ",
              latinDoa: " BISMILLAH",
              bacaDoa: " Dengan menyebut nama Allah"));
      boxDoa.put(
          15,
          Doa(
              id: 15,
              namaDoa: " Doa Setelah Wudhu",
              arabDoa:
                  " أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ وَأَنَّ مُحَمَّدًا عَبْدُهُ وَرَسُولُهُ",
              latinDoa:
                  " Asyhadu an laa ilaaha illalaahu wahdahu la syariika lahu",
              bacaDoa: " wa anna Muhammadan 'abduhu wa rasuluhu"));
      boxDoa.put(
          16,
          Doa(
              id: 16,
              namaDoa: " Doa Masuk Masjid",
              arabDoa:
                  " بِسْمِ اللَّهِ وَالسَّلَامُ عَلَى رَسُولِ اللَّهِ اللَّهُمَّ اغْفِرْ لِي ذُنُوبِي وَافْتَحْ لِي أَبْوَابَ رَحْمَتِكَ",
              latinDoa:
                  " BISMILLAHI WASSALAMU 'ALA ROSULILLAHI ALLOHUMMAGHFIRLI DZUNAUBI WAFTAHLI ABWAABA RAHMATIK",
              bacaDoa:
                  " Dengan menyebut Nama Allah dan keselamatan semoga tetap atas Rosulillah Ya Allah"));
      boxDoa.put(
          17,
          Doa(
              id: 17,
              namaDoa: " Doa Keluar Masjid",
              arabDoa:
                  " بِسْمِ اللَّهِ وَالسَّلَامُ عَلَى رَسُولِ اللَّهِ اللَّهُمَّ اغْفِرْ لِي ذُنُوبِي وَافْتَحْ لِي أَبْوَابَ فَضْلِكَ",
              latinDoa:
                  " BISMILLAHI WASSALAMU 'ALA ROSULILLAHI ALLOHUMMAGHFIRLI DZUNAUBI WAFTAHLI ABWAABA FADLLIK",
              bacaDoa:
                  " Dengan menyebut Nama Allah dan keselamatan semoga tetap atas Rosulillah Ya Allah"));
      boxDoa.put(
          18,
          Doa(
              id: 18,
              namaDoa: " Doa Ketika Mau tidur",
              arabDoa: " اَللَّهُمَّ بِاسْمِكَ أَمُوتُ وَأَحْيَا",
              latinDoa: " Allohumma bismika amuutu wa ahya",
              bacaDoa: " Yaa Alloh dengan nama-Mu aku mati dan aku hidup"));
      boxDoa.put(
          19,
          Doa(
              id: 19,
              namaDoa: " Doa Bangun Tidur",
              arabDoa:
                  " الْحَمْدُ لِلَّهِ الَّذِي أَحْيَانَا بَعْدَ مَا أَمَاتَنَا وَإِلَيْهِ النُّشُورُ",
              latinDoa:
                  " Al Hamdulillahilladzii ahyaana ba'da maa amatana wailaihi nusyur",
              bacaDoa:
                  " Segala puji bagi Allah yang telah menghidupkan kami setelah mematikan kami"));
      boxDoa.put(
          20,
          Doa(
              id: 20,
              namaDoa: " Masuk WC",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْخُبُثِ وَالْخَبَائِثِ",
              latinDoa:
                  " ALLAHUMMA INNI A'UUDZU BIKA MINAL KHUBUTSI WAL KHOBAA`ITS",
              bacaDoa:
                  " Ya Allah aku berlindung kepada-Mu dari setan laki-laki dan setan perempuan"));
      boxDoa.put(
          21,
          Doa(
              id: 21,
              namaDoa: " Keluar WC",
              arabDoa: " غُفْرَانَكَ",
              latinDoa: " GHUFRAANAKA",
              bacaDoa: " Aku mengharap ampunan-Mu"));
      boxDoa.put(
          22,
          Doa(
              id: 22,
              namaDoa: " Doa Masuk Rumah",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَ الْمَوْلَجِ وَخَيْرَ الْمَخْرَجِ بِسْمِ اللَّهِ وَلَجْنَا وَبِسْمِ اللَّهِ خَرَجْنَا وَعَلَى اللَّهِ رَبِّنَا تَوَكَّلْنَا",
              latinDoa:
                  " ALLAHUMMA INNII AS`ALUKA KHAIRAL MAULAJ WA KHAIRAL MAKHRAJ BIMILLAH WALAJNAA WA BISMILLAHI KHARAJNAA WA 'ALAALLAHI RABBINAA TAWAKKALNAA",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          23,
          Doa(
              id: 23,
              namaDoa: " Doa Keluar Rumah",
              arabDoa:
                  " بِسْمِ اللَّهِ تَوَكَّلْتُ عَلَى اللَّهِ لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ",
              latinDoa: " BISMILLAHI TAWAKKALTU 'ALALLAAH",
              bacaDoa: "  LAA HAULA WA LAA QUWWATA ILLAA BILLAAH"));
      boxDoa.put(
          24,
          Doa(
              id: 24,
              namaDoa: " Doa Masuk Pasar",
              arabDoa:
                  " لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ يُحْيِي وَيُمِيتُ وَهُوَ حَيٌّ لَا يَمُوتُ بِيَدِهِ الْخَيْرُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ",
              latinDoa: " LAA ILAAHA ILLALLAAHU WAHDAHU LAA SYARIIKA LAH",
              bacaDoa:
                  " LAHUL MULKU WA LAHUL HAMDU YUHYII WA YUMIITU WA HUWA HAYYUN LAA YAMUUTU BIYADIHIL KHAIRU WA HUWA 'ALAA KULLI SYAI-IN QADIIR, H.R. Tirmidzi,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"));
      boxDoa.put(
          25,
          Doa(
              id: 25,
              namaDoa: " Doa Setelah Berpakaian",
              arabDoa:
                  " الْحَمْدُ لِلَّهِ الَّذِي كَسَانِي هَذَا الثَّوْبَ وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِنِّي وَلَا قُوَّةٍ",
              latinDoa:
                  " ALHAMDULILLAHIL LADZII KASAANII HADZA ATS TSAUBA WA RAZAQANIIHI MIN GHAIRI HAULIN MINNI WA LAA QUWWATIN",
              bacaDoa:
                  " Segala puji bagi Allah yang telah memberikan pakaian ini kepadaku sebagai rizki"));
      boxDoa.put(
          26,
          Doa(
              id: 26,
              namaDoa: " Doa Ketika Akan Makan",
              arabDoa: " بِسْمِ اللَّهِ",
              latinDoa: " BISMILLAH",
              bacaDoa: " Dengan menyebut nama Allah"));
      boxDoa.put(
          27,
          Doa(
              id: 27,
              namaDoa: " Doa Ketika Lupa Membaca Basmalah saat akan Makan",
              arabDoa: "  بِسْمِ اللَّهِ فِي أَوَّلِهِ وَآخِرِهِ",
              latinDoa: " BISMILLAHI FI AWWALIHI WA AKHIRIHI",
              bacaDoa: " Dengan menyebut Nama Allah"));
      boxDoa.put(
          28,
          Doa(
              id: 28,
              namaDoa: " Doa Sesudah Makan",
              arabDoa:
                  " الْحَمْدُ لِلَّهِ الَّذِي أَطْعَمَنَا وَسَقَانَا وَجَعَلَنَا مُسْلِمِينَ",
              latinDoa:
                  " Al HAMDULILLAAHILLADZII ATH'AMANAA WA SAQAANAA WA JA'ALANAA MUSLIMIIN",
              bacaDoa:
                  " Segala puji bagi Allah Yang telah memberi makan dan minum kami"));
      boxDoa.put(
          29,
          Doa(
              id: 29,
              namaDoa: " Doa Sesudah Minum Susu",
              arabDoa: " اللَّهُمَّ بَارِكْ لَنَا فِيهِ وَزِدْنَا مِنْهُ",
              latinDoa: " ALLAAHUMMA BAARIK LANAA FIIHI WA ZIDNAA MINHU",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          30,
          Doa(
              id: 30,
              namaDoa: " Doa Berdiri dari Duduk",
              arabDoa:
                  " سُبْحَانَكَ اللَّهُمَّ وَبِحَمْدِكَ أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا أَنْتَ أَسْتَغْفِرُكَ وَأَتُوبُ إِلَيْكَ",
              latinDoa:
                  " SUBHAANAKALLAAHUMMA WA BIHAMDIKA ASYHADU ANLAA ILAAHA ILLAA ANTA ASTAGHFIRUKA WA ATUUBU ILAIKA",
              bacaDoa: " Maha Suci Engkau wahai Allah"));
      boxDoa.put(
          31,
          Doa(
              id: 31,
              namaDoa: " Doa Menjimak Istri (Berhubungan Suami Istri)",
              arabDoa:
                  " اللَّهُمَّ جَنِّبْنَا الشَّيْطَانَ وَجَنِّبِ الشَّيْطَانَ مَا رَزَقْتَنَا",
              latinDoa:
                  " ALLAHUMMA JANNIBNASY SYAITHAANA WA JANNIBISY SYAITHAANA MAA RAZAQTANAA",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          32,
          Doa(
              id: 32,
              namaDoa: " Doa Naik Kendaraan",
              arabDoa: " بِسْمِ اللَّهِ 3",
              latinDoa:
                  "<br>الْحَمْدُ لِلَّهِ 3 <br> سُبْحَانَ الَّذِي سَخَّرَ لَنَا هَذَا وَمَا كُنَّا لَهُ مُقْرِنِينَ وَإِنَّا إِلَى رَبِّنَا لَمُنْقَلِبُونَ<br> الْحَمْدُ لِلَّهِ 3<br> اللَّهُ أَكْبَرُ3 <br> سُبْحَانَكَ إِنِّي قَدْ ظَلَمْتُ نَفْسِي فَاغْفِرْ لِي فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْت",
              bacaDoa:
                  " BISMILLAAH 3X<br> Al HAMDULILLAAH 3X<br> SUBHAANALLADZII SAKHKHARA LANAA HAADZAA WA MAA KUNNAA LAHUU MUQRINIIN"));
      boxDoa.put(
          33,
          Doa(
              id: 33,
              namaDoa: " Ketika terkena musibah",
              arabDoa:
                  " إِنَّا لِلَّهِ وَإِنَّا إِلَيْهِ رَاجِعُونَ اللَّهُمَّ أْجُرْنِي فِي مُصِيبَتِي وَأَخْلِفْ لِي خَيْرًا مِنْهَا",
              latinDoa:
                  " INAA LILLAHI WAINNAA ILAIHI RAAJI'UUN ALLAHUMMA`JURNII FII MUSHIIBATI WA AKHLIF LII KHAIRAN MINHAA",
              bacaDoa:
                  " Sesungguhnya kami adalah milik Allah dan akan kembali kepada Allah. Ya Allah"));
      boxDoa.put(
          34,
          Doa(
              id: 34,
              namaDoa: " Doa Ketika Bersin",
              arabDoa: "  الْحَمْدُ لِلَّهِ",
              latinDoa: " Al Hamdulillah",
              bacaDoa: " "));
      boxDoa.put(
          35,
          Doa(
              id: 35,
              namaDoa: " Doa Ketika Mendengar Orang Yang Bersin",
              arabDoa: "  يَرْحَمُكَ اللَّهُ",
              latinDoa: " Yarhamukallah ",
              bacaDoa: " semoga Allah merahmatimu"));
      boxDoa.put(
          36,
          Doa(
              id: 36,
              namaDoa: " Jawaban Doa yang mendoakan kita ketika kita bersin",
              arabDoa: "  يَهْدِيكُمُ اللَّهُ وَيُصْلِحُ بَالَكُمْ",
              latinDoa: " Yahdikumullah wa yushlih baalakum",
              bacaDoa:
                  " semoga Allah memberimu petunjuk dan memperbaiki hatimu"));
      boxDoa.put(
          37,
          Doa(
              id: 37,
              namaDoa: " Doa Menuju Masjid",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَسْأَلُكَ بِحَقِّ السَّائِلِينَ عَلَيْكَ وَأَسْأَلُكَ بِحَقِّ مَمْشَايَ هَذَا فَإِنِّي لَمْ أَخْرُجْ أَشَرًا وَلَا بَطَرًا وَلَا رِيَاءً وَلَا سُمْعَةً وَخَرَجْتُ اتِّقَاءَ سُخْطِكَ وَابْتِغَاءَ مَرْضَاتِكَ فَأَسْأَلُكَ أَنْ تُعِيذَنِي مِنْ النَّارِ وَأَنْ تَغْفِرَ لِي ذُنُوبِي إِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ",
              latinDoa:
                  " ALAHUMMA INNI AS`ALUKA BI HAQQIS SA`ILIIN 'ALAIKA WA AS`ALUKA BI HAQQI MAMSYAAYA HADZA FA INNI LAM AKHRUJ ASYARAN WA LAA BATHARAN WA LAA RIYA`AN WA LAA SUM'ATAN WA KHARAJTU ITTIQA`A SUKHTHIKA WABTIGHA`A MARDLATIKA FA AS`ALUKA AN TU'IDZANI MINANNAR WA AN TAGHFIRALI DZUNUBI INNAHU LAA YAGHFIRUDZ DZUNUBA ILLA ANTA",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          38,
          Doa(
              id: 38,
              namaDoa: " Doa Memakai Pakaian Baru",
              arabDoa:
                  " الْحَمْدُ لِلَّهِ الَّذِي كَسَانِي مَا أُوَارِي بِهِ عَوْرَتِي وَأَتَجَمَّلُ بِهِ فِي حَيَاتِي",
              latinDoa:
                  " Al HAMDULILLAAHILLADZII KASAANII MAA UWAARII BIHI 'AURAATII",
              bacaDoa: " WA ATAJAMMALU BIHI FII HAYAATII"));
      boxDoa.put(
          39,
          Doa(
              id: 39,
              namaDoa: " Doa Sesudah Makan 2",
              arabDoa:
                  " الْحَمْدُ لِلَّهِ الَّذِي أَطْعَمَنِي هَذَا وَرَزَقَنِيهِ مِنْ غَيْرِ حَوْلٍ مِنِّي وَلَا قُوَّةٍ",
              latinDoa:
                  " Al HAMDULILLAAHILLADZII ATH'AMANII HAADZAA WA RAZAQANIIHI MIN GHAIRI HAULIN MINNII WA LAA QUWWATIN",
              bacaDoa:
                  " Segala puji bagi Allah yang telah memberiku minum ini"));
      boxDoa.put(
          40,
          Doa(
              id: 40,
              namaDoa: " Doa Sesudah Makan 3",
              arabDoa:
                  " اللَّهُمَّ بَارِكْ لَنَا فِيهِ وَأَطْعِمْنَا خَيْرًا مِنْهُ",
              latinDoa:
                  " ALLAAHUMMA BAARIK LANAA FIIHI WA ATH'IMNAA KHAIRAN MINHU",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          41,
          Doa(
              id: 41,
              namaDoa: " Doa Berdiri dari Duduk 2",
              arabDoa:
                  " رَبِّ اغْفِرْ لِي وَتُبْ عَلَيَّ إِنَّكَ أَنْتَ التَّوَّابُ الْغَفُورُ",
              latinDoa:
                  " RABBIGHFIRLII WA TUB 'ALAYYA INNAKA ANTAT TAWWAABUL GAFUUR",
              bacaDoa: " Wahai Tuhanku"));
      boxDoa.put(
          42,
          Doa(
              id: 42,
              namaDoa: " Doa Ketika Mendengar Petir",
              arabDoa:
                  " اللَّهُمَّ لَا تَقْتُلْنَا بِغَضَبِكَ وَلَا تُهْلِكْنَا بِعَذَابِكَ وَعَافِنَا قَبْلَ ذَلِكَ",
              latinDoa:
                  " ALLAAHUMMA LAA TAQTULNAA BIGHADHABIKA WA LAA TUHLIKNAA BI'ADZAABIKA WA 'AAFINAA QABLA DZAALIK",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          43,
          Doa(
              id: 43,
              namaDoa: " Doa Ketika Menjumpai tanggal 1",
              arabDoa:
                  " اللَّهُمَّ أَهْلِلْهُ عَلَيْنَا بِالْيُمْنِ وَالْإِيمَانِ وَالسَّلَامَةِ وَالْإِسْلَامِ رَبِّي وَرَبُّكَ اللَّهُ",
              latinDoa:
                  " ALLAAHUMMA AHLILHU 'ALAINAA BILYUMNI WAL AIMAANI WAS SALAAMATI WAL ISLAAM",
              bacaDoa: " RABBII WA RABBUKALLAAH"));
      boxDoa.put(
          44,
          Doa(
              id: 44,
              namaDoa: " Doa Ketika Marah",
              arabDoa: " أَعُوذُ بِاللَّهِ مِنَ الشَّيْطَانِ الرَّجِيمِ",
              latinDoa: " A'UUDZU BILLAAHI MINASYSYAITHAANIRRAJIIM",
              bacaDoa:
                  " aku berlindung kepada Allah dari syetan yang terkutuk"));
      boxDoa.put(
          45,
          Doa(
              id: 45,
              namaDoa: " Doa Ketika Angin Kencang",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَسْأَلُكَ مِنْ خَيْرِهَا وَخَيْرِ مَا فِيهَا وَخَيْرِ مَا أُرْسِلَتْ بِهِ وَأَعُوذُ بِكَ مِنْ شَرِّهَا وَشَرِّ مَا فِيهَا وَشَرِّ مَا أُرْسِلَتْ بِهِ",
              latinDoa:
                  " ALLAAHUMMA INNII AS-ALUKA MIN KHAIRIHAA WA KHAIRI MAA FIIHAA WA KHAIRI MAA URSILAT BIHI WA A'UUDZU BIKA MIN SYARRIHAA WA SYARRI MAA FIIHAA WA SYARRI MAA URSILAT BIHI",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          46,
          Doa(
              id: 46,
              namaDoa: " Doa Sujud Quran",
              arabDoa:
                  " سَجَدَ وَجْهِي لِلَّذِي خَلَقَهُ وَشَقَّ سَمْعَهُ وَبَصَرَهُ بِحَوْلِهِ وَقُوَّتِهِ",
              latinDoa:
                  " SAJADA WAJHIYA LILLADZII KHALAQAHU WA SYAQQA SAM'AHU WA BASHARAHU BIHAULIHI WA QUWWATIH.",
              bacaDoa:
                  " wajahku bersujud kepada Dzat telah menciptakannya dan membuka pendengaran dan penglihatannya dengan daya dan kekuatanNya"));
      boxDoa.put(
          47,
          Doa(
              id: 47,
              namaDoa: " Doa Ketika Mau tidur 2",
              arabDoa:
                  " اللَّهُمَّ أَسْلَمْتُ نَفْسِي إِلَيْكَ وَفَوَّضْتُ أَمْرِي إِلَيْكَ وَأَلْجَأْتُ ظَهْرِي إِلَيْكَ رَهْبَةً وَرَغْبَةً إِلَيْكَ لَا مَلْجَأَ وَلَا مَنْجَا مِنْكَ إِلَّا إِلَيْكَ آمَنْتُ بِكِتَابِكَ الَّذِي أَنْزَلْتَ وَبِنَبِيِّكَ الَّذِي أَرْسَلْتَ",
              latinDoa:
                  " ALLAHUMMA ASLAMTU NAFSII ILAIKA WA FAWWADLTU AMRII ILAIKA WA ALJA`TU ZHAHRII ILAIKA RAHBATAN WA RAGHBATAN ILAIKA LAA MALJA`A WA LAA MANJAA ILLAA ILAIKA AAMANTU BIKITAABIKALLADZII ANZALTA WANNABIYYIKALLADZII ARSALTA",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          48,
          Doa(
              id: 48,
              namaDoa: " Doa Ketika Mau tidur 3",
              arabDoa:
                  " أَسْتَغْفِرُ اللَّهَ الْعَظِيمَ الَّذِي لَا إِلَهَ إِلَّا هُوَ الْحَيَّ الْقَيُّومَ وَأَتُوبُ إِلَيْهِ",
              latinDoa:
                  " ASTAGHFIRULLAAHAL 'AZHIIM ALLADZII LAA ILAAHA ILLAA HUWAL HAYYUL QAYYUUM WA ATUUBU ILAIH",
              bacaDoa: " Aku memohon ampunan kepada Allah yang Maha Agung"));
      boxDoa.put(
          49,
          Doa(
              id: 49,
              namaDoa: " Sering dibaca Nabi Muhammad SAW",
              arabDoa:
                  " اللَّهُمَّ رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً وَفِي الْآخِرَةِ حَسَنَةً وَقِنَا عَذَابَ النَّارِ",
              latinDoa:
                  " ALLAAHUMMA RABBANAA AATINAA FID DUN-YAA HASANAH WAFIL AAKHIRATI HASANAH WAQINAA 'ADZAABAN NAAR",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          50,
          Doa(
              id: 50,
              namaDoa: " Sering dibaca Nabi Muhammad SAW 2",
              arabDoa:
                  " يَا مُقَلِّبَ الْقُلُوبِ ثَبِّتْ قَلْبِي عَلَى دِينِكَ",
              latinDoa: " YAA MUQALLIBAL QULUUB",
              bacaDoa: " TSABBIT QALBII 'ALAA DIINIKA"));
      boxDoa.put(
          51,
          Doa(
              id: 51,
              namaDoa: " Doa-doa Nabi Muhammad SAW",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ زَوَالِ نِعْمَتِكَ وَتَحَوُّلِ عَافِيَتِكَ وَفُجَاءَةِ نِقْمَتِكَ وَجَمِيعِ سَخَطِكَ",
              latinDoa: " ALLOOHUMMA INNII A'UUDZU BIKA MIN ZAWAALI NI'MATIKA",
              bacaDoa: " WATAHAWWULI 'AAFIYATIKA"));
      boxDoa.put(
          52,
          Doa(
              id: 52,
              namaDoa: " Doa Sapu Jagad",
              arabDoa:
                  " اللَّهُمَّ إِنَّا نَسْأَلُكَ مِنْ خَيْرِ مَا سَأَلَكَ مِنْهُ نَبِيُّكَ مُحَمَّدٌ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَنَعُوذُ بِكَ مِنْ شَرِّ مَا اسْتَعَاذَ مِنْهُ نَبِيُّكَ مُحَمَّدٌ صَلَّى اللَّهُ عَلَيْهِ وَسَلَّمَ وَأَنْتَ الْمُسْتَعَانُ وَعَلَيْكَ الْبَلَاغُ وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ",
              latinDoa:
                  " ALLAAHUMMA INNAA NAS-ALUKA MIN KHAIRI MAA SA-ALAKA MINHU NABIYYUKA MUHAMMADIN WA NA'UUDZU BIKA MIN SYARRI MAS TA'AADZA MINHU NABIYYUKA MUHAMMADUN SHALLALLAHU 'ALAIHI WASALLAM WA ANTAL MUSTA'AANU WA 'ALAIKAL BALAAGH",
              bacaDoa: " WA LAA HAULA WA LAA QUWWATA ILLAA BILLAH"));
      boxDoa.put(
          53,
          Doa(
              id: 53,
              namaDoa:
                  " Ali Imron 38 (Doa Nabi Zakaria AS - Meminta Keturunan/anak)",
              arabDoa:
                  " ۔... رَبِّ هَبۡ لِى مِن لَّدُنكَ ذُرِّيَّةً۬ طَيِّبَةً‌ۖ إِنَّكَ سَمِيعُ ٱلدُّعَآءِ",
              latinDoa:
                  " ROBBI HABLII MILLADUNKA DZURRIYATAN TOYYIBATAN INNAKA SAMII'UDDU'AA",
              bacaDoa: " Ya Tuhanku"));
      boxDoa.put(
          54,
          Doa(
              id: 54,
              namaDoa: " Ibrahim 40 (Doa Nabi Ibrahim AS)",
              arabDoa:
                  " رَبِّ اجْعَلْنِي مُقِيمَ الصَّلَاةِ وَمِنْ ذُرِّيَّتِي ۚ رَبَّنَا وَتَقَبَّلْ دُعَاءِ",
              latinDoa:
                  " ROBBIJ 'ALNII MUQIIMASSOLAATI WA MIN DZURRIYYATII ROBBANAA WA TAQOBBAL DU'AA",
              bacaDoa: " Ya Tuhanku"));
      boxDoa.put(
          55,
          Doa(
              id: 55,
              namaDoa: " Toha 25-28 (Doa Nabi Musa AS)",
              arabDoa:
                  " ۔... رَبِّ اشْرَحْ لِي صَدْرِي (25) وَيَسِّرْ لِي أَمْرِي (26) وَاحْلُلْ عُقْدَةً مِنْ لِسَانِي (27) يَفْقَهُوا قَوْلِي (28)۔",
              latinDoa:
                  " ROBBISYROKHLII SHODRII WA YASSIRLII AMRII WAHLUL 'UQDATAMMILLISAANII YAFQOHUU QOULII",
              bacaDoa: " 25. ... Ya Tuhanku"));
      boxDoa.put(
          56,
          Doa(
              id: 56,
              namaDoa: " Al Anbiya' 83 (Doa Nabi Ayub AS)",
              arabDoa:
                  " ۔... أَنِّي مَسَّنِيَ الضُّرُّ وَأَنْتَ أَرْحَمُ الرَّاحِمِينَ",
              latinDoa: " ",
              bacaDoa:
                  " … sesungguhnya aku telah ditimpa penyakit dan Engkau adalah Tuhan Yang Maha Penyayang di antara semua penyayang"));
      boxDoa.put(
          57,
          Doa(
              id: 57,
              namaDoa: " Al Anbiya' 87 (Doa Nabi Yunus AS)",
              arabDoa:
                  " ۔... لَا إِلَهَ إِلَّا أَنْتَ سُبْحَانَكَ إِنِّي كُنْتُ مِنَ الظَّالِمِينَ",
              latinDoa:
                  " … LAA ILAAHA ILLAA ANTA SUBHAANAKA INNII KUNTU MINAZH ZHAALIMIIN",
              bacaDoa: " tidak ada Tuhan selain Engkau. Maha Suci Engkau"));
      boxDoa.put(
          58,
          Doa(
              id: 58,
              namaDoa: " Al Anbiya' 89 (Doa Nabi Zakaria AS)",
              arabDoa:
                  "  ۔... رَبِّ لَا تَذَرْنِي فَرْدًا وَأَنْتَ خَيْرُ الْوَارِثِينَ",
              latinDoa:
                  " ROBBI LAA TADZARNII FARDAN WA ANTA KHOIRUL WAARITSIIN",
              bacaDoa:
                  " ... Ya Tuhanku janganlah Engkau membiarkan aku hidup seorang diri dan Engkaulah Waris Yang Paling Baik"));
      boxDoa.put(
          59,
          Doa(
              id: 59,
              namaDoa: " Su'aro' 83",
              arabDoa: "84",
              latinDoa: "85",
              bacaDoa: "87 (Doa Nabi Ibrahim AS)"));
      boxDoa.put(
          60,
          Doa(
              id: 60,
              namaDoa: " An Naml 19 (Doa Nabi Sulaiman AS)",
              arabDoa:
                  " ۔... رَبِّ أَوْزِعْنِي أَنْ أَشْكُرَ نِعْمَتَكَ الَّتِي أَنْعَمْتَ عَلَيَّ وَعَلَىٰ وَالِدَيَّ وَأَنْ أَعْمَلَ صَالِحًا تَرْضَاهُ وَأَدْخِلْنِي بِرَحْمَتِكَ فِي عِبَادِكَ الصَّالِحِينَ",
              latinDoa:
                  " ROBBI AUZI'NII AN ASYKURO NI'MATAKA ALLATII AN'AMTA 'ALAYYA WA 'ALAA WAALIDAYYA WA AN A'MALA SHOOLIHAN TARDHOOHU WA ADKHILNII BIROHMATIKA FII 'IBAADIKASSOOLIHIIN",
              bacaDoa:
                  " ... Ya Tuhanku berilah aku ilham untuk tetap mensyukuri nikmat Mu yang telah Engkau anugerahkan kepadaku dan kepada dua orang ibu bapakku dan untuk mengerjakan amal saleh yang Engkau ridhai; dan masukkanlah aku dengan rahmat-Mu ke dalam golongan hamba-hamba-Mu yang saleh"));
      boxDoa.put(
          61,
          Doa(
              id: 61,
              namaDoa: " Al Qosos 16 (Doa Nabi Musa AS)",
              arabDoa: " ۔... رَبِّ إِنِّي ظَلَمْتُ نَفْسِي فَاغْفِرْ ...۔",
              latinDoa: " ROBBI INNII DZOLAMTU NAFSII FAGHFIRLII",
              bacaDoa: " ... Ya Tuhanku"));
      boxDoa.put(
          62,
          Doa(
              id: 62,
              namaDoa: " Al Qosos 24 (Doa Nabi Musa AS)",
              arabDoa:
                  " ۔... رَبِّ إِنِّي لِمَا أَنْزَلْتَ إِلَيَّ مِنْ خَيْرٍ فَقِيرٌ",
              latinDoa: " ROBBI INNII LIMAA ANZALTA ILAYYA MIN KHOIRIN FAQIIR",
              bacaDoa:
                  " ... Ya Tuhanku sesungguhnya aku sangat memerlukan sesuatu kebaikan yang Engkau turunkan kepadaku"));
      boxDoa.put(
          63,
          Doa(
              id: 63,
              namaDoa: " Al Qosos 21 (Doa Nabi Musa AS)",
              arabDoa: " ۔... رَبِّ نَجِّنِي مِنَ الْقَوْمِ الظَّالِمِينَ",
              latinDoa: " ROBBI NAJJINII MINAL QOUMIDZDZOOLIMIIN",
              bacaDoa: " ... Ya Tuhanku"));
      boxDoa.put(
          64,
          Doa(
              id: 64,
              namaDoa: " Al Qosos 22 (Doa Nabi Musa AS)",
              arabDoa:
                  " ۔... عَسَىٰ رَبِّي أَنْ يَهْدِيَنِي سَوَاءَ السَّبِيلِ",
              latinDoa: " 'ASAA ROBBII AYYAHDIYANII SAWAA ASSABIIL",
              bacaDoa:
                  " ... Mudah-mudahan Tuhanku memimpinku ke jalan yang benar"));
      boxDoa.put(
          65,
          Doa(
              id: 65,
              namaDoa: " Al Ankabut 30 (Doa Nabi Luth AS)",
              arabDoa: " ۔... رَبِّ انْصُرْنِي عَلَى الْقَوْمِ الْمُفْسِدِينَ",
              latinDoa: " ROBBIN SHURNII 'ALAL QOUMIL FAASIQIIN",
              bacaDoa: " ... Ya Tuhanku"));
      boxDoa.put(
          66,
          Doa(
              id: 66,
              namaDoa: " Ibrahim 35 (Doa Nabi Ibrahim AS)",
              arabDoa:
                  " ۔... رَبِّ اجْعَلْ هَٰذَا الْبَلَدَ آمِنًا وَاجْنُبْنِي وَبَنِيَّ أَنْ نَعْبُدَ الْأَصْنَامَ",
              latinDoa:
                  " ROBBIJ'AL HAADZAL BALADA AAMINAN WAJNUBNII WA BANIYYA ANNA'BUDAL ASHNAAM",
              bacaDoa: " ... Ya Tuhanku"));
      boxDoa.put(
          67,
          Doa(
              id: 67,
              namaDoa: " As Saffat 100 (Doa Nabi Ibrahim AS)",
              arabDoa: " رَبِّ هَبْ لِي مِنَ الصَّالِحِينَ",
              latinDoa: " ROBBI HABLII MINASSHOOLIHIIN",
              bacaDoa: " Ya Tuhanku"));
      boxDoa.put(
          68,
          Doa(
              id: 68,
              namaDoa: " Al Mumtahanah 4",
              arabDoa: "5 (Doa Nabi Ibrahim AS)",
              latinDoa:
                  " ۔... رَبَّنَا عَلَيْكَ تَوَكَّلْنَا وَإِلَيْكَ أَنَبْنَا وَإِلَيْكَ الْمَصِيرُ (4) رَبَّنَا لَا تَجْعَلْنَا فِتْنَةً لِلَّذِينَ كَفَرُوا وَاغْفِرْ لَنَا رَبَّنَا ۖ إِنَّكَ أَنْتَ الْعَزِيزُ الْحَكِيمُ (5)۔",
              bacaDoa:
                  " ROBBANAA 'ALAIKA TAWAKKALNAA WA ILAIKA ANABNAA WA ILAIKAL MASHIIR ROBBANAA LAA TAJ'ALNAA FITNATAN LILLADZIINA KAFARUU WAGHFIRLANAA ROBBANAA INNAKA ANTAL 'AZIIZUL HAKIIM"));
      boxDoa.put(
          69,
          Doa(
              id: 69,
              namaDoa: " Doa Nabi Daud AS",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَسْأَلُكَ حُبَّكَ وَحُبَّ مَنْ يُحِبُّكَ وَالْعَمَلَ الَّذِي يُبَلِّغُنِي حُبَّكَ اللَّهُمَّ اجْعَلْ حُبَّكَ أَحَبَّ إِلَيَّ مِنْ نَفْسِي وَأَهْلِي وَمِنَ الْمَاءِ الْبَارِدِ",
              latinDoa: " ALLAAHUMMA INNII AS-ALUKA HUBBAKA",
              bacaDoa: " WA HUBBA MAN YUHIBBUKA"));
      boxDoa.put(
          70,
          Doa(
              id: 70,
              namaDoa: " Doa Nabi Yusuf AS",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَسْأَلُكَ بِاسْمِكَ الْمَخْزُوْنِ وَالْمَكْنُوْنِ يَا بَدِيْعَ السَّمٰوَاتِ وَالْأَرْضِ يَا ذَا الْجَلَالِ وَالْاِكْرَامِ أَنْ تَغْفِرَ لِي ذَنْبِي وَتَرْحَمْنِي وَأَنْ تَجْعَلَ لِي مِنْ أَمْرِي فَرَجًا وَمَخْرَجًا وَأَنْ تَرْزُقَنِي مِنْ حَيْثُ أَحْتَسِبُ وَمِنْ حَيْثُ لَا أَحْتَسِبُ",
              latinDoa:
                  " Allaahumma innii as’aluKa bismiKal Makhzuuni wal Maknuuni yaa badii’as samaawaati wal ardhi yaa Dzal Jalaali wal Ikraami an taghfira lii dzanbii wa tarchamanii wa an taj’ala lii min amrii farajan wa makhrajaa wa an tarzuqanii min chaitsu achtasibu wa min chaitsu laa achtasib",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          71,
          Doa(
              id: 71,
              namaDoa: " Nabi Yusyak (Yosua) AS",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَسْأَلُكَ بِاسْمِكَ الزَّكِيِّ الطَّهَرِ الطَّاهِرِ الْمُطَهَّرِ الْمُقَدَّسِ الْمُباَرَكِ الْمِخْزُوْنِ الْمَكْنُوْنِ الْمَكْتُوْبِ عَلَى سُراَدِقِ الْمَجْدِ وَسُراَدِقِ الْحَمْدِ وَسُراَدِقِ الْقُدْرَةِ وَسُراَدِقِ السُّلْطاَنِ وَسُراَدِقِ السِّرِّ إِنِّي أَدْعُوْكَ ياَ رَبِّ بِأَنَّ لَكَ الْحَمْدَ لاَ إِلهَ اِلاَّ أَنْتَ النُّوْرُ الْبَارُّ الرَّحْمنُ الرَّحِيْمُ الصَّادِقُ عَالِمُ الْغَيْبِ وَالشَّهاَدَةِ بَدِيْعُ السَّمواَتِ وَالْأَرْضِ وَنُوْرُهُنَّ وَقَيِّمُهُنَّ ذُوْ الْجَلاَلِ وَالْإِكرَامِ حَناَّنُ مَناَّنُ جَباَّرُ نُوْرٌ داَئِمٌ قُدُّوْسٌ حَيٌّ لاَ يَمُوْتُ",
              latinDoa:
                  " Allaahumma innii asaluKa bi-SmiKaz-Zakkiyyit-Thahiri-Ttaahiril-Muthahharil-Muqaddasil-Mubarakil-Makhzuunil-Maknuunil-Maktuubi alaa suraadiqil-majdi wasuraadiqil-qudrati wasuraadiqis-Sulthaani wasuraadiqis-Sirri. Innii aduuKa yaa Rabbi bianna laKal-hamda laa Ilaaha illaa Antan-Nuurul-Baarrur-Rahmaanur-Rachiimus-Shaadiqu Aalimul-ghoibi wassyahaadati Badiiussamaawaati wal-Ardhi wa-Nuuruhunna wa-Qayyimuhunna Dzul-Jalaali wal-ikraami Channanu Mannaanu Jabbaru Nuurun Daaimun Quddusun Chayyun laa yamuutu",
              bacaDoa:
                  " Ya Allah! Sungguh saya minta pada Kau dengan NamaMu yang Maha Suci Maha Bersih Maha Bersih Maha membersihkan yang dianggap suci yang dibarakahi yang disimpan yang disembunyikan yang ditulis di dinding keagungan"));
      boxDoa.put(
          72,
          Doa(
              id: 72,
              namaDoa: " Pengampunan Dosa",
              arabDoa:
                  " رَبِّ اغْفِرْ لِي خَطِيئَتِي وَجَهْلِي وَإِسْرَافِي فِي أَمْرِي كُلِّهِ وَمَا أَنْتَ أَعْلَمُ بِهِ مِنِّي اللَّهُمَّ اغْفِرْ لِي خَطَايَايَ وَعَمْدِي وَجَهْلِي وَهَزْلِي وَكُلُّ ذَلِكَ عِنْدِي اللَّهُمَّ اغْفِرْ لِي مَا قَدَّمْتُ وَمَا أَخَّرْتُ وَمَا أَسْرَرْتُ وَمَا أَعْلَنْتُ أَنْتَ الْمُقَدِّمُ وَأَنْتَ الْمُؤَخِّرُ وَأَنْتَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ",
              latinDoa:
                  " ROBBIGHFIRLII KHOTHIIATII WAJAHLII WA ISROOFII FII AMRII KULLIHI WA MAA ANTA A'LAMU BIHI MINNII ALLOHUMMAGHFIRLII KHOTHOOYAAYA WA 'AMDII WA JAHLII WA HAZLII WA KULLU DZAALIKA 'INDII ALLOHUMMAGHFIRLII MAA QODDAMTU WA MAA AKHKHORTU WA MAA ASRORTU WA MAA A'LANTU ANTAL MUQODDIMU WA ANTAL MUAKHKHIRU WA ANTA 'ALAA KULLI SYAI IN QODIIR",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          73,
          Doa(
              id: 73,
              namaDoa: " Mohon Masuk Surga",
              arabDoa:
                  " اللَّهُمَّ اغْفِرْ لَنَا وَارْحَمْنَا، وَارْضَ عَنَّا، وَتَقَبَّلْ مِنَّا، وَأَدْخِلْنَا الْجَنَّةَ، وَنَجِّنَا مِنَ النَّارِ، وَأَصْلِحْ لَنَا شَأْنَنَا كُلَّهُ",
              latinDoa:
                  " ALLOHUMMAGHFIRLANAA WARHAMNAA WARDHO 'ANNA WA TAQOBBAL MINNAA WA ADKHILNALJANNATA WA NAJJINAA MINANNAARI WA ASHLIH LANAA SYA'NANAA KULLAH",
              bacaDoa: " Ya Allah! Ampuni kami"));
      boxDoa.put(
          74,
          Doa(
              id: 74,
              namaDoa: " Mohon Baiknya Urusan Dunia Akhirot",
              arabDoa:
                  " اللهُمَّ أَصْلِحْ لِي دِينِي الَّذِي هُوَ عِصْمَةُ أَمْرِي، وَأَصْلِحْ لِي دُنْيَايَ الَّتِي فِيهَا مَعَاشِي، وَأَصْلِحْ لِي آخِرَتِي الَّتِي فِيهَا مَعَادِي، وَاجْعَلِ الْحَيَاةَ زِيَادَةً لِي فِي كُلِّ خَيْرٍ، وَاجْعَلِ الْمَوْتَ رَاحَةً لِي مِنْ كُلِّ شَرٍّ",
              latinDoa:
                  " ALLOOHUMMA ASHLIH LII DIINII ALLADZII HUWA 'ISHMATU AMRII",
              bacaDoa: " WA ASHLIH LII DUN-YAAYA ALLATII FIIHAA MA'AASYII"));
      boxDoa.put(
          75,
          Doa(
              id: 75,
              namaDoa: " Mohon Petunjuk dan Kebenaran",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَسْأَلُكَ الْهُدَى وَالتُّقَى وَالْعَفَافَ وَالْغِنَى",
              latinDoa:
                  " ALLOOHUMMA INNII AS-ALUKALHUDAA WATTUQOO WAL'AFAAFA WALGHINAA",
              bacaDoa: " Ya Allah ya Tuhanku"));
      boxDoa.put(
          76,
          Doa(
              id: 76,
              namaDoa: " Mohon Petunjuk dan Kebenaran 2",
              arabDoa:
                  " اللَّهُمَّ اهْدِنِي وَسَدِّدْنِي وَاذْكُرْ بِالْهُدَى هِدَايَتَكَ الطَّرِيقَ وَالسَّدَادِ سَدَادَ السَّهْمِ",
              latinDoa:
                  " ALOOHUMMAH DINII WASADDIDNII WADZKUR BILHUDAA HIDAAYATAKATH THORIIQO WASSADAADI SADAADAS SAHMI",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          77,
          Doa(
              id: 77,
              namaDoa: " Mohon Khusyu' dan Doa Maqbul",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ وَالْجُبْنِ وَالْبُخْلِ وَالْهَرَمِ وَعَذَابِ الْقَبْرِ اللَّهُمَّ آتِ نَفْسِي تَقْوَاهَا وَزَكِّهَا أَنْتَ خَيْرُ مَنْ زَكَّاهَا أَنْتَ وَلِيُّهَا وَمَوْلَاهَا اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ عِلْمٍ لَا يَنْفَعُ وَمِنْ قَلْبٍ لَا يَخْشَعُ وَمِنْ نَفْسٍ لَا تَشْبَعُ وَمِنْ دَعْوَةٍ لَا يُسْتَجَابُ لَهَا",
              latinDoa: " ALLOOHUMMA INNII A'UUDZU BIKA MINAL 'AJZI WAL KASALI",
              bacaDoa:
                  " WAL JUBNI WAL BUKHLI WAL HAROMI, and Guardian thereof. O Allah, I seek refuge in Thee from the knowledge which does not benefit, from the heart that does not entertain the fear (of Allah), from the soul that does not feel contented and the supplication that is not responded, , , H.R. Muslim,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"));
      boxDoa.put(
          78,
          Doa(
              id: 78,
              namaDoa: " Mohon Khusyu' dan Doa Maqbul 2",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ قَلْبٍ لَا يَخْشَعُ وَمِنْ دُعَاءٍ لَا يُسْمَعُ وَمِنْ نَفْسٍ لَا تَشْبَعُ وَمِنْ عِلْمٍ لَا يَنْفَعُ أَعُوذُ بِكَ مِنْ هَؤُلَاءِ الْأَرْبَعِ",
              latinDoa:
                  " ALLAAHUMMA INNII A'UUDZU BIKA MIN QALBIN LAA YAKHSYA'",
              bacaDoa:
                  " WA MIN DU'AAIN LAA YUSMA' WA MIN NAFSIN LAA TASYBA' WA MIN 'ILMIN LAA YANFA' WA"));
      boxDoa.put(
          79,
          Doa(
              id: 79,
              namaDoa: " Mohon Ilham yang Benar",
              arabDoa:
                  " اللَّهُمَّ أَلْهِمْنِي رُشْدِي وَأَعِذْنِي مِنْ شَرِّ نَفْسِي",
              latinDoa:
                  " ALLAAHUMMA ALHIMNII RUSYDII WA A'IDZNII MIN SYARRI NAFSII",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          80,
          Doa(
              id: 80,
              namaDoa: " Mohon Kesehatan Badan",
              arabDoa:
                  " اللَّهُمَّ عَافِنِي فِي جَسَدِي وَعَافِنِي فِي بَصَرِي وَاجْعَلْهُ الْوَارِثَ مِنِّي لَا إِلَهَ إِلَّا اللَّهُ الْحَلِيمُ الْكَرِيمُ سُبْحَانَ اللَّهِ رَبِّ الْعَرْشِ الْعَظِيمِ وَالْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ",
              latinDoa: " ALLAAHUMMA 'AAFINII FII JASADII",
              bacaDoa:
                  " WA 'AAFINII FII BASHARII, , , H.R. Tirmidzi,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"));
      boxDoa.put(
          81,
          Doa(
              id: 81,
              namaDoa: " Mohon Rumah dan Rezekinya Barokah",
              arabDoa:
                  " اللَّهُمَّ ارْزُقْنِي حُبَّكَ وَحُبَّ مَنْ يَنْفَعُنِي حُبُّهُ عِنْدَكَ اللَّهُمَّ مَا رَزَقْتَنِي مِمَّا أُحِبُّ فَاجْعَلْهُ قُوَّةً لِي فِيمَا تُحِبُّ اللَّهُمَّ وَمَا زَوَيْتَ عَنِّي مِمَّا أُحِبُّ فَاجْعَلْهُ فَرَاغًا لِي فِيمَا تُحِبُّ",
              latinDoa: " ALLAAHUMMARZUQNII HUBBAKA",
              bacaDoa:
                  " WA HUBBA MAN YANFA'UNII HUBBUHU 'INDAKA. ALLAAHUMMA MAA RAZAQTANII MIMMAA UHIBBU FAJ'ALHU QUWWATAN LII FIIMAA TUHIBBU. ALLAAHUMMA WA MAA ZAWAITA 'ANNII MIMMAA UHIBBU FAJ'ALHU FARAAGHAN LII FIIMAA TUHIBBU"));
      boxDoa.put(
          82,
          Doa(
              id: 82,
              namaDoa: " Mohon Rumah dan Rezekinya Barokah 2",
              arabDoa:
                  " اللَّهُمَّ اغْفِرْ لِي ذَنْبِي وَوَسِّعْ لِي فِي دَارِي وَبَارِكْ لِي فِيمَا رَزَقْتَنِي",
              latinDoa: " ALLAAHUMMAGHFIRLII DZANBII WA WASSI' LII FII DAARII",
              bacaDoa: " WA BAARIK LII FIIMAA RAZAQTANII"));
      boxDoa.put(
          83,
          Doa(
              id: 83,
              namaDoa: " Mohon Ilmu yang Manfaat",
              arabDoa:
                  " اللَّهُمَّ انْفَعْنِي بِمَا عَلَّمْتَنِي وَعَلِّمْنِي مَا يَنْفَعُنِي وَزِدْنِي عِلْمًا الْحَمْدُ لِلَّهِ عَلَى كُلِّ حَالٍ وَأَعُوذُ بِاللَّهِ مِنْ حَالِ أَهْلِ النَّارِ",
              latinDoa:
                  " ALLAHUMMAN FA'NII BIMAA 'ALLAMTANII WA 'ALLIMNII MAA YANFA'UNII WA ZIDNII 'ILMA",
              bacaDoa:
                  " ALHAMDULILLAHI 'ALAA KULLI HAALIN WA A'UUDZU BILLAHI MIN HAALI AHLIN NAAR"));
      boxDoa.put(
          84,
          Doa(
              id: 84,
              namaDoa: " Mohon Ilmu yang Manfaat 2",
              arabDoa:
                  " اللَّهُمَّ انْفَعْنِي بِمَا عَلَّمْتَنِي وَعَلِّمْنِي مَا يَنْفَعُنِي وَزِدْنِي عِلْمًا وَالْحَمْدُ لِلَّهِ عَلَى كُلِّ حَالٍ وَأَعُوذُ بِاللَّهِ مِنْ عَذَابِ النَّارِ",
              latinDoa:
                  " ALLOHUMMANFA'NII BIMAA 'ALLAMTANII WA 'ALLAMNII MAA YANFA'UNII WAZIDNII 'ILMAN WALHAMDULILLAAHI 'ALAA KULLI HAALIN WA A'UUDZUBILLAAHI MIN 'ADZAABINNAAR",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          85,
          Doa(
              id: 85,
              namaDoa: " Mohon Jadi Ahli Syukur",
              arabDoa: " Dzikir dan Thoat",
              latinDoa:
                  " رَبِّ أَعِنِّي وَلَا تُعِنْ عَلَيَّ وَانْصُرْنِي وَلَا تَنْصُرْ عَلَيَّ وَامْكُرْ لِي وَلَا تَمْكُرْ عَلَيَّ وَاهْدِنِي وَيَسِّرْ الْهُدَى لِي وَانْصُرْنِي عَلَى مَنْ بَغَى عَلَيَّ رَبِّ اجْعَلْنِي لَكَ شَكَّارًا لَكَ ذَكَّارًا لَكَ رَهَّابًا لَكَ مِطْوَاعًا لَكَ مُخْبِتًا إِلَيْكَ أَوَّاهًا مُنِيبًا رَبِّ تَقَبَّلْ تَوْبَتِي وَاغْسِلْ حَوْبَتِي وَأَجِبْ دَعْوَتِي وَثَبِّتْ حُجَّتِي وَسَدِّدْ لِسَانِي وَاهْدِ قَلْبِي وَاسْلُلْ سَخِيمَةَ صَدْرِي",
              bacaDoa:
                  " ROBBI A'INNII WA LAA TU'IN 'ALAYYA WANSHURNII WA LAA TANSHUR 'ALAYYA, wanṣurnī `alā man baghā `alayya. Rabbij`alnī laka shakkāran, laka dhakkāran, laka rahhāban, laka miṭwā`an, laka mukhbitan, ilaika awwāhan munība. Rabbi taqabbal tawbatī, waghsil ḥawbatī, wa ajib da`watī, wa thabbit ḥujjatī, wa saddid lisānī, wahdi qalbī, waslul sakhīmata ṣadrī, My Lord, aid me and do not aid against me, and grant me victory and do not grant victory over me, plot for me and do not plot against me, guide me and facilitate guidance for me, grant me victory over those who transgress against me. My Lord, make me ever-grateful to You, ever-remembering of You, ever-fearful of You, ever-obedient to You, ever-humble to You, oft-turning and returning to You. My Lord, accept my repentance, wash my sin, answer my call, make firm my proof, make firm my tongue, guide my heart, and remove the treachery of my chest, , , H.R. Tirmidzi,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"));
      boxDoa.put(
          86,
          Doa(
              id: 86,
              namaDoa: " Mohon Dipilihkan Perkara yang Baik",
              arabDoa: " اللَّهُمَّ خِرْ لِي وَاخْتَرْ لِي",
              latinDoa: " ALLOHUMMA KHIRLII WAKHTARLII",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          87,
          Doa(
              id: 87,
              namaDoa: " Mohon Hidup/Mati yang Baik",
              arabDoa:
                  " اللَّهُمَّ أَحْيِنِي مَا كَانَتِ الْحَيَاةُ خَيْرًا لِي وَتَوَفَّنِي إِذَا كَانَتْ الْوَفَاةُ خَيْرًا لِي",
              latinDoa:
                  " ALLAHUMMA AHYINI MA KAANATIL HAYATU KHAIRAN LI WA TAWAFFANI IDZA KANATIL WAFATU KHAIRAN LI",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          88,
          Doa(
              id: 88,
              namaDoa: " Mohon Dihilangkan Rasa Was-was",
              arabDoa:
                  " هُوَ الْأَوَّلُ وَالْآخِرُ وَالظَّاهِرُ وَالْبَاطِنُ وَهُوَ بِكُلِّ شَيْءٍ عَلِيمٌ",
              latinDoa:
                  " HUWALAWWALU WAL AAKHIRU WADHDHOOHIRU WAL BAATHINU WA HUWA BIKULLI SYAI IN 'ALIIM",
              bacaDoa:
                  " Dialah Yang Awal dan Yang Akhir Yang Zhahir dan Yang Bathin; dan Dia Maha Mengetahui segala sesuatu"));
      boxDoa.put(
          89,
          Doa(
              id: 89,
              namaDoa:
                  " Mohon Harta dan Anak yang Banyak dan Barokah (untuk diri sendiri)",
              arabDoa:
                  " اللَّهُمَّ أَكْثِرْ مَالِى وَوَلَدِىْ وَبَارِكْ لِىْ فِيمَا أَعْطَيْتَنِى",
              latinDoa:
                  " ALLOHUMMAKTSIR MAALII WA WALADII WABAARIKLII FIIMAA A' THOITANII",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          90,
          Doa(
              id: 90,
              namaDoa:
                  " Mohon Harta dan Anak yang Banyak dan Barokah (untuk orang lain)",
              arabDoa:
                  " اللَّهُمَّ أَكْثِرْ مَالَهُ وَوَلَدَهُ وَبَارِكْ لَهُ فِيمَا أَعْطَيْتَهُ",
              latinDoa:
                  " ALLOHUMMAKTSIR MAALAHU WA WALADAHU WABAARIKLAHU FIIMAA A' THOITAHU",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          91,
          Doa(
              id: 91,
              namaDoa: " Doa Baik untuk Sesama Muslim",
              arabDoa:
                  " اللَّهُمَّ فَأَيُّمَا مُؤْمِنٍ سَبَبْتُهُ فَاجْعَلْ ذَلِكَ لَهُ قُرْبَةً إِلَيْكَ يَوْمَ الْقِيَامَةِ",
              latinDoa:
                  " ALLOHUMMA FA AYYUMAA MU'MININ SABABTUHU FAJ'AL DZAALIKA LAHU QURBATAN ILAIKA YAUMAL QIYAAMAH",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          92,
          Doa(
              id: 92,
              namaDoa: " Berlindung dari fitnah",
              arabDoa:
                  " رَضِينَا بِاللَّهِ رَبًّا وَبِالْإِسْلَامِ دِينًا وَبِمُحَمَّدٍ رَسُولًا نَعُوذُ بِاللَّهِ مِنْ سُوءِ الْفِتَنِ",
              latinDoa:
                  " RADHIINA BILLAHI RABBAN WABIL ISLAAMI DIINAN WABI MUHAMMADIN RASUULAN NA'UUDZU BILLAH MIN SUUIL FITANI",
              bacaDoa: " Kami ridha Allah sebagai rabb"));
      boxDoa.put(
          93,
          Doa(
              id: 93,
              namaDoa: " Berlindung dari sifat penakut",
              arabDoa: " pelit",
              latinDoa: " malas dan hina",
              bacaDoa:
                  " اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الهَمِّ وَالحَزَنِ، وَالعَجْزِ وَالكَسَلِ، وَالبُخْلِ وَالجُبْنِ، وَضَلَعِ الدَّيْنِ، وَغَلَبَةِ الرِّجَالِ"));
      boxDoa.put(
          94,
          Doa(
              id: 94,
              namaDoa: " Berlindung dari fitnah kehidupan dan kematian",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ العَجْزِ وَالكَسَلِ، وَالجُبْنِ وَالبُخْلِ وَالهَرَمِ، وَأَعُوذُ بِكَ مِنْ عَذَابِ القَبْرِ، وَأَعُوذُ بِكَ مِنْ فِتْنَةِ المَحْيَا وَالمَمَاتِ",
              latinDoa:
                  " ALLAHUMMA INNI A'UUDZUBIKA MINAL 'AJZI WAL KASALI WAL JUBNI WAL BUKHLI WAL HARAMI WA A'UUDZUBILKA MIN 'ADZAABIL QABRI WA A'UUDZUBIKA MIN FITNATIL MAHYAA WAL MAMAAT",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          95,
          Doa(
              id: 95,
              namaDoa: " Berlindung dari dosa-dosa",
              arabDoa: " keberatan hutang dan pikun",
              latinDoa:
                  " اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الكَسَلِ وَالهَرَمِ، وَالمَأْثَمِ وَالمَغْرَمِ، وَمِنْ فِتْنَةِ القَبْرِ، وَعَذَابِ القَبْرِ، وَمِنْ فِتْنَةِ النَّارِ وَعَذَابِ النَّارِ، وَمِنْ شَرِّ فِتْنَةِ الغِنَى، وَأَعُوذُ بِكَ مِنْ فِتْنَةِ الفَقْرِ، وَأَعُوذُ بِكَ مِنْ فِتْنَةِ المَسِيحِ الدَّجَّالِ، اللَّهُمَّ اغْسِلْ عَنِّي خَطَايَايَ بِمَاءِ الثَّلْجِ وَالبَرَدِ، وَنَقِّ قَلْبِي مِنَ الخَطَايَا كَمَا نَقَّيْتَ الثَّوْبَ الأَبْيَضَ مِنَ الدَّنَسِ، وَبَاعِدْ بَيْنِي وَبَيْنَ خَطَايَايَ كَمَا بَاعَدْتَ بَيْنَ المَشْرِقِ وَالمَغْرِبِ",
              bacaDoa:
                  " ALLAHUMMA INNI A'UUDZUBIKA MINAL KASALI WAL HARAMI WAL MA`TSAMI WAL MAGHRAMI WAMIN FITNATIL QABRI WA 'ADZAABIL QABRI WAMIN FITNATIN NAARI WA 'AZAABIN NAARI WAMIN SYARRI FITNATIL GHANIY WA 'A'UUDZUBIKA MIN FITNATIL FAQRI WA A'UUDZUBIKA MIN FITNATIL MASIIHID DAJJAL"));
      boxDoa.put(
          96,
          Doa(
              id: 96,
              namaDoa: " Berlindung dari dosa-dosa",
              arabDoa: " keberatan hutang dan pikun 2",
              latinDoa:
                  " اللَّهُمَّ اكْفِنِي بِحَلَالِكَ عَنْ حَرَامِكَ وَأَغْنِنِي بِفَضْلِكَ عَمَّنْ سِوَاكَ",
              bacaDoa: " ALLAAHUMMAKFINII BIHALAALIKA 'AN HARAAMIK"));
      boxDoa.put(
          97,
          Doa(
              id: 97,
              namaDoa: " Berlindung dari musibah / celaka",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَعُوذُ بِكَ  مِنْ جَهْدِ الْبَلَاءِ وَدَرَكِ الشَّقَاءِ وَسُوءِ الْقَضَاءِ وَشَمَاتَةِ الْأَعْدَاءِ",
              latinDoa:
                  " ALLOHUMMA INNII A'UUDZUBIKA MIN JAHDILBALAA I WADAROKISYSYAQOO I WASUU ILQODLOO I WASYAMAATATIL A'DAA I",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          98,
          Doa(
              id: 98,
              namaDoa: " Berlindung dari amal jelek",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ مَا عَمِلْتُ وَمِنْ شَرِّ مَا لَمْ أَعْمَلْ",
              latinDoa:
                  " ALLAHUMMA INNI A'UUDZU BIKA MIN SYARRI MAA 'AMILTU WA MIN SYARRI MAA LAM A'MAL",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          99,
          Doa(
              id: 99,
              namaDoa: " Berlindung dari kesesatan",
              arabDoa:
                  " اللَّهُمَّ لَكَ أَسْلَمْتُ وَبِكَ آمَنْتُ وَعَلَيْكَ تَوَكَّلْتُ وَإِلَيْكَ أَنَبْتُ وَبِكَ خَاصَمْتُ اللَّهُمَّ إِنِّي أَعُوذُ بِعِزَّتِكَ لَا إِلَهَ إِلَّا أَنْتَ أَنْ تُضِلَّنِي أَنْتَ الْحَيُّ الَّذِي لَا يَمُوتُ وَالْجِنُّ وَالْإِنْسُ يَمُوتُونَ",
              latinDoa: " ALLAHUMMA LAKA ASLAMTU WABIKA AAMANTU",
              bacaDoa:
                  " WA'ALAIKA TAWAKKALTU WAILAIKA ANABTU WABIKA KHASHAMTU"));
      boxDoa.put(
          100,
          Doa(
              id: 100,
              namaDoa: " Berlindung dari jeleknya perbuatan anggota badan",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ سَمْعِي وَمِنْ شَرِّ بَصَرِي وَمِنْ شَرِّ لِسَانِي وَمِنْ شَرِّ قَلْبِي وَمِنْ شَرِّ مَنِيِّي",
              latinDoa: " ALLAAHUMMA INNII A'UUDZU BIKA MIN SYARRI SAM'II",
              bacaDoa: " WA MIN SYARRI BASHARII"));
      boxDoa.put(
          101,
          Doa(
              id: 101,
              namaDoa: " Berlindung dari penganiayaan",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنَ الْفَقْرِ وَالْقِلَّةِ وَالذِّلَّةِ، وَأَنْ تَظْلِمَ أَوْ تُظْلَمَ",
              latinDoa:
                  " ALLOHUMMA INNII A'UUDZUBIKA MINAL FAQRI WALQILLATI WADZDZILAATI WA AN TADZLIMA AU TUDZLUM",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          102,
          Doa(
              id: 102,
              namaDoa: " Doa Ketika Terbangun Malam",
              arabDoa:
                  " لاَ إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لاَ شَرِيكَ لَهُ، لَهُ المُلْكُ وَلَهُ الحَمْدُ، وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، الحَمْدُ لِلَّهِ، وَسُبْحَانَ اللَّهِ، وَلاَ إِلَهَ إِلَّا اللَّهُ، وَاللَّهُ أَكْبَرُ، وَلاَ حَوْلَ وَلاَ قُوَّةَ إِلَّا بِاللَّهِ",
              latinDoa: " laa ilaaha illallah wahdahu laa syariika lahu",
              bacaDoa:
                  " lahul mulku wa lahul hamdu wa huwa 'alaa kulli syai-in qadiir. Alhamdulillahi wa subhaanallah wa laa ilaaha illallah wallahu akbar wa laa haula wa laa quwwata illa billah"));
      boxDoa.put(
          103,
          Doa(
              id: 103,
              namaDoa: " istighfar",
              arabDoa: " اللَّهُمَّ اغْفِرْ لِي / اَسْتَغْفِرُ اللَّه",
              latinDoa: " Allahummaghfirlii / ASTAGHFIRULLAAH",
              bacaDoa: " Ya Allah ampunilah aku"));
      boxDoa.put(
          104,
          Doa(
              id: 104,
              namaDoa: " Ali Imron 147",
              arabDoa:
                  " ۔... رَبَّنَا ٱغۡفِرۡ لَنَا ذُنُوبَنَا وَإِسۡرَافَنَا فِىٓ أَمۡرِنَا وَثَبِّتۡ أَقۡدَامَنَا وَٱنصُرۡنَا عَلَى ٱلۡقَوۡمِ ٱلۡڪَـٰفِرِينَ",
              latinDoa: " ",
              bacaDoa: " Ya Tuhan kami"));
      boxDoa.put(
          105,
          Doa(
              id: 105,
              namaDoa: " Al A'rof 23 (Doa Nabi Adam AS)",
              arabDoa:
                  " رَبَّنَا ظَلَمْنَا أَنْفُسَنَا وَإِنْ لَمْ تَغْفِرْ لَنَا وَتَرْحَمْنَا لَنَكُونَنَّ مِنَ الْخَاسِرِينَ",
              latinDoa:
                  " ROBBANAA DZOLAMNAA ANFUSANAA WA ILLAM TAGHFIRLANAA WATARHAMNAA LANAKUUNANNA MINAL KHOOSIRIIN",
              bacaDoa: " Ya Tuhan kami"));
      boxDoa.put(
          106,
          Doa(
              id: 106,
              namaDoa: " Ibrahim 41 (Mendoakan kedua Orang Tua)",
              arabDoa:
                  " رَبَّنَا اغْفِرْ لِي وَلِوَالِدَيَّ وَلِلْمُؤْمِنِينَ يَوْمَ يَقُومُ الْحِسَابُ",
              latinDoa: " ",
              bacaDoa: " Ya Tuhan kami"));
      boxDoa.put(
          107,
          Doa(
              id: 107,
              namaDoa: " Al Hasr 10",
              arabDoa:
                  " ۔... رَبَّنَا اغْفِرْ لَنَا وَلِإِخْوَانِنَا الَّذِينَ سَبَقُونَا بِالْإِيمَانِ وَلَا تَجْعَلْ فِي قُلُوبِنَا غِلًّا لِلَّذِينَ آمَنُوا رَبَّنَا إِنَّكَ رَءُوفٌ رَحِيمٌ",
              latinDoa: " ",
              bacaDoa: " ... Ya Rabb kami"));
      boxDoa.put(
          108,
          Doa(
              id: 108,
              namaDoa: " Asmaul Husna",
              arabDoa:
                  " <style> .tablearab{ text-align:right; width:100%; direction:ltr;} .tablearab td{line-height:125%; font-family: arab; padding:6px 4px; direction:ltr;font-weight:bold;} .r {color:red} .b {color:blue} .g {color:green} .p {color:purple} .l {color:#8B4513} </style> <table class=tablearab><tr><td>يَااللَّهُ الَّذِي لَا إِلٰهَ إِلَّا اَنْتَ</td><td>1</td></tr><tr><td>يَارَحْمٰنُ</td><td>2</td></tr><tr><td>يَارَحِيمُ</td><td>3</td></tr><tr><td>يَامَلِكُ</td><td>4</td></tr><tr><td>يَاقُدُّوسُ</td><td>5</td></tr> <tr class=r><td>يَاسَلَامُ</td><td>6</td></tr><tr class=r><td>يَامُؤْمِنُ</td><td>7</td></tr><tr class=r><td>يَامُهَيْمِنُ</td><td>8</td></tr><tr class=r><td>يَاعَزِيزُ</td><td>9</td></tr><tr class=r><td>يَاجَبَّارُ</td><td>10</td></tr> <tr class=g><td>يَامُتَكَبِّرُ</td><td>11</td></tr><tr class=g><td>يَاخَالِقُ</td><td>12</td></tr><tr class=g><td>يَابَارِئُ</td><td>13</td></tr><tr class=g><td>يَامُصَوِّرُ</td><td>14</td></tr><tr class=g><td>يَاغَفَّارُ</td><td>15</td></tr> <tr class=b><td>يَاقَهَّارُ</td><td>16</td></tr><tr class=b><td>يَاوَهَّابُ</td><td>17</td></tr><tr class=b><td>يَارَزَّاقُ</td><td>18</td></tr><tr class=b><td>يَافَتَّاحُ</td><td>19</td></tr><tr class=b><td>يَاعَلِيمُ</td><td>20</td></tr> <tr class=l><td>يَاقَابِضُ</td><td>21</td></tr><tr class=l><td>يَابَاسِطُ</td><td>22</td></tr><tr class=l><td>يَاخَافِضُ</td><td>23</td></tr><tr class=l><td>يَارَافِعُ</td><td>24</td></tr><tr class=l><td>يَامُعِزُّ</td><td>25</td></tr> <tr class=p><td>يَامُذِلُّ</td><td>26</td></tr><tr class=p><td>يَاسَمِيعُ</td><td>27</td></tr><tr class=p><td>يَابَصِيرُ</td><td>28</td></tr><tr class=p><td>يَاحَكَمُ</td><td>29</td></tr><tr class=p><td>يَاعَدْلُ</td><td>30</td></tr> <tr><td>يَالَطِيفُ</td><td>31</td></tr><tr><td>يَاخَبِيرُ</td><td>32</td></tr><tr><td>يَاحَلِيمُ</td><td>33</td></tr><tr><td>يَاعَظِيمُ</td><td>34</td></tr><tr><td>يَاغَفُورُ</td><td>35</td></tr> <tr class=r><td>يَاشَكُورُ</td><td>36</td></tr><tr class=r><td>يَاعَلِيُّ</td><td>37</td></tr><tr class=r><td>يَاكَبِيرُ</td><td>38</td></tr><tr class=r><td>يَاحَفِيظُ</td><td>39</td></tr><tr class=r><td>يَامُقِيتُ</td><td>40</td></tr> <tr class=g><td>يَاحَسِيبُ</td><td>41</td></tr><tr class=g><td>يَاجَلِيلُ</td><td>42</td></tr><tr class=g><td>يَاكَرِيمُ</td><td>43</td></tr><tr class=g><td>يَارَقِيبُ</td><td>44</td></tr><tr class=g><td>يَامُجِيبُ</td><td>45</td></tr> <tr class=b><td>يَاوَاسِعُ</td><td>46</td></tr><tr class=b><td>يَاحَكِيمُ</td><td>47</td></tr><tr class=b><td>يَاوَدُودُ</td><td>48</td></tr><tr class=b><td>يَامَجِيدُ</td><td>49</td></tr><tr class=b><td>يَابَاعِثُ</td><td>50</td></tr> <tr class=l><td>يَاشَهِيدُ</td><td>51</td></tr><tr class=l><td>يَاحَقُّ</td><td>52</td></tr><tr class=l><td>يَاوَكِيلُ</td><td>53</td></tr><tr class=l><td>يَاقَوِيُّ</td><td>54</td></tr><tr class=l><td>يَامَتِينُ</td><td>55</td></tr> <tr class=p><td>يَاوَلِيُّ</td><td>56</td></tr><tr class=p><td>يَاحَمِيدُ</td><td>57</td></tr><tr class=p><td>يَامُحْصِي</td><td>58</td></tr><tr class=p><td>يَامُبْدِئُ</td><td>59</td></tr><tr class=p><td>يَامُعِيدُ</td><td>60</td></tr> <tr><td>يَامُحْيِي</td><td>61</td></tr><tr><td>يَامُمِيتُ</td><td>62</td></tr><tr><td>يَاحَيُّ</td><td>63</td></tr><tr><td>يَاقَيُّومُ</td><td>64</td></tr><tr><td>يَاوَاجِدُ</td><td>65</td></tr> <tr class=r><td>يَامَاجِدُ</td><td>66</td></tr><tr class=r><td>يَاوَاحِدُ</td><td>67</td></tr><tr class=r><td>يَاصَمَدُ</td><td>68</td></tr><tr class=r><td>يَاقَادِرُ</td><td>69</td></tr><tr class=r><td>يَامُقْتَدِرُ</td><td>70</td></tr> <tr class=g><td>يَامُقَدِّمُ</td><td>71</td></tr><tr class=g><td>يَامُؤَخِّرُ</td><td>72</td></tr><tr class=g><td>يَاأَوَّلُ</td><td>73</td></tr><tr class=g><td>يَاآخِرُ</td><td>74</td></tr><tr class=g><td>يَاظَاهِرُ</td><td>75</td></tr> <tr class=b><td>يَابَاطِنُ</td><td>76</td></tr><tr class=b><td>يَاوَالِيَ</td><td>77</td></tr><tr class=b><td>يَامُتَعَالِي</td><td>78</td></tr><tr class=b><td>يَابَرُّ</td><td>79</td></tr><tr class=b><td>يَاتَوَّابُ</td><td>80</td></tr> <tr class=l><td>يَامُنْتَقِمُ</td><td>81</td></tr><tr class=l><td>يَاعَفُوُّ</td><td>82</td></tr><tr class=l><td>يَارَءُوفُ</td><td>83</td></tr><tr class=l><td>يَامَالِكَ الْمُلْكِ</td><td>84</td></tr><tr class=l><td>يَاذَا الْجَلَالِ وَالْإِكْرَامِ</td><td>85</td></tr> <tr class=p><td>يَامُقْسِطُ</td><td>86</td></tr><tr class=p><td>يَاجَامِعُ</td><td>87</td></tr><tr class=p><td>يَاغَنِيُّ</td><td>88</td></tr><tr class=p><td>يَامُغْنِي</td><td>89</td></tr><tr class=p><td>يَامَانِعُ</td><td>90</td></tr> <tr><td>يَاضَارُّ</td><td>91</td></tr><tr><td>يَانَافِعُ</td><td>92</td></tr><tr><td>يَانُورُ</td><td>93</td></tr><tr><td>يَاهَادِي</td><td>94</td></tr><tr><td>يَابَدِيعُ</td><td>95</td></tr> <tr class=r><td>يَابَاقِي</td><td>96</td></tr><tr class=r><td>يَاوَارِثُ</td><td>97</td></tr><tr class=r><td>يَارَشِيدُ</td><td>98</td></tr><tr class=r><td>يَاصَبُورُ</td><td>99</td></tr></table>",
              latinDoa: " ",
              bacaDoa: " <table><tr ><td>1</td><td>Ya Allah"));
      boxDoa.put(
          109,
          Doa(
              id: 109,
              namaDoa: " Shalawat",
              arabDoa:
                  " اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا صَلَّيْتَ عَلَى آلِ إِبْرَاهِيمَ وَبَارِكْ عَلَى مُحَمَّدٍ وَعَلَى آلِ مُحَمَّدٍ كَمَا بَارَكْتَ عَلَى آلِ إِبْرَاهِيمَ فِي الْعَالَمِينَ إِنَّكَ حَمِيدٌ مَجِيدٌ",
              latinDoa:
                  " ALLOOHUMMA SHOLLI 'ALAA MUHAMMAD WA'ALAA AALI MUHAMMAD",
              bacaDoa:
                  " KAMAA SHOLLAITA 'ALAA AALI IBROOHIIMA WABAARIK 'ALAA MUHAMMAD WA'ALAA AALI MUHAMMAD KAMAA BAAROKTA 'ALAA AALI IBROOHIIMA FIL'AALAMIINA INNAKA HAMIIDUN MAJIID"));
      boxDoa.put(
          110,
          Doa(
              id: 110,
              namaDoa: " Doa bangun malam",
              arabDoa:
                  " اللَّهُمَّ لَكَ الحَمْدُ، أَنْتَ نُورُ السَّمَوَاتِ وَالأَرْضِ وَمَنْ فِيهِنَّ، وَلَكَ الحَمْدُ، أَنْتَ قَيِّمُ السَّمَوَاتِ وَالأَرْضِ وَمَنْ فِيهِنَّ، وَلَكَ الحَمْدُ، أَنْتَ الحَقُّ، وَوَعْدُكَ حَقٌّ، وَقَوْلُكَ حَقٌّ، وَلِقَاؤُكَ حَقٌّ، وَالجَنَّةُ حَقٌّ، وَالنَّارُ حَقٌّ، وَالسَّاعَةُ حَقٌّ، وَالنَّبِيُّونَ حَقٌّ، وَمُحَمَّدٌ حَقٌّ، اللَّهُمَّ لَكَ أَسْلَمْتُ، وَعَلَيْكَ تَوَكَّلْتُ، وَبِكَ آمَنْتُ، وَإِلَيْكَ أَنَبْتُ، وَبِكَ خَاصَمْتُ، وَإِلَيْكَ حَاكَمْتُ، فَاغْفِرْ لِي مَا قَدَّمْتُ وَمَا أَخَّرْتُ، وَمَا أَسْرَرْتُ وَمَا أَعْلَنْتُ، أَنْتَ المُقَدِّمُ وَأَنْتَ المُؤَخِّرُ، لاَ إِلَهَ إِلَّا أَنْتَ(لاَ إِلَهَ غَيْرُكَ)",
              latinDoa: " ALLAHUMA LAKAL HAMDU",
              bacaDoa:
                  " ANTA NUURUSSAMAWAATI WAL ARDH WAMAN FIIHINNA, karena-Mu aku memusuhi, dan kepada-Mu aku meminta penghakiman, maka ampunilah bagiku apa yang telah aku perbuat dan apa yang belum aku lakukan, apa yang aku lakukan secara sembunyi-sembunyi dan apa yang aku lakukan secara terang-terangan, Engkaulah Dzat Yang Maha terdahulu dan Engkaulah Dzat Yang Maha terakhir, tiada sesembahan yang hak selain Engkau atau tiada sesembahan selain Engkau, , , H.R. Bukhori, 6317<br>, prayer when awakened at night 2, Allahumma laka l-hamdu; Anta nuras-samawati wal ardi wa man fihinna. wa laka l-hamdu; Anta qaiyim as-samawati wal ardi wa man flhinna. Wa lakaI-hamdu; Anta-l-,haqqun, wa wa'daka haqqun, wa qauluka haqqun, wa liqauka haqqun, wal-jannatu haqqun, wannaru haqqun, was-sa atu haqqun, wan-nabiyyuna huqqun, Mahammadun haqqun, Allahumma laka aslamtu, wa Alaika tawakkaltu, wa bika amantu, wa ilaika anabtu, wa bika Khasamtu, wa ilaika hakamtu, faghfirli ma qaddamtu wa ma akh-khartu, wa ma asrartu, wa ma a'lantu. Anta al-muqaddimu, wa anta al-mu-'akhkhiru. La ilaha il-la anta (or La ilaha ghairuka), , , , H.R. Bukhori,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"));
      boxDoa.put(
          111,
          Doa(
              id: 111,
              namaDoa: " Bangun tidur untuk sholat malam",
              arabDoa:
                  " اللَّهُمَّ لَكَ الْحَمْدُ أَنْتَ نُورُ السَّمَوَاتِ وَالْأَرْضِ وَلَكَ الْحَمْدُ أَنْتَ قَيَّامُ السَّمَوَاتِ وَالْأَرْضِ وَلَكَ الْحَمْدُ أَنْتَ رَبُّ السَّمَوَاتِ وَالْأَرْضِ وَمَنْ فِيهِنَّ أَنْتَ الْحَقُّ وَوَعْدُكَ الْحَقُّ وَلِقَاؤُكَ حَقٌّ وَالْجَنَّةُ حَقٌّ وَالنَّارُ حَقٌّ وَالسَّاعَةُ حَقٌّ اللَّهُمَّ لَكَ أَسْلَمْتُ وَبِكَ آمَنْتُ وَعَلَيْكَ تَوَكَّلْتُ وَإِلَيْكَ أَنَبْتُ وَبِكَ خَاصَمْتُ وَإِلَيْكَ حَاكَمْتُ فَاغْفِرْ لِي مَا قَدَّمْتُ وَمَا أَخَّرْتُ وَمَا أَسْرَرْتُ وَمَا أَعْلَنْتُ أَنْتَ إِلَهِي لَا إِلَهَ إِلَّا أَنْتَ",
              latinDoa:
                  " ALLAAHUMMA LAKAL HAMDU ANTA NUURUS SAMAAWAATI WAL ARDHI WA LAKAL HAMDU ANTA QAYYUUMUS SAMAAWAATI WAL ARDHI",
              bacaDoa:
                  " WA LAKAL HAMDU ANTA RABBUS SAMAAWAATI WAL ARDHI WA MAN FIIHINNA, wa man fīhinn, antal-ḥaqq, wa wa`dukal-ḥaqq, wa liqā'uka ḥaqq, wal-jannatu ḥaqq, wan-nāru ḥaqq, was-sā`atu ḥaqq. Allāhumma laka aslamtu, wa bika āmantu, wa `alaika tawakkaltu, wa ilaika anabtu, wa bika khāṣamtu, wa ilaika ḥākamtu, faghfirlī mā qaddamtu wa mā akhartu, wa mā asrartu wa mā a`lant. Anta ilāhī lā ilāha illā ant, O Allah, to You is the Praise, You are the Light of the heavens and the earth, and to You is the Praise, You are the Sustainer of the heavens and the earth, and to You is the praise, You are the Lord of the heavens and the earth, and those in them, You are the truth, and Your Promise is the truth, and Your meeting is true, and Paradise is true, and the Fire is true, and the Hour is true, O Allah, to You have I submitted, and in You have I believed , and in You have I relied, and to You have I turned, and by You have I argued, and to You have I referred for judgment. So forgive me what I have done before and after, and that which I have hidden and that which I have done openly. You are my Deity, no has the right to be worshiped but You, , , H.R. Tirmidzi,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"));
      boxDoa.put(
          112,
          Doa(
              id: 112,
              namaDoa: " Iftitaf Sholat Malam",
              arabDoa:
                  " اللَّهُمَّ رَبَّ جِبْرِيلَ وَمِيكَائِيلَ وَإِسْرَافِيلَ فَاطِرَ السَّمَوَاتِ وَالْأَرْضِ عَالِمَ الْغَيْبِ وَالشَّهَادَةِ أَنْتَ تَحْكُمُ بَيْنَ عِبَادِكَ فِيمَا كَانُوا فِيهِ يَخْتَلِفُونَ اهْدِنِي لِمَا اخْتُلِفَ فِيهِ مِنْ الْحَقِّ بِإِذْنِكَ إِنَّكَ تَهْدِي مَنْ تَشَاءُ إِلَى صِرَاطٍ مُسْتَقِيمٍ",
              latinDoa: " ALLAAHUMMA RABBA JIBRIIL WA MIIKAAIIL WA ISRAAFIIL",
              bacaDoa:
                  " FAATHIRAS SAMAAWAATI WAL ARDHI 'AALIMAL GHAIBI WASY SYAHAADAH ANTA TAHKUMU BAINA 'IBAADIKA FIIMAA KAANUU FIIHI YAKHTALIFUUN. IHDINII LIMAAKH TULIFA FIIHI MINAL HAQQI BIIDZNIKA INNAKA TAHDII MAN TASYAA-U ILAA SHIRAATHIN MUSTAQIIM"));
      boxDoa.put(
          113,
          Doa(
              id: 113,
              namaDoa: " Iftitaf Sholat Malam 2",
              arabDoa:
                  " وَجَّهْتُ وَجْهِيَ لِلَّذِي فَطَرَ السَّمَوَاتِ وَالأَرْضَ حَنِيفًا وَمَا أَنَا مِنَ المُشْرِكِينَ، إِنَّ صَلَاتِي وَنُسُكِي وَمَحْيَايَ وَمَمَاتِي لِلَّهِ رَبِّ العَالَمِينَ، لَا شَرِيكَ لَهُ، وَبِذَلِكَ أُمِرْتُ وَأَنَا مِنَ المُسْلِمِينَ، اللَّهُمَّ أَنْتَ المَلِكُ لَا إِلَهَ إِلَّا أَنْتَ، أَنْتَ رَبِّي وَأَنَا عَبْدُكَ، ظَلَمْتُ نَفْسِي وَاعْتَرَفْتُ بِذَنْبِي، فَاغْفِرْ لِي ذُنُوبِي جَمِيعًا، إِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ، وَاهْدِنِي لِأَحْسَنِ الأَخْلَاقِ، لَا يَهْدِي لِأَحْسَنِهَا إِلَّا أَنْتَ، وَاصْرِفْ عَنِّي سَيِّئَهَا، لَا يَصْرِفُ عَنِّي سَيِّئَهَا إِلَّا أَنْتَ، آمَنْتُ بِكَ، تَبَارَكْتَ وَتَعَالَيْتَ، أَسْتَغْفِرُكَ وَأَتُوبُ إِلَيْكَ",
              latinDoa:
                  " WAJJAHTU WAJHIYA LILLADZII FATHARAS SAMAAWAATI WAL ARDHA HANIIFAN WA MAA ANA MINAL MUSYRIKIIN",
              bacaDoa:
                  " INNA SHALAATII WA NUSUKII WA MAHYAAYA WA MAMAATII LILLAAHI RABBIL 'AALAMIIN, as a Hanif, and I am not of the idolaters. Indeed, my Salat, my sacrifice, my living, and my dying is for Allah, the Lord of all that exists, there is no partner for Him, and with this have I been ordered, and I am among the Muslims. O Allah, You are the King, there is none worthy of worship except You. You are My Lord, and I am Your slave, I have wronged myself, and I admit to my sin, so forgive me all my sins, verily, there is none who forgives sins but You. And guide me to the best of the manners, none guides to the best of them except You, and turn the evil of them away from me, [verily,] none can turn the evil of them away from me except You. I have believed in You. Blessed are You and Exalted are You, I seek Your forgiveness and I repent to you, , , H.R. Tirmidzi,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"));
      boxDoa.put(
          114,
          Doa(
              id: 114,
              namaDoa: " Rukuk Sholat Malam",
              arabDoa:
                  " اللَّهُمَّ لَكَ رَكَعْتُ وَبِكَ آمَنْتُ وَلَكَ أَسْلَمْتُ خَشَعَ لَكَ سَمْعِي وَبَصَرِي وَمُخِّي وَعِظَامِي وَعَصَبِي",
              latinDoa:
                  " ALLAAHUMMA LAKA RAKA'TU WA BIKA AAMANTU WA LAKA ASLAMTU KHASYA'A LAKA SAM'II WA BASHARII",
              bacaDoa: " WA MUKHKHII WA 'IZHAAMII WA 'ASHABII"));
      boxDoa.put(
          115,
          Doa(
              id: 115,
              namaDoa: " I'tidal Sholat Malam",
              arabDoa:
                  " اللَّهُمَّ رَبَّنَا لَكَ الْحَمْدُ مِلْءَ السَّمَوَاتِ وَالْأَرَضِينَ وَمِلْءَ مَا بَيْنَهُمَا وَمِلْءَ مَا شِئْتَ مِنْ شَيْءٍ بَعْدُ",
              latinDoa:
                  " ALLAAHUMMA RABBANAA LAKAL HAMDU MIL-AS SAMAAWAATI WAL ARDHIINA WA MIL-A MAA BAINAHUMAA",
              bacaDoa: " WA MIL-A MAA SYI`TA MIN SYAI-IN BA'DU"));
      boxDoa.put(
          116,
          Doa(
              id: 116,
              namaDoa: " Sujud Sholat Malam",
              arabDoa:
                  " اللَّهُمَّ لَكَ سَجَدْتُ وَبِكَ آمَنْتُ وَلَكَ أَسْلَمْتُ سَجَدَ وَجْهِيَ لِلَّذِي خَلَقَهُ فَصَوَّرَهُ وَشَقَّ سَمْعَهُ وَبَصَرَهُ فَتَبَارَكَ اللَّهُ أَحْسَنُ الْخَالِقِينَ",
              latinDoa:
                  " ALLAAHUMMA LAKA SAJADTU WA BIKA AAMANTU WA LAKA ASLAMTU",
              bacaDoa:
                  " SAJADA WAJHIYA LILLADZII KHALAQAHU FASHAWWARAHU WA SYAQQA SAM'AHU WA BASHARAHU"));
      boxDoa.put(
          117,
          Doa(
              id: 117,
              namaDoa: " Doa setelah tasyahud sebelum salam Sholat Malam",
              arabDoa:
                  " اللَّهُمَّ اغْفِرْ لِي مَا قَدَّمْتُ وَمَا أَخَّرْتُ وَمَا أَسْرَرْتُ وَمَا أَعْلَنْتُ وَمَا أَنْتَ أَعْلَمُ بِهِ مِنِّي أَنْتَ الْمُقَدِّمُ وَأَنْتَ الْمُؤَخِّرُ لَا إِلَهَ إِلَّا أَنْتَ",
              latinDoa:
                  " ALLAAHUMMAGHFIRLII MAA QADDAMTU WA MAA AKHKHARTU WA MAA ASRARTU WA MAA A'LANTU WA MAA ANTA A'LAMU BIHII MINNII",
              bacaDoa:
                  " ANTAL MUQADDIMU WA ANTAL MUAKHKHIRU LAA ILAAHA ILLAA ANTA"));
      boxDoa.put(
          118,
          Doa(
              id: 118,
              namaDoa: " Doa setelah tasyahud sebelum salam Witir",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَعُوذُ بِرِضَاكَ مِنْ سَخَطِكَ وَأَعُوذُ بِمُعَافَاتِكَ مِنْ عُقُوبَتِكَ وَأَعُوذُ بِكَ مِنْكَ لَا أُحْصِي ثَنَاءً عَلَيْكَ أَنْتَ كَمَا أَثْنَيْتَ عَلَى نَفْسِكَ",
              latinDoa: " ALLAAHUMMA INNII A'UUDZU BIRIDHAAKA MIN SAKHATHIK",
              bacaDoa: " WA A'UUDZU BIMU'AAFAATIKA MIN 'UQUUBATIK"));
      boxDoa.put(
          119,
          Doa(
              id: 119,
              namaDoa: " Doa setelah witir",
              arabDoa: " سُبْحَانَ الْمَلِكِ الْقُدُّوسِ",
              latinDoa: " Subbhanal Malikil Quddus",
              bacaDoa: " "));
      boxDoa.put(
          120,
          Doa(
              id: 120,
              namaDoa: " Setelah Selesai sholat Malam",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَسْأَلُكَ رَحْمَةً مِنْ عِنْدِكَ تَهْدِي بِهَا قَلْبِي وَتَجْمَعُ بِهَا أَمْرِي وَتَلُمُّ بِهَا شَعَثِي وَتُصْلِحُ بِهَا غَائِبِي وَتَرْفَعُ بِهَا شَاهِدِي وَتُزَكِّي بِهَا عَمَلِي وَتُلْهِمُنِي بِهَا رُشْدِي وَتَرُدُّ بِهَا أُلْفَتِي وَتَعْصِمُنِي بِهَا مِنْ كُلِّ سُوءٍ اللَّهُمَّ أَعْطِنِي إِيمَانًا وَيَقِينًا لَيْسَ بَعْدَهُ كُفْرٌ وَرَحْمَةً أَنَالُ بِهَا شَرَفَ كَرَامَتِكَ فِي الدُّنْيَا وَالْآخِرَةِ اللَّهُمَّ إِنِّي أَسْأَلُكَ الْفَوْزَ فِي الْعَطَاءِ وَنُزُلَ الشُّهَدَاءِ وَعَيْشَ السُّعَدَاءِ وَالنَّصْرَ عَلَى الْأَعْدَاءِ اللَّهُمَّ إِنِّي أُنْزِلُ بِكَ حَاجَتِي وَإِنْ قَصُرَ رَأْيِي وَضَعُفَ عَمَلِي افْتَقَرْتُ إِلَى رَحْمَتِكَ فَأَسْأَلُكَ يَا قَاضِيَ الْأُمُورِ وَيَا شَافِيَ الصُّدُورِ كَمَا تُجِيرُ بَيْنَ الْبُحُورِ أَنْ تُجِيرَنِي مِنْ عَذَابِ السَّعِيرِ وَمِنْ دَعْوَةِ الثُّبُورِ وَمِنْ فِتْنَةِ الْقُبُورِ اللَّهُمَّ مَا قَصُرَ عَنْهُ رَأْيِي وَلَمْ تَبْلُغْهُ نِيَّتِي وَلَمْ تَبْلُغْهُ مَسْأَلَتِي مِنْ خَيْرٍ وَعَدْتَهُ أَحَدًا مِنْ خَلْقِكَ أَوْ خَيْرٍ أَنْتَ مُعْطِيهِ أَحَدًا مِنْ عِبَادِكَ فَإِنِّي أَرْغَبُ إِلَيْكَ فِيهِ وَأَسْأَلُكَهُ بِرَحْمَتِكَ رَبَّ الْعَالَمِينَ اللَّهُمَّ ذَا الْحَبْلِ الشَّدِيدِ وَالْأَمْرِ الرَّشِيدِ أَسْأَلُكَ الْأَمْنَ يَوْمَ الْوَعِيدِ وَالْجَنَّةَ يَوْمَ الْخُلُودِ مَعَ الْمُقَرَّبِينَ الشُّهُودِ الرُّكَّعِ السُّجُودِ الْمُوفِينَ بِالْعُهُودِ إِنَّكَ رَحِيمٌ وَدُودٌ وَأَنْتَ تَفْعَلُ مَا تُرِيدُ اللَّهُمَّ اجْعَلْنَا هَادِينَ مُهْتَدِينَ غَيْرَ ضَالِّينَ وَلَا مُضِلِّينَ سِلْمًا لِأَوْلِيَائِكَ وَعَدُوًّا لِأَعْدَائِكَ نُحِبُّ بِحُبِّكَ مَنْ أَحَبَّكَ وَنُعَادِي بِعَدَاوَتِكَ مَنْ خَالَفَكَ اللَّهُمَّ هَذَا الدُّعَاءُ وَعَلَيْكَ الْإِجَابَةُ وَهَذَا الْجُهْدُ وَعَلَيْكَ التُّكْلَانُ اللَّهُمَّ اجْعَلْ لِي نُورًا فِي قَلْبِي وَنُورًا فِي قَبْرِي وَنُورًا مِنْ بَيْنِ يَدَيَّ وَنُورًا مِنْ خَلْفِي وَنُورًا عَنْ يَمِينِي وَنُورًا عَنْ شِمَالِي وَنُورًا مِنْ فَوْقِي وَنُورًا مِنْ تَحْتِي وَنُورًا فِي سَمْعِي وَنُورًا فِي بَصَرِي وَنُورًا فِي شَعْرِي وَنُورًا فِي بَشَرِي وَنُورًا فِي لَحْمِي وَنُورًا فِي دَمِي وَنُورًا فِي عِظَامِي اللَّهُمَّ أَعْظِمْ لِي نُورًا وَأَعْطِنِي نُورًا وَاجْعَلْ لِي نُورًا سُبْحَانَ الَّذِي تَعَطَّفَ الْعِزَّ وَقَالَ بِهِ سُبْحَانَ الَّذِي لَبِسَ الْمَجْدَ وَتَكَرَّمَ بِهِ سُبْحَانَ الَّذِي لَا يَنْبَغِي التَّسْبِيحُ إِلَّا لَهُ سُبْحَانَ ذِي الْفَضْلِ وَالنِّعَمِ سُبْحَانَ ذِي الْمَجْدِ وَالْكَرَمِ سُبْحَانَ ذِي الْجَلَالِ وَالْإِكْرَامِ",
              latinDoa:
                  " ALLAAHUMMA INNII AS-ALUKA RAHMATAN MIN 'INDIKA TAHDII BIHAA QALBII WA TAJMA'U BIHAA AMRII",
              bacaDoa:
                  " WA TALUMMU BIHAA SYA'ATSII, Ya Allah, aku memohon rahmat dari sisiMu, dengannya Engkau memberikan petunjuk kepada hatiku, dan dengannya Engkau kumpulkan urusanku, dengannya Engkau cela kekacauanku, dan dengannya Engkau perbaiki apa yang tidak nampak dariku, dan dengannya Engkau angkat apa yang nampak padaku, dengannya Engkau mensucikan amalanku, dengannya Engkau mengilhami pikiranku, dan dengannya Engkau kembali kelembutanku, dengannya Engkau melindungiku dari segala keburukan. Ya Allah, berikan kepadaku keimanan dan keyakinan yang tidak ada kekafiran setelahnya, serta rahmat yang dengannya aku peroleh kemuliaan-Mu di dunia dan akhirat. Ya Allah, aku memohon kepadaMu keberuntungan mendapatkan pemberianMu, serta hidangan orang-orang yang mati syahid, kehidupan orang-orang yang berbahagia, dan kemenangan atas musuh. Ya Allah kepadaMu aku sampaikan hajatku, walaupun terbatas penglihatanku, serta lemah amalanku. Aku butuh kepada rahmatMu, maka aku memohon kepadaMu wahai Dzat Yang Maha Mampu menyelesaikan segala perkara, wahai Dzat yang mengobati hatiku, sebagaimana Engkau melindungi diantara lautan aku mohon agar Engkau lindungi aku dari adzab Neraka Sa'ir, serta seruan kebinasaan, serta fitnah kubur. Ya Allah, apa yang tidak mampu terlihat oleh pandanganku, dan tidak dicapai oleh niatku, serta tidak sampai permintaanku dari kebaikan yang telah Engkau janjikan kepada seseorang diantara makhlukMu, atau kebaikan yang Engkau berikan kepada seseorang diantara hamba-hambaMu, maka menginginkan dan memohonnya kepadaMu dengan rahmatMu wahai Tuhan semesta alam. Ya Allah Yang memiliki tali (agama) yang kuat, dan perkara yang lurus, aku memohon kepadaMu keamanan pada hari yang penuh dengan ancaman, serta Surga pada hari yang kekal bersama orang-orang yang dekat, yang mati syahid, yang banyak melakukan ruku' dan sujud, serta yang senantiasa memenuhi janji, sesungguhnya Engkau Maha Pengasih dan Penyayang. Engkau mampu melakukan apa yang Engkau kehendaki. Ya Allah, jadikanlah kami orang-orang yang memberi petunjuk dan mendapatkan petunjuk, yang tidak tersesat dan menyesatkan, menyerah kepada para waliMu dan memusuhi musuh-musuhMu. Kami mencintai dengan kecintaanMu kepada orang yang mencintaiMu dan memusuhi dengan permusuhanMu kepada orang yang menyelisihiMu. Ya Allah, inilah doa yang mampu aku panjatkan dan kabulkanlah doa tersebut, dan inilah usahaku dan kepadaMu aku bersandar. Ya Allah berikanlah cahaya dalam hatiku dan cayaha dalam kuburku, cahaya di hadapanku, cahaya dari belakangku, cahaya dari kananku, cahaya dari kiriku, cahaya dari atasku, cahaya dari bawahku, cahaya dalam pendengaranku, cahaya dalam penglihatanku, cahaya dalam rambutku, cahaya dalam kulitku, cahaya dalam dagingku, cahaya dalam darahku, dan cahaya dalam tulangku. Ya Allah, perbesarkan cahaya untukku, berilah aku cahaya dan jadikan untukku cahaya. Maha Suci Dzat Yang memberikan kemuliaan dan berfirman dengan kemuliaan. Maha Suci dzat yang memiliki keagungan, dan memberi dengan keagungan. Maha Suci Dzat yang tidak sepantas untuk memuji kecuali kepadaNya, Dzat Yang memiliki karunia dan kenikmatan. Maha Suci Dzat yang memiliki keagungan dan kemurahan, Maha Suci Dzat Yang memiliki kebesaran dan kemuliaan, Setelah Selesai Sholat malam, , H.R. Tirmidzi, 3419<br>غريب - ضعيف (الألباني), After the night prayer Done, Allāhumma innī as'aluka raḥmatan min `indika tahdī bihā qalbī, wa tajma`u bihā amrī, wa talummu bihā sha`athī, wa tuṣliḥu bihā ghā'ibī, wa tarfa`u bihā shāhidī, wa tuzakkī bihā `amalī, wa tulhimunī bihā rushdī, wa taruddu bihā ulfatī, wa ta`ṣimunī bihā min kulli sū'in. Allāhumma a`ṭinī īmānan wa yaqīnan laisa ba`adahu kufr, wa raḥmatan anālu bihā sharafa karāmatika fid-dunyā wal-ākhira. Allāhumma innī as'alukal-fawza [fil-`atā'i wa yurwa] fil-qaḍā'i, wa nuzulash-shuhadā'i wa `aishas-su`adā'i, wan-naṣra `alal-a`dā'. Allāhumma innī unzilu bika ḥājatī, wa in qaṣura ra'yī wa ḍa`ufa `amalī iftaqartu ilā raḥmatik, fa as'aluka yā qāḍiyal-umūr, wa yā shāfiyas-ṣudūr, kamā tujīru bainal-buḥūr, an tujīranī min `adhābis-sa`īr, wa min da`watith-thubūr, wa min fitnatil-qubūr. Allāhumma mā qaṣṣara `anhu ra'yī wa lam tablughhu niyyatī wa lam tablughhu mas'alatī min khairin wa`adtahu aḥadan min khalqika aw khairin anta mu`ṭīhi aḥadan min `ibādika fa innī arghabu ilaika fīhi, wa as'alukahu bi-raḥmatika rabbal-`ālamīn. Allāhumma dhal-ḥablish-shadīd, wal-amrir-rashīd, as'aluka al-amna yawm al-wa`īd, wal-jannata yawmal-khulūd ma`al-muqarrabīnash-shuhūd, ar-rukka`is-sujūd, al-mūfīna bil-`uhūd, anta rahīmun wadūd, wa innaka taf`alu ma turīd. Allāhummaj`alnā hādīna muhtadīna, ghaira ḍallīna wa la muḍillīna, silman li-awliyā'ika wa `aduwwan li a`dā'ika, nuḥibbu biḥubbika man aḥabbaka wa nu`ādī bi`adāwatika man khālafak. Allāhumma hādhad-du`ā'u wa `alaikal-ijābatu, wa hādhal-juhdu wa `alaikat-tuklān. Allāhummaj`allī nūran fi qalbī wa nūran fi qabrī, wa nūran min baini yadayya, wa nūran min khalfī, wa nūran `an yamīnī, wa nūran `an shimālī, wa nūran min fawqī, wa nūran min taḥtī, wa nūran fi sam`ī, wa nūran fi baṣarī, wa nūran fi sha`rī, wa nūran fi basharī, wa nūran fi laḥmī, wa nūran fi damī, wa nūran fi `iẓamī. Allāhumma a`ẓim lī nūran, wa a`ṭinī nūran, waj`allī nūran. Subḥānal-ladhī ta`aṭṭafal-`izza wa qāla bihi, subḥānal-ladhī labisal-majda wa takarrama bihi, subḥānal-ladhī lā yanbaghit-tasbīḥu illā lahu, subḥāna dhil-faḍli wan-ni`am, subḥāna dhil-majdi wal-karam, subḥāna dhil-jalāli wal-ikrām, O Allah, I ask You of Your mercy, that You guide by it my heart, and gather by it my affair, and bring together that which has been scattered of my affairs, and correct with it that which is hidden from me, and raise by it that which is apparent from me, and purify by it my actions, and inspire me by it with that which contains my guidance, and protect me by it from that which I seek protection, and protect me by it from every evil. O Allah give me faith and certainty after which there is no disbelief, and mercy, by which I may attain the high level of Your generosity in the world and the Hereafter. O Allah, I ask You for success [in that which You grant, and relief] in the Judgment, and the positions of the martyrs, and the provision of the successful, and aid against the enemies. O Allah, I leave to You my need, and my actions are weak, I am in need of Your mercy, so I ask You, O Decider of the affairs, and O Healer of the chests, as You separate me from the punishment of the blazing flame, and from seeking destruction, and from the trial of the graves. O Allah, whatever my opinion has fallen short of, and my intention has not reached it, and my request has not encompassed it, of good that You have promised to anyone from Your creation, or any good You are going to give to any of Your slaves, then indeed, I seek it from You and I ask You for it, by Your mercy, O Lord of the Worlds. O Allah, Possessor of the strong rope, and the guided affair, I ask You for security on the Day of the Threat, and Paradise on the Day of Immortality along with the witnesses, brought-close, who bow and prostrate, who fulfill the covenants, You are Merciful, Loving, and indeed, You do what You wish. O Allah, make us guided guiders and not misguided misguiders, an ally to Your friends, an enemy to Your enemies. We love due to Your love, those who love You, and hate, due to Your enmity those who oppose You. O Allah, this is the supplication (that we are capable of), and it is upon You to respond, and this is the effort (that we are capable of), and upon You is the reliance. O Allah, appoint a light in my heart for me, and a light in my grave, and light in front of me, and light behind me, and light on my right, and light on my left, and light above me, and light below me, and light in my hearing, and light in my vision, and light in my hair, and light in my skin, and light in my flesh, and light in my blood, and light in my bones. O Allah, magnify for me light, and appoint for me a light. Glory is to the One who wears Glory and grants by it. Glory is to the One for Whom glorification is not fitting except for Him, the Possessor of Honor and Bounties, Glory is to the Possessor of Glory and Generosity, Glory is to the Possessor of Majesty and Honor, , , H.R. Tirmidzi"));
      boxDoa.put(
          121,
          Doa(
              id: 121,
              namaDoa: " Doa Agar Sembuh Dari Sakit",
              arabDoa:
                  " بِسْمِ اللَّهِ أَعُوذُ بِعِزَّةِ اللَّهِ وَقُدْرَتِهِ مِنْ شَرِّ مَا أَجِدُ مِنْ وَجَعِي هَذَا",
              latinDoa:
                  " BISMILLAHI A'UUDZU BI 'IZZATILLAHI WA QUDRATIHI MIN SYARRI MAA AJIDU MIN WAJ'II HADZA",
              bacaDoa: " Dengan nama Allah"));
      boxDoa.put(
          122,
          Doa(
              id: 122,
              namaDoa: " Mendoakan Orang yang Sakit agar Sembuh",
              arabDoa:
                  " اللَّهُمَّ أَذْهِبِ الْبَأْسَ رَبَّ النَّاسِ وَاشْفِ فَأَنْتَ الشَّافِي لَا شِفَاءَ إِلَّا شِفَاؤُكَ شِفَاءً لَا يُغَادِرُ سَقَمًا",
              latinDoa: " ALLAAHUMMA ADZHIBIL BA`SA",
              bacaDoa: " RABBAN NAASI"));
      boxDoa.put(
          123,
          Doa(
              id: 123,
              namaDoa: " Doa Sholat Mayit",
              arabDoa:
                  " اللهُمَّ، اغْفِرْ لَهُ وَارْحَمْهُ وَعَافِهِ وَاعْفُ عَنْهُ، وَأَكْرِمْ نُزُلَهُ، وَوَسِّعْ مُدْخَلَهُ، وَاغْسِلْهُ بِالْمَاءِ وَالثَّلْجِ وَالْبَرَدِ، وَنَقِّهِ مِنَ الْخَطَايَا كَمَا نَقَّيْتَ الثَّوْبَ الْأَبْيَضَ مِنَ الدَّنَسِ، وَأَبْدِلْهُ دَارًا خَيْرًا مِنْ دَارِهِ، وَأَهْلًا خَيْرًا مِنْ أَهْلِهِ وَزَوْجًا خَيْرًا مِنْ زَوْجِهِ، وَأَدْخِلْهُ الْجَنَّةَ وَأَعِذْهُ مِنْ عَذَابِ الْقَبْرِ (مِنْ عَذَابِ النَّارِ)",
              latinDoa:
                  " ALLAHUMMAGHFIR LAHU WARHAMHU WA 'AAFIHI WA'FU 'ANHU WA AKRIM NUZULAHU WA WASSI' MUDKHALAHU WAGHSILHU BILMAA`I WATS TSALJI WAL BARADI WA NAQQIHI MINAL KHATHAAYAA KAMAA NAQQAITATS TSAUBAL ABYADLA MINAD DANASI WA ABDILHU DAARAN KHAIRAN MIN DAARIHI WA AHLAN KHAIRAN MIN AHLIHI WA ZAUJAN KHAIRAN MIN ZAUJIHI WA ADKHILHUL JANNATA WA A'IDZHU MIN 'ADZAABIL QABRI (MIN 'ADZAABIN NAAR)",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          124,
          Doa(
              id: 124,
              namaDoa: " Doa Sholat Mayit 2",
              arabDoa:
                  " اللَّهُمَّ اغْفِرْ لِحَيِّنَا وَمَيِّتِنَا وَشَاهِدِنَا وَغَائِبِنَا وَذَكَرِنَا وَأُنْثَانَا وَصَغِيرِنَا وَكَبِيرِنَا",
              latinDoa:
                  " ALLOHUMMAGHFIR LIHAYYINAA WA MAYYITINAA WA SYAAHIDINAA WA GHOO IBINAA WA DZAKARINAA WA UNTSAANAA WA SHOGHIIRINAA WA KABIIRINAA",
              bacaDoa:
                  " Ya Allah berilah ampunan bagi yang masih hidup di antara kami dan yang sudah meninggal dunia"));
      boxDoa.put(
          125,
          Doa(
              id: 125,
              namaDoa: " Doa Memasukan Mayit Dalam Kubur",
              arabDoa: " بِسْمِ اللَّهِ وَعَلَى سُنَّةِ رَسُولِ اللَّهِ",
              latinDoa: " BISMILLAH WA 'ALA SUNNATI RASUULILLAH",
              bacaDoa:
                  " dengan nama Allah dan berada di atas sunnah Rasulullah shallallahu 'alaihi wasallam"));
      boxDoa.put(
          126,
          Doa(
              id: 126,
              namaDoa: " Doa Ziaroh ke Kuburan Orang Iman",
              arabDoa:
                  " السَّلَامُ عَلَيْكُمْ دَارَ قَوْمٍ مُؤْمِنِينَ وَأَتَاكُمْ مَا تُوعَدُونَ غَدًا مُؤَجَّلُونَ وَإِنَّا إِنْ شَاءَ اللَّهُ بِكُمْ لَاحِقُونَ",
              latinDoa:
                  " ASSALAAMU 'ALAIKUM DAARO QOUMIMMU'MINIINA WA ATAAKUM MAA TUU 'ADUUNA GHODAN MU AJJALUUNA WAINNAA INSYAA ALLOHU BIKUM LAA HIQUUNA",
              bacaDoa:
                  " Semoga keselamatan atas kalian wahai para penghuni (kuburan) dari kaum mukminin. Apa yang dijanjikan Allah kepada kalian niscaya akan kalian dapati esok (pada hari kiamat)"));
      boxDoa.put(
          127,
          Doa(
              id: 127,
              namaDoa: " Doa Ziaroh ke Kuburan Orang Iman 2",
              arabDoa:
                  " السَّلَامُ عَلَيْكُمْ أَهْلَ الدِّيَارِ مِنْ الْمُؤْمِنِينَ وَالْمُسْلِمِينَ وَإِنَّا إِنْ شَاءَ اللَّهُ لَلَاحِقُونَ أَسْأَلُ اللَّهَ لَنَا وَلَكُمْ الْعَافِيَةَ",
              latinDoa:
                  " AS SALAAMU 'ALA AHLID DIYAAR -sementara dalam riwayat Zuhair- AS SALAAMU 'ALAIKUM AHLAD DIYAARI MINAL MUKMINIIN WAL MUSLIMIIN WA INNAA INSYAA`ALLAHU BIKUM LAAHIQUUN ASALULLAHA LANAA WALAKUMUL 'AAFIYAH ",
              bacaDoa:
                  " Semoga keselamatan tercurah bagi penghuni (kubur) dari kalangan orang-orang mukmin dan muslim dan kami insya Allah akan menyulul kalian semua. Saya memohon kepada Allah bagi kami dan bagi kalian Al 'Afiyah (keselamatan)"));
      boxDoa.put(
          128,
          Doa(
              id: 128,
              namaDoa: " Doa Ziaroh ke Kuburan Orang Iman 3",
              arabDoa:
                  "  السَّلَامُ عَلَيْكُمْ يَا أَهْلَ الْقُبُورِ يَغْفِرُ اللَّهُ لَنَا وَلَكُمْ أَنْتُمْ سَلَفُنَا وَنَحْنُ بِالْأَثَرِ ",
              latinDoa: " ASSALAAMU 'ALAIKUM YA AHLAL QUBUR",
              bacaDoa:
                  " YAGHFIRULLAHU LANA WA WALAKU ANTUM SALAFUNA WA NAHNU BIL ATSARI"));
      boxDoa.put(
          129,
          Doa(
              id: 129,
              namaDoa: " Doa Ziaroh ke Kuburan Orang Iman 4",
              arabDoa:
                  "  السَّلَامُ عَلَيْكُمْ أَهْلَ الدِّيَارِ مِنْ الْمُؤْمِنِينَ وَالْمُسْلِمِينَ وَإِنَّا إِنْ شَاءَ اللَّهُ بِكُمْ لَاحِقُونَ أَنْتُمْ لَنَا فَرَطٌ وَنَحْنُ لَكُمْ تَبَعٌ أَسْأَلُ اللَّهَ الْعَافِيَةَ لَنَا وَلَكُمْ",
              latinDoa:
                  " ASSALAAMU 'ALAIKUM AHLADDIYAARI MINAL MU'MINIINA WAL MUSLIMIINA WAINNAA INSYAA ALLOHU BIKUM LAAHIQUNA ANTUM LANAA FAROTHUN WANAHNU LAKUM TABA'UN ASALULLOHAL 'AAFIYATA LANAA WALAKUM",
              bacaDoa:
                  " Semoga kesejahteraan terlimpahkan kepada kalian wahai penghuni kubur dari kaum Mukminin dan Muslimin"));
      boxDoa.put(
          130,
          Doa(
              id: 130,
              namaDoa: " Doa Ziaroh ke Kuburan Orang Iman 5",
              arabDoa:
                  "  السَّلَامُ عَلَيْكُمْ دَارَ قَوْمٍ مُؤْمِنِينَ وَإِنَّا إِنْ شَاءَ اللَّهُ بِكُمْ لَاحِقُونَ",
              latinDoa:
                  " ASSALAAMU 'ALAIKUM DAARO QOUMIMMU'MINIINA WAINNAA INSYAA ALLOHU BIKUM LAAHIQUUNA",
              bacaDoa:
                  " Assalamu'alaikum wahai penghuni negeri kaum mukmin. Kami insya Allah akan menyusul kalian"));
      boxDoa.put(
          131,
          Doa(
              id: 131,
              namaDoa: " Doa Berbuka Puasa",
              arabDoa: " اللَّهُمَّ لَكَ صُمْتُ وَعَلَى رِزْقِكَ أَفْطَرْتُ",
              latinDoa: " ALLAAHUMMA LAKA SHUMTU WA 'ALAA RIZQIKA AFTHARTU",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          132,
          Doa(
              id: 132,
              namaDoa: " Doa Berbuka Puasa 2",
              arabDoa:
                  " ذَهَبَ الظَّمَأُ وَابْتَلَّتِ الْعُرُوقُ، وَثَبَتَ الْأَجْرُ إِنْ شَاءَ اللَّهُ",
              latinDoa:
                  " DZAHABAZH ZHAMAA`U WABTALLATIL 'URUUQU WA TSABATAL AJRU IN SYAA-ALLAAH",
              bacaDoa: " Telah hilang dahaga"));
      boxDoa.put(
          133,
          Doa(
              id: 133,
              namaDoa: " Doa Lailatul Qodar",
              arabDoa:
                  " اللَّهُمَّ إِنَّكَ عَفُوٌّ كَرِيمٌ تُحِبُّ الْعَفْوَ فَاعْفُ عَنِّي",
              latinDoa:
                  " ALLAAHUMMA INNAKA 'AFUWWUN KARIIMUN TUHIBBUL 'AFWA FA'FU 'ANNII",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          134,
          Doa(
              id: 134,
              namaDoa: " Doa Sholat Istikhoroh",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَسْتَخِيرُكَ بِعِلْمِكَ وَأَسْتَقْدِرُكَ بِقُدْرَتِكَ وَأَسْأَلُكَ مِنْ فَضْلِكَ الْعَظِيمِ فَإِنَّكَ تَقْدِرُ وَلَا أَقْدِرُ وَتَعْلَمُ وَلَا أَعْلَمُ وَأَنْتَ عَلَّامُ الْغُيُوبِ اللَّهُمَّ إِنْ كُنْتَ تَعْلَمُ أَنَّ هَذَا الْأَمْرَ خَيْرٌ لِي فِي دِينِي وَمَعَاشِي وَعَاقِبَةِ أَمْرِي (عَاجِلِ أَمْرِي وَآجِلِهِ) فَاقْدُرْهُ لِي وَيَسِّرْهُ لِي ثُمَّ بَارِكْ لِي فِيهِ وَإِنْ كُنْتَ تَعْلَمُ أَنَّ هَذَا الْأَمْرَ شَرٌّ لِي فِي دِينِي وَمَعَاشِي وَعَاقِبَةِ أَمْرِي ( فِي عَاجِلِ أَمْرِي وَآجِلِهِ) فَاصْرِفْهُ عَنِّي وَاصْرِفْنِي عَنْهُ وَاقْدُرْ لِي الْخَيْرَ حَيْثُ كَانَ ثُمَّ أَرْضِنِي",
              latinDoa:
                  " Allahumma inniy astakhiiruka bi 'ilmika wa astaqdiruka biqudratika wa as-aluka min fadhlikal 'azhim",
              bacaDoa:
                  " fainnaka taqdiru wa laa aqdiru wa ta'lamu wa laa A'lamu wa anta 'allaamul ghuyuub. Allahumma in kunta ta'lamu anna haadzal amru khairun liy fiy diiniy wa ma'aasyiy wa 'aafiyati amriy ( 'Aajili amriy wa aajilihi) faqdurhu liy wa yassirhu liy tsumma baarik liy fiihi. Wa in kunta ta'lamu anna haadzal amru syarrun liy fiy diiniy wa ma'aasyiy wa 'aafiyati amriy (fiy 'aajili amriy wa aajilihi) fashrifhu 'anniy washrifniy 'anhu waqdurliyl khaira haitsu kaana tsummar dhiniy"));
      boxDoa.put(
          135,
          Doa(
              id: 135,
              namaDoa: " Doa Sholat Hajat",
              arabDoa:
                  " لَا إِلَهَ إِلَّا اللَّهُ الْحَلِيمُ الْكَرِيمُ سُبْحَانَ اللَّهِ رَبِّ الْعَرْشِ الْعَظِيمِ الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ أَسْأَلُكَ مُوجِبَاتِ رَحْمَتِكَ وَعَزَائِمَ مَغْفِرَتِكَ وَالْغَنِيمَةَ مِنْ كُلِّ بِرٍّ وَالسَّلَامَةَ مِنْ كُلِّ إِثْمٍ لَا تَدَعْ لِي ذَنْبًا إِلَّا غَفَرْتَهُ وَلَا هَمًّا إِلَّا فَرَّجْتَهُ وَلَا حَاجَةً هِيَ لَكَ رِضًا إِلَّا قَضَيْتَهَا يَا أَرْحَمَ الرَّاحِمِينَ",
              latinDoa: " LAA ILAAHA ILLALLAAHUL HALIIMUL KARIIM",
              bacaDoa:
                  " SUBHANALLAAHI RABBIL 'ARSYIL 'ADZIIM, H.R. Tirmidzi,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"));
      boxDoa.put(
          136,
          Doa(
              id: 136,
              namaDoa: " Sholat Tasbih",
              arabDoa:
                  " سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ وَلَا إِلَهَ إِلَّا اللَّهُ وَاللَّهُ أَكْبَرُ",
              latinDoa:
                  " SUBHAANALLAH WALHAMDULILLAH WA LAAILAAHA ILLALLAH WALLAHU AKBAR",
              bacaDoa:
                  " Maha Suci Allah dan Segala puji bagi Allah dan Tiada Tuhan kecuali Allah dan Allah Maha Besar"));
      boxDoa.put(
          137,
          Doa(
              id: 137,
              namaDoa: " Rokaat 1 Sholat Khifdzi (Surat Yasin)",
              arabDoa:
                  " <p align=center>بسم الله الرحمن الرحيم</p>يٰسٓ (1) وَالْقُرْاٰنِ الْحَكِيْمِۙ (2) اِنَّكَ لَمِنَ الْمُرْسَلِيْنَۙ (3) عَلٰى صِرَاطٍ مُسْتَقِيْمٍۗ (4) تَنْزِيْلَ الْعَزِيْزِ الرَّحِيْمٍۙ (5) لِتُنْذِرَ قَوْمًا مَّآ اُنْذِرَ اٰبَآؤُهُمْ فَهُمْ غٰفِلُوْنَ (6) لَقَدْ حَقَّ الْقَوْلُ عَلٰٓى اَكْثَرِهِمْ فَهُمْ لَا يُؤْمِنُوْنَ (7) اِنَّا جَعَلْنَا فِيْٓ اَعْنَاقِهِمْ اَغْلٰـلًا فَهِيَ اِلَى الْاَذْقَانِ فَهُمْ مُّقْمَحُوْنَ (8) وَجَعَلْنَا مِنْ بَيْنِ اَيْدِيْهِمْ سَدًّا وَّمِنْ خَلْفِهِمْ سَدًّا فَاَغْشَيْنَاهُمْ فَهُمْ لَا يُبْصِرُوْنَ (9) وَسَوَآءٌ عَلَيْهِمْ ءَاَنْذَرْتَهُمْ اَمْ لَمْ تُنْذِرْهُمْ لَا يُؤْمِنُوْنَ (10) اِنَّمَا تُنْذِرُ مَنِ اتَّبَعَ الذِّكْرَ وَخَشِيَ الرَّحْمٰنَ بِالْغَيْبِۚ فَبَشِّرْهُ بِمَغْفِرَةٍ وَاَجْرٍ كَرِيْمٍ (11) اِنَّا نَحْنُ نُحْيِ الْمَوْتٰى وَنَكْتُبُ مَا قَدَّمُوْا وَاٰثَارَهُمْۗ وَكُلَّ شَيْءٍ اَحْصَيْنٰهُ فِيْٓ اِمَامٍ مُّبِيْنٍ (12) وَاضْرِبْ لَهُمْ مَّثَلًا اَصْحٰبَ الْقَرْيَةِۘ اِذْ جَآءَهَا الْمُرْسَلُوْنَۚ (13) اِذْ اَرْسَلْنَآ اِلَيْهِمُ اثْنَيْنِ فَكَذَّبُوْهُمَا فَعَزَّزْنَا بِثَالِثٍ فَقَالُوْآ اِنَّٓا اِلَيْكُمْ مُّرْسَلُوْنَ (14) قَالُوْا مَآ اَنْتُمْ اِلَّا بَشَرٌ مِثْلُنَاۙ وَمَآ اَنْزَلَ الرَّحْمٰنُ مِنْ شَيْءٍۙ اِنْ اَنْتُمْ اِلَّا تَكْذِبُوْنَ (15) قَالُوْا رَبُّنَا يَعْلَمُ اِنَّآ اِلَيْكُمْ لَمُرْسَلُوْنَ (16) وَمَا عَلَيْنَآ اِلَّا الْبَلٰـغُ الْمُبِيْنُ (17) قَالُوْٓا اِنَّا تَطَيَّرْنَا بِكُـمْۚ لَئِنْ لَّمْ تَنْتَهُوْا لَنَرْجُمَنَّكُمْ وَلَيَمَسَّنَّكُمْ مِّنَّا عَذَابٌ اَلِيْمٌ (18) قَالُوْا طَآئِرُكُمْ مَعَكُـمْۗ اَئِنْ ذُكِّرْتُـمْۗ بَلْ اَنْتُمْ قَوْمٌ مُّسْرِفُوْنَ (19) وَجَآءَ مِنْ اَقْصَى الْمَدِيْنَةِ رَجُلٌ يَسْعٰى قَالَ يٰـقَوْمِ اتَّبِعُوا الْمُرْسَلِيْنَۙ (20) اتَّبِعُوْا مَنْ لَا يَسْئَلُكُمْ اَجْرًا وَّهُمْ مُهْتَدُوْنَ (21) وَمَا لِيَ لَآ اَعْبُدُ الَّذِيْ فَطَرَنِيْ وَاِلَيْهِ تُرْجَعُوْنَ (22) ءَاَتَّخِذُ مِنْ دُوْنِهٖٓ اٰلِهَةً اِنْ يُّرِدْنِ الرَّحْمٰنُ بِضُرٍّ لَّا تُغْنِ عَنِّيْ شَفَاعَتُهُمْ شَيْئًا وَّلَا يُنْقِذُوْنِۚ (23) اِنِّيْٓ اِذًا لَفِيْ ضَلٰـلٍ مُّبِيْنٍ (24) اِنِّيْٓ اٰمَنْتُ بِرَبِّكُمْ فَاسْمَعُوْنِۗ (25) قِيْلَ ادْخُلِ الْجَنَّةَ.ۗ قَالَ يٰـلَيْتَ قَوْمِيْ يَعْلَمُوْنَۙ (26) بِمَا غَفَرَ لِيْ رَبِّيْ وَجَعَلَنِيْ مِنَ الْمُكْرَمِيْنَ (27) وَمَآ اَنْزَلْنَا عَلٰى قَوْمِهٖ مِنْ بَعْدِهٖ مِنْ جُنْدٍ مِّنَ السَّمَآءِ وَمَا كُنَّا مُنْزِلِيْنَ (28) اِنْ كَانَتْ اِلَّا صَيْحَةً وَاحِدَةً فَاِذَا هُمْ خَامِدُوْنَ (29) يٰـحَسْرَةً عَلَى الْعِبَادِۚ مَا يَأْتِيْهِمْ مِّنْ رَّسُوْلٍ اِلَّا كَانُوْا بِهٖ يَسْتَهْزِءُوْنَ (30) اَلَمْ يَرَوْا كَمْ أَهْلَـكْنَا قَبْلَهُمْ مِّنَ الْقُرُوْنِ اَنَّهُمْ اِلَيْهِمْ لَا يَرْجِعُوْنَ(31)  وَاِنْ كُلٌّ لَّمَّا جَمِيْعٌ لَدَيْنَا مُحْضَرُوْنَ (32) وَاٰيَةٌ لَّهُمُ الْاَرْضُ الْمَيْتَةُ.ۖ اَحْيَـيْنٰـهَا وَاَخْرَجْنَا مِنْهَا حَبًّا فَمِنْهُ يَأْ كُـلُوْنَ (33) وَجَعَلْنَا فِيهَا جَنّٰتٍ مِّنْ نَخِيْلٍ وَاَعْنَابٍ وَّفَجَّرْنَا فِيهَا مِنَ الْعُيُوْنِۙ (34) لِيَأْ كُـلُوْا مِنْ ثَمَرِهٖۙ وَمَا عَمِلَتْهُ اَيْدِيْهِمْۗ اَفَلَا يَشْكُرُوْنَ (35) سُبْحٰنَ الَّـذِيْ خَلَقَ الْاَزْوَاجَ كُـلَّهَا مِمَّا تُنْبِتُ الْاَرْضُ وَمِنْ اَنْفُسِهِمْ وَمِمَّا لَا يَعْلَمُوْنَ (36) وَاٰيَةٌ لَّهُمُ اللَّيْلُ.ۖ نَسْلَخُ مِنْهُ النَّهَارَ فَاِذَا هُمْ مُّظْلِمُوْنَۙ (37) وَالشَّمْسُ تَجْرِيْ لِمُسْتَقَرٍّ لَّهَاۗ ذٰلِكَ تَقْدِيْرُ الْعَزِيْزِ الْعَلِيْمِۗ (38) وَالْقَمَرَ قَدَّرْنٰهُ مَنَازِلَ حَتّٰى عَادَ كَالْعُرْجُوْنِ الْقَدِيْمِ (39) لَا الشَّمْسُ يَنْبَغِيْ لَهَآ اَنْ تُدْرِكَ الْقَمَرَ وَلَا اللَّيْلُ سَابِقُ النَّهَارِۗ وَكُلٌّ فِيْ فَلَكٍ يَسْبَحُونَ (40) وَاٰيَةٌ لَّهُمْ اَنَّا حَمَلْنَا ذُرِّيَّـتَهُمْ فِي الْفُلْكِ الْمَشْحُوْنِۙ (41) وَخَلَقْنَا لَهُمْ مِّنْ مِثْلِهٖ مَا يَرْكَبُوْنَ (42) وَاِنْ نَّشَأْ نُغْرِقْهُمْ فَلَا صَرِيْخَ لَهُمْ وَلَا هُمْ يُنْقَذُوْنَ (43) اِلَّا رَحْمَةً مِّنَّا وَمَتَاعًا اِلٰى حِيْنٍ (44) وَاِذَا قِيْلَ لَهُمُ اتَّقُوْا مَا بَيْنَ اَيْدِيْـكُمْ وَمَا خَلْفَكُمْ لَعَلَّـكُمْ تُرْحَمُوْنَ (45) وَمَا تَأْتِيـْهِمْ مِّنْ اٰيَةٍ مِّنْ اٰيٰتِ رَبِّهِمْ اِلَّا كَانُوْا عَنْهَا مُعْرِضِيْنَ (46) وَاِذَا قِيْلَ لَهُمْ اَنْفِقُوْا مِمَّا رَزَقَكُمُ اللَّهُ قَالَ الَّذِيْنَ كَفَرُوْا لِلَّذِيْنَ اٰمَنُوا اَنُطْعِمُ مَنْ لَّوْ يَشَآءُ اللّٰهُ أَطْعَمَهٗ ۖ اِنْ اَنْتُمْ اِلَّا فِيْ ضَلٰـلٍ مُّبِيْنٍ (47) وَيَقُوْلُوْنَ مَتٰى هٰذَا الْوَعْدُ اِنْ كُنْتُمْ صٰدِقِيْنَ (48) مَا يَنْظُرُوْنَ اِلَّا صَيْحَةً وَاحِدَةً تَأْخُذُهُمْ وَهُمْ يَخِصِّمُوْنَ (49) فَلَا يَسْتَطِيْعُوْنَ تَوْصِيَةً وَّلَآ اِلٰى أَهْلِهِمْ يَرْجِعُوْنَ (50) وَنُفِخَ فِى الصُّوْرِ فَاِذَا هُمْ مِّنَ الْاَجْدَاثِ اِلٰى رَبِّهِمْ يَنْسِلُوْنَ (51) قَالُوْا يٰـوَيْلَنَا مَنْ بَعَثَنَا مِنْ مَّرْقَدِنَا هٰذَا مَا وَعَدَ الرَّحْمٰنُ وَصَدَقَ الْمُرْسَلُوْنَ (52) اِنْ كَانَتْ اِلَّا صَيْحَةً وَّاحِدَةً فَإِذَا هُمْ جَمِيعٌ لَّدَيْنَا مُحْضَرُوْنَ (53) فَالْيَوْمَ لَا تُظْلَمُ نَفْسٌ شَيْئًا وَّلَا تُجْزَوْنَ اِلَّا مَا كُنْتُمْ تَعْمَلُوْنَ (54) اِنَّ اَصْحٰبَ الْجَنَّةِ الْيَوْمَ فِيْ شُغُلٍ فٰـكِهُونَۚ (55) هُمْ وَاَزْوَاجُهُمْ فِيْ ظِلٰـلٍ عَلَى الْاَرَآئِـكِ مُتَّكِئُونَۚ (56) لَهُمْ فِيْهَا فَاكِهَةٌ وَلَهُمْ مَّا يَدَّعُوْنَۚ (57) سَلٰـمٌۗ قَوْلًا مِّنْ رَّبٍّ رَّحِيْمٍ (58) وَامْتَازُوا الْيَوْمَ اَيُّهَا الْمُجْرِمُونَ (59) اَلَمْ اَعْهَدْ اِلَيْكُمْ يَا بَنِيْٓ اٰدَمَ اَنْ لَّا تَعْبُدُوا الشَّيْطٰنَۚ اِنَّهٗ لَكُمْ عَدُوٌّ مُّبِيْنٌ (60) وَاَنِ اعْبُدُوْنِيْ.ۗ هٰذَا صِرَاطٌ مُّسْتَقِيْمٌ (61) وَلَقَدْ أَضَلَّ مِنْكُمْ جِبِلًّا كَثِيرًاۗ اَفَلَمْ تَكُوْنُوْا تَعْقِلُوْنَ (62) هٰذِهٖ جَهَنَّمُ الَّتِيْ كُنْتُمْ تُوْعَدُوْنَ (63) اِصْلَوْهَا الْيَوْمَ بِمَا كُنْتُمْ تَكْفُرُوْنَ (64) اَلْيَوْمَ نَخْتِمُ عَلٰٓى اَفْوَاهِهِمْ وَتُكَلِّمُنَا اَيْدِيْهِمْ وَتَشْهَدُ اَرْجُلُهُمْ بِمَا كَانُوْا يَكْسِبُوْنَ (65) وَلَوْ نَشَآءُ لَطَمَسْنَا عَلٰٓى اَعْيُنِهِمْ فَاسْتَبَقُوا الصِّرَاطَ فَاَنّٰى يُبْصِرُوْنَ (66) وَلَوْ نَشَآءُ لَمَسَخْنٰهُمْ عَلٰى مَكَانَتِهِمْ فَمَا اسْتَطَاعُوْا مُضِيًّا وَلَا يَرْجِعُوْنَ (67) وَمَنْ نُّعَمِّرْهُ نُنَكِّسْهُ فِي الْخَلْقِۗ اَفَلَا يَعْقِلُوْنَ (68) وَمَا عَلَّمْنٰهُ الشِّعْرَ وَمَا يَنْبَغِيْ لَهٗ اِنْ هُوَ اِلَّا ذِكْرٌ وَّقُرْاٰنٌ مُّبِيْنٌ (69) لِّيُنْذِرَ مَنْ كَانَ حَيًّا وَيَحِقَّ الْقَوْلُ عَلَى الْكٰفِرِيْنَ (70) اَوَلَمْ يَرَوْا اَنَّا خَلَقْنَا لَهُمْ مِّمَّا عَمِلَتْ اَيْدِينَآ اَنْعَامًا فَهُمْ لَهَا مَالِكُوْنَ (71) وَذَلَّلْنٰهَا لَهُمْ فَمِنْهَا رَكُوْبُهُمْ وَمِنْهَا يَأْ كُلُوْنَ (72) وَلَهُمْ فِيْهَا مَنَافِعُ وَمَشَارِبُ.ۗ اَفَلَا يَشْكُرُوْنَ(73)  وَاتَّخَذُوْا مِنْ دُوْنِ اللَّهِ اٰلِهَةً لَعَلَّهُمْ يُنْصَرُوْنَ (74) لَا يَسْتَطِيْعُوْنَ نَصْرَهُمْ وَهُمْ لَهُمْ جُنْدٌ مُّحْضَرُوْنَ (75) فَلَا يَحْزُنْكَ قَوْلُهُمْۘ اِنَّا نَعْلَمُ مَا يُسِرُّوْنَ وَمَا يُعْلِنُوْنَ (76) اَوَلَمْ يَرَ الْاِنْسَانُ اَنَّا خَلَقْنٰهُ مِنْ نُّطْفَةٍ فَاِذَا هُوَ خَصِيْمٌ مُّبِيْنٌ (¡77) وَضَرَبَ لَنَا مَثَلًا وَّنَسِيَ خَلْقَهٗ قَالَ مَنْ يُّحْيِ الْعِظَامَ وَهِيَ رَمِيْمٌ (78) قُلْ يُحْيِـيْهَا الَّذِيْٓ اَنْشَاَهَآ اَوَّلَ مَرَّةٍۗ وَهُوَ بِكُلِّ خَلْقٍ عَلِيْمٌ (79) الَّذِيْ جَعَلَ لَكُمْ مِّنَ الشَّجَرِ الْالَخْضَرِ نَارًاۙ فَاِذَآ اَنْتُمْ مِّنْهُ تُوْقِدُوْنَ (80) اَوَلَيْسَ الَّذِيْ خَلَقَ السَّمٰوٰتِ وَالْاَرْضَ بِقٰدِرٍ عَلٰٓى اَنْ يَّخْلُقَ مِثْلَهُمْۗ بَلٰى وَهُوَ الْخَـلّٰقُ الْعَلِيْمُ (81) اِنَّمَآ اَمْرُهٗٓ اِذَآ اَرَادَ شَيْئًاۖ أَنْ يَقُوْلَ لَهٗ كُنْ فَيَكُوْنُ (82) فَسُبْحٰنَ الَّـذِيْ بِيَدِهٖ مَلَكُوْتُ كُلِّ شَيْءٍ وَّاِلَيْهِ تُرْجَعُوْنَ (83) ا",
              latinDoa: " ",
              bacaDoa: " "));
      boxDoa.put(
          138,
          Doa(
              id: 138,
              namaDoa: " Rokaat 2 Sholat Khifdzi (Surat Ad Dhukhon)",
              arabDoa:
                  " <p align=center>بسم الله الرحمن الرحيم</p>حٰـمٓۚ (1) وَالْكِتَابِ الْمُبِيْنِۙ (2) اِنَّآ اَنْزَلْنٰهُ فِيْ لَيْلَةٍ مُّبٰرَكَةٍ اِنَّا كُنَّا مُنْذِرِيْنَ (3) فِيْهَا يُفْرَقُ كُلُّ اَمْرٍ حَكِيْـمٍۙ (4) اَمْرًا مِنْ عِنْدِنَا.ۗ اِنَّا كُنَّا مُرْسِلِيْنَۖ (5) رَحْمَةً مِّنْ رَّبِّكَ.ۗ اِنَّهٗ هُوَ السَّمِيْعُ الْعَلِيْمُۗ (6) رَبِّ السَّمٰوٰتِ وَالْاَرْضِ وَمَا بَيْنَهُمَاۘ اِنْ كُنْتُمْ مُوْقِنِيْنَ (7) لَآ اِلٰهَ اِلَّا هُوَ يُـحْـيٖ وَيُمِيْتُ.ۗ رَبُّكُمْ وَرَبُّ اٰبَآئِكُـمُ الْاَوَّلِيْنَ (8) بَلْ هُمْ فِيْ شَكٍّ يَّلْعَبُوْنَ (9) فَارْتَقِبْ يَوْمَ تَأْتِى السَّمَآءُ بِدُخَانٍ مُّبِيْنٍ (10) يَغْشَى النَّاسَۗ هٰذَا عَذَابٌ اَلِيْمٌ (11) رَبَّنَا اكْشِفْ عَنَّا الْعَذَابَ اِنَّا مُؤْمِنُوْنَ (12) اَنّٰى لَهُمُ الذِّكْرٰى وَقَدْ جَآءَهُمْ رَسُوْلٌ مُّبِيْنٌۙ (13)  ثُمَّ تَوَلَّوْا عَنْهُ وَقَالُوْا مُعَلَّمٌ مَّجْنُوْنٌۘ (14) اِنَّا كَاشِفُو الْعَذَابِ قَلِيْلًا اِنَّكُمْ عَآئِدُوْنَۘ (15) يَوْمَ نَبْطِشُ الْبَطْشَةَ الْكُبْرٰىۚ اِنَّا مُنْتَقِمُوْنَ (16) وَلَقَدْ فَتَنَّا قَبْلَهُمْ قَوْمَ فِرْعَوْنَ وَجَآءَهُمْ رَسُوْلٌ كَرِيْمٌۙ (17) اَنْ اَدُّوْآ اِلَيَّ عِبَادَ اللّٰهِۗ اِنِّيْ لَكُمْ رَسُوْلٌ اَمِيْنٌۙ (18) وَاَنْ لَّا تَعْلُوْا عَلَى اللّٰهِۚ اِنِّيْٓ اٰتِيْكُمْ بِسُلْطٰنٍ مُّبِيْنٍۚ (19) وَاِنِّيْ عُذْتُ بِرَبِّيْ وَرَبِّكُمْ اَنْ تَرْجُمُوْنِۚ (20) وَاِنْ لَّمْ تُؤْمِنُوْا لِيْ فَاعْتَزِلُوْنِ (21)  فَدَعَا رَبَّهٗٓ اَنَّ هٰٓؤُلَآءِ قَوْمٌ مُّجْرِمُوْنَ (22) فَاَسْرِ بِعِبَادِيْ لَيْلًا اِنَّكُمْ مُّتَّبَعُوْنَۙ (23) وَاتْرُكِ الْبَحْرَ رَهْوًاۗ اِنَّهُمْ جُنْدٌ مُغْرَقُوْنَ (24) كَـمْ تَرَكُوْا مِنْ جَنّٰتٍ وَّعُيُوْنٍۙ (25) وَزُرُوْعٍ وَّمَقَامٍ كَرِيْمٍۙ (26) وَّنَعْمَةٍ كَانُوْا فِيْهَا فٰـكِهِيْنَ (27) كَذٰلِكَ.ۗ وَاَوْرَثْنٰـهَا قَوْمًا اٰخَرِيْنَۚ (28) فَمَا بَكَتْ عَلَيْهِمُ السَّمَآءُ وَالْاَرْضُ.ۗ وَمَا كَانُوْا مُنْظَرِيْنَ (29) وَلَقَدْ نَجَّيْنَا بَنِيْٓ اِسْرَآءِيْلَ مِنَ الْعَذَابِ الْمُهِيْنِۙ (30) مِنْ فِرْعَوْنَۗ اِنَّهٗ كَانَ عَالِيًا مِّنَ الْمُسْرِفِيْنَ (31) وَلَقَدِ اخْتَرْنٰهُمْ عَلٰى عِلْـمٍ عَلَى الْعٰلَمِيْنَۚ (32) وَاٰتَيْنٰهُمْ مِّنَ الْاٰيٰتِ مَا فِيْهِ بَلَآؤٌ مُّبِيْنٌ (33) اِنَّ هٰٓؤُلَآءِ لَيَقُوْلُوْنَۙ (34) اِنْ هِيَ اِلَّا مَوْتَتُنَا الْاُوْلٰى وَمَا نَحْنُ بِمُنْشَرِيْنَ (35) فَأْتُوْا بِاٰبَآئِنَآ اِنْ كُنْتُمْ صٰدِقِيْنَ (36) اَهُمْ خَيْرٌ اَمْ قَوْمُ تُبَّعٍۙ وَالَّذِيْنَ مِنْ قَبْلِهِمْ اَهْلَكْنٰهُمْ اِنَّهُمْ كَانُوْا مُجْرِمِيْنَ (37) وَمَا خَلَقْنَا السَّمٰوٰتِ وَالْاَرْضَ وَمَا بَيْنَهُمَا لٰعِبِيْنَ (38) مَا خَلَقْنٰهُمَآ اِلَّا بِالْحَقِّ وَلٰـكِنَّ اَكْـثَرَهُمْ لَا يَعْلَمُوْنَ (39) اِنَّ يَوْمَ الْفَصْلِ مِيْقَاتُهُمْ اَجْمَعِيْنَۙ (40) يَوْمَ لَا يُغْنِيْ مَوْلًى عَنْ مَّوْلًى شَيْئًا وَّلَا هُمْ يُنْصَرُوْنَۙ (41) اِلَّا مَنْ رَّحِمَ اللَّهُ.ۗ اِنَّهٗ هُوَ الْعَزِيْزُ الرَّحِيْمُ (42) اِنَّ شَجَرَتَ الزَّقُّوْمِۙ(43)  طَعَامُ الْاَثِيْـمِۛ (44) كَالْمُهْلِۛ يَغْلِيْ فِى الْبُطُوْنِۙ (45) كَغَلْيِ الْحَمِيْمِۗ (46) خُذُوْهُ فَاعْتِلُوْهُ اِلٰى سَوَآءِ الْجَحِيْمِۙ (47) ثُمَّ صُبُّوْا فَوْقَ رَأْسِهٖ مِنْ عَذَابِ الْحَمِيْمِۗ (48) ذُقْ.ۚ اِنَّكَ اَنْتَ الْعَزِيْزُ الْكَرِيْمُ (49) اِنَّ هٰذَا مَا كُنْتُمْ بِهٖ تَمْتَرُوْنَ (50) اِنَّ الْمُتَّقِيْنَ فِيْ مَقَامٍ اَمِيْنٍۙ (51) فِيْ جَنّٰتٍ وَّعُيُوْنٍۙ (52) يَّلْبَسُوْنَ مِنْ سُنْدُسٍ وَّاِسْتَبْرَقٍ مُتَقٰبِلِيْنَۚ (53) كَذَلِكَ.ۗ وَزَوَّجْنٰهُمْ بِحُوْرٍ عِيْنٍۗ (54) يَدْعُوْنَ فِيْهَا بِكُلِّ فَاكِهَةٍ اٰمِنِيْنَۙ (55) لَا يَذُوْقُوْنَ فِيْهَا الْمَوْتَ اِلَّا الْمَوْتَةَ الْاُوْلٰىۚ وَوَقٰهُمْ عَذَابَ الْجَحِيْمِۙ (56) فَضْلًا مِّنْ رَّبِّكَ.ۚ ذٰلِكَ هُوَ الْفَوْزُ الْعَظِيْمُ (57) فَاِنَّمَا يَسَّرْنٰهُ بِلِسٰنِكَ لَعَلَّهُمْ يَتَذَ كَّرُوْنَ (58) فَارْتَقِبْ اِنَّهُمْ مُّرْتَقِبُوْنَ (59)",
              latinDoa: " ",
              bacaDoa: " "));
      boxDoa.put(
          139,
          Doa(
              id: 139,
              namaDoa: " Rokaat 3 Sholat Khifdzi (Surat As Sajda)",
              arabDoa:
                  " <p align=center>بسم الله الرحمن الرحيم</p>الٓـمٓۗ (1) تَنْزِيْلُ الْكِتٰبِ لَا رَيْبَ فِيْهِ مِنْ رَّبِّ الْعٰلَمِيْنَۗ (2) اَمْ يَقُوْلُوْنَ افْتَرٰىهُ.ۚ بَلْ هُوَ الْحَقُّ مِنْ رَّبِّكَ لِتُنْذِرَ قَوْمًا مَّآ اَتٰهُمْ مِّنْ نَّذِيْرٍ مِّنْ قَبْلِكَ لَعَلَّهُمْ يَهْتَدُوْنَ (3) اللّٰهُ الَّـذِيْ خَلَقَ السَّمٰوٰتِ وَالْاَرْضَ وَمَا بَيْنَهُمَا فِيْ سِتَّةِ اَيَّامٍ ثُمَّ اسْتَوٰى عَلَى الْعَرْشِۗ مَا لَكُمْ مِّنْ دُوْنِهٖ مِنْ وَّلِيٍّ وَّلَا شَفِيْعٍۗ اَفَلَا تَتَذَ كَّـرُوْنَ (4) يُدَبِّرُ الْاَمْرَ مِنَ السَّمَآءِ اِلَى الْاَرْضِ ثُمَّ يَعْرُجُ اِلَيْهِ فِيْ يَوْمٍ كَانَ مِقْدَارُهٗ اَلْفَ سَنَةٍ مِّمَّا تَعُدُّوْنَ (5) ذٰلِكَ عَالِمُ الْغَيْبِ وَالشَّهَادَةِ الْعَزِيْزُ الرَّحِيْمُۙ (6)  الَّـذِيْٓ اَحْسَنَ كُلَّ شَيْءٍ خَلَقَهٗ وَبَدَاَ خَلْقَ الْاِنْسَانِ مِنْ طِيْنٍ (7) ثُمَّ جَعَلَ نَسْلَهٗ مِنْ سُلٰلَةٍ مِّنْ مَّآءٍ مَّهِيْنٍۚ (8) ثُمَّ سَوّٰىهُ وَنَفَخَ فِيْهِ مِنْ رُّوْحِهٖ وَجَعَلَ لَكُمُ السَّمْعَ وَالْاَبْصَارَ وَالْاَفْئِدَةَ.ۗ قَلِيلًا مَّا تَشْكُرُوْنَ (9) وَقَالُوْآ ءَاِذَا ضَلَلْنَا فِى الْاَرْضِ ءَاِنَّا لَفِيْ خَلْقٍ جَدِيْدٍۗ بَلْ هُمْ بِلِقَآءِ رَبِّهِمْ كٰفِرُوْنَ (10) قُلْ يَتَوَفّٰـكُمْ مَّلَكُ الْمَوْتِ الَّـذِيْ وُكِّلَ بِكُمْ ثُمَّ اِلٰى رَبِّكُمْ تُرْجَعُوْنَ (11) وَلَوْ تَرٰٓى اِذِ الْمُجْرِمُوْنَ نَاكِسُوْ رُءُوْسِهِمْ عِنْدَ رَبِّهِمْۗ رَبَّنَآ اَبْصَرْنَا وَسَمِعْنَا فَارْجِعْنَا نَعْمَلْ صَالِحًا اِنَّا مُوْقِنُوْنَ (12) وَلَوْ شِئْنَا لَاٰ تَيْنَا كُلَّ نَفْسٍ هُدٰىـهَا وَلٰكِنْ حَقَّ الْقَوْلُ مِنِّيْ لَاَمْلَئَنَّ جَهَنَّمَ مِنَ الْجِنَّةِ وَالنَّاسِ اَجْمَعِيْنَ (13) فَذُوْقُوْا بِمَا نَسِيْتُمْ لِقَآءَ يَوْمِكُمْ هٰذَاۚ اِنَّا نَسِيْنٰكُمْ وَذُوْقُوْا عَذَابَ الْخُلْدِ بِمَا كُنْتُمْ تَعْمَلُوْنَ (14) اِنَّمَا يُؤْمِنُ بِاٰيٰـتِنَا الَّـذِيْنَ اِذَا ذُ كِّرُوْا بِهَا خَرُّوْا سُجَّدًا وَّسَبَّحُوْا بِحَمْدِ رَبِّهِمْ وَهُمْ لَا يَسْتَكْبِرُوْنَ ۩ (15) تَتَجَافٰى جُنُوبُهُمْ عَنِ الْمَضَاجِعِ يَدْعُوْنَ رَبَّهُمْ خَوْفًا وَطَمَعًا.ۖ وَّمِمَّا رَزَقْنٰهُمْ يُنْفِقُوْنَ (16) فَلَا تَعْلَمُ نَفْسٌ مَّآ اُخْفِيَ لَهُمْ مِنْ قُرَّةِ اَعْيُنٍۚ جَزَآءً بِمَا كَانُوْا يَعْمَلُوْنَ (17) اَفَمَنْ كَانَ مُؤْمِنًا كَـمَنْ كَانَ فَاسِقًا.ۗ لَا يَسْتَوٗنَ (18) اَمَّا الَّذِيْنَ اٰمَنُوْا وَعَمِلُوا الصّٰلِحٰتِ فَلَهُمْ جَنّٰتُ الْمَأْوٰىۖ نُزُلًا بِمَا كَانُوْا يَعْمَلُوْنَ (19) وَاَمَّا الَّـذِيْنَ فَسَقُوْا فَمَأْوٰىـهُمُ النَّارُ كُلَّمَآ اَرَادُوْٓا اَنْ يَّخْرُجُوْا مِنْهَآ اُعِيْدُوْا فِيْهَا وَقِيْلَ لَهُمْ ذُوْقُوْا عَذَابَ النَّارِ الَّـذِيْ كُنْتُمْ بِهٖ تُكَذِّبُوْنَ (20) وَلَنُذِيْقَنَّهُمْ مِّنَ الْعَذَابِ الْاَدْنٰى دُوْنَ الْعَذَابِ الْاَ كْبَرِ لَعَلَّهُمْ يَرْجِعُوْنَ (21) وَمَنْ اَظْلَمُ مِمَّنْ ذُ كِّـرَ بِاٰيٰتِ رَبِّهٖ ثُمَّ أَعْرَضَ عَنْهَا.ۗ اِنَّا مِنَ الْمُجْرِمِيْنَ مُنْتَقِمُوْنَ (22) وَلَقَدْ اٰتَيْنَا مُوْسَى الْـكِتٰبَ فَلَا تَكُنْ فِيْ مِرْيَةٍ مِّنْ لِّقَآئِهٖ وَجَعَلْنٰهُ هُدًى لِبَنِيْٓ اِسْرَآءِيْلَ.ۚ (23) وَجَعَلْنَا مِنْهُمْ اَئِمَّةً يَّهْدُوْنَ بِاَمْرِنَا لَمَّا صَبَرُوْاۗ وَكَانُوْا بِاٰيٰـتِنَا يُوْقِنُوْنَ (24) اِنَّ رَبَّكَ هُوَ يَفْصِلُ بَيْنَهُمْ يَوْمَ الْقِيٰمَةِ فِيْمَا كَانُوْا فِيْهِ يَخْتَلِفُوْنَ (25) اَوَلَمْ يَهْدِ لَهُمْ كَـمْ اَهْلَـكْنَا مِنْ قَبْلِهِمْ مِّنَ الْقُرُوْنِ يَمْشُوْنَ فِيْ مَسٰكِنِهِمْۗ اِنَّ فِيْ ذٰلِكَ لَاٰيٰتٍۗ اَفَلَا يَسْمَعُوْنَ (26) اَوَلَمْ يَرَوْا اَنَّا نَسُوْقُ الْمَآءَ اِلَى الْاَرْضِ الْجُرُزِ فَنُخْرِجُ بِهٖ زَرْعًا تَأْ كُلُ مِنْهُ اَنْعَامُهُمْ وَاَنْفُسُهُمْۗ اَفَلَا يُبْصِرُوْنَ (27) وَيَقُوْلُوْنَ مَتٰى هٰذَا الْفَتْحُ اِنْ كُنْتُمْ صٰدِقِيْنَ (28) قُلْ يَوْمَ الْفَتْحِ لَا يَنْفَعُ الَّـذِيْنَ كَفَرُوْٓا اِيْمَانُهُمْ وَلَا هُمْ يُنْظَرُوْنَ (29) فَاَعْرِضْ عَنْهُمْ وَانْتَظِرْ اِنَّهُمْ مُّنْتَظِرُوْنَ (30)ا",
              latinDoa: " ",
              bacaDoa: " "));
      boxDoa.put(
          140,
          Doa(
              id: 140,
              namaDoa: " Rokaat 4 Sholat Khifdzi (Surat Al Mulk)",
              arabDoa:
                  " <p align=center>بسم الله الرحمن الرحيم</p> تَبَارَكَ الَّـذِيْ بِيَدِهِ الْمُلْكُ.ۖ وَهُوَ عَلٰى كُلِّ شَيْءٍ قَدِيْرٌۙ (1) الَّـذِيْ خَلَقَ الْمَوْتَ وَالْحَيٰوةَ لِيَبْلُوَكُمْ اَيُّكُمْ اَحْسَنُ عَمَلًاۗ وَهُوَ الْعَزِيْزُ الْغَفُوْرُۙ (2) الَّـذِيْ خَلَقَ سَبْعَ سَمٰوٰتٍ طِبَاقًا.ۗ مَا تَرٰى فِيْ خَلْقِ الرَّحْمٰنِ مِنْ تَفٰوُتٍۗ فَارْجِعِ الْبَصَرَۙ هَلْ تَرٰى مِنْ فُطُوْرٍ (3) ثُمَّ ارْجِعِ الْبَصَرَ كَرَّتَيْنِ يَنْقَلِبْ اِلَيْكَ الْبَصَرُ خَاسِئًا وَّهُوَ حَسِيْرٌ (4) وَلَقَدْ زَيَّنَّا السَّمَآءَ الدُّنْيَا بِمَصَابِيْحَ وَجَعَلْنٰهَا رُجُوْمًا لِلشَّيٰطِيْنِ وَاَعْتَدْنَا لَهُمْ عَذَابَ السَّعِيْرِ (5) وَلِلَّـذِيْنَ كَفَرُوْا بِرَبِّهِمْ عَذَابُ جَهَنَّمَۗ وَبِئْسَ الْمَصِيرُ (6) اِذَآ اُلْقُوْا فِيْهَا سَمِعُوْا لَهَا شَهِيْقًا وَهِيَ تَفُوْرُۙ (7)  تَكَادُ تَمَيَّزُ مِنَ الْغَيْظِۗ كُلَّمَآ اُلْقِيَ فِيْهَا فَوْجٌ سَاَلَهُمْ خَزَنَتُهَآ اَلَمْ يَأْتِكُـمْ نَذِيْرٌ (8) قَالُوْا بَلٰى قَدْ جَآءَنَا نَذِيْرٌۙ فَكَذَّبْنَا وَقُلْنَا مَا نَزَّلَ اللّٰهُ مِنْ شَيْءٍۖ اِنْ اَنْتُمْ اِلَّا فِيْ ضَلٰلٍ كَبِيْرٍ (9) وَقَالُوْا لَوْ كُنَّا نَسْمَعُ اَوْ نَعْقِلُ مَا كُنَّا فِيْٓ اَصْحٰبِ السَّعِيْرِ (10) فَاعْتَرَفُوْا بِذَنْبِهِمْ فَسُحْقًا لِّاَصْحٰبِ السَّعِيْرِ (11) اِنَّ الَّـذِيْنَ يَخْشَوْنَ رَبَّهُمْ بِالْغَيْبِ لَهُمْ مَغْفِرَةٌ وَأَجْرٌ كَبِيْرٌ (12) وَاَسِرُّوْا قَوْلَكُمْ اَوِ اجْهَرُوْا بِهٖۗ اِنَّهٗ عَلِيْمٌ بِذَاتِ الصُّدُوْرِ (13) اَلَا يَعْلَمُ مَنْ خَلَقَۗ وَهُوَ اللَّـطِيْفُ الْخَبِيْرُ (14) هُوَ الَّـذِيْ جَعَلَ لَكُمُ الْاَرْضَ ذَلُوْلًا فَامْشُوْا فِيْ مَنَاكِبِهَا وَكُلُوْا مِنْ رِّزْقِهٖۗ وَاِلَيْهِ النُّشُوْرُ (15) ءَاَمِنْتُمْ مَّنْ فِى السَّمَآءِ اَنْ يَخْسِفَ بِكُمُ الْاَرْضَ فَاِذَا هِيَ تَمُوْرُۙ (16) اَمْ اَمِنْتُمْ مَّنْ فِى السَّمَآءِ اَنْ يُّرْسِلَ عَلَيْكُمْ حَاصِبًا.ۗ فَسَتَعْلَمُوْنَ كَيْفَ نَذِيْرِ (17) وَلَقَدْ كَذَّبَ الَّـذِيْنَ مِنْ قَبْلِهِمْ فَكَيْفَ كَانَ نَكِيْرِ (18) اَوَلَمْ يَرَوْا اِلَى الطَّيْرِ فَوْقَهُمْ صٰٓفّٰتٍ وَّيَقْبِضْنَۘ مَا يُمْسِكُهُنَّ اِلَّا الرَّحْمٰنُۗ اِنَّهٗ بِكُلِّ شَيْءٍ بَصِيْرٌ (19) اَمَّنْ هٰذَا الَّـذِيْ هُوَ جُنْدٌ لَّـكُمْ يَنْصُرُكُمْ مِّنْ دُوْنِ الرَّحْمٰنِۗ اِنِ الْكٰفِرُوْنَ اِلَّا فِيْ غُرُوْرٍۚ (20) اَمَّنْ هٰذَا الَّـذِيْ يَرْزُقُكُمْ اِنْ اَمْسَكَ رِزْقَهٗ.ۚ بَلْ لَّـجُّوْا فِيْ عُتُوٍّ وَّنُفُوْرٍ (21) اَفَمَنْ يَّمْشِيْ مُكِبًّا عَلٰى وَجْهِهٖٓ اَهْدٰىٓ اَمَّنْ يَّمْشِيْ سَوِيًّا عَلٰى صِرَاطٍ مُّسْتَقِيْمٍ(22)  قُلْ هُوَ الَّـذِيْٓ اَنْشَاَ كُمْ وَجَعَلَ لَكُمُ السَّمْعَ وَالْاَبْصَارَ وَالْاَفْئِدَةَ.ۗ قَلِيْلًا مَّا تَشْكُرُوْنَ (23) قُلْ هُوَ الَّذِيْ ذَرَاَ كُمْ فِي الْاَرْضِ وَاِلَيْهِ تُحْشَرُوْنَ (24) وَيَقُوْلُوْنَ مَتٰى هٰذَا الْوَعْدُ اِنْ كُنْتُمْ صٰدِقِيْنَ (25) قُلْ اِنَّمَا الْعِلْمُ عِنْدَ اللّٰهِۖ وَاِنَّمَا اَنَاْ نَذِيْرٌ مُّبِيْنٌ (26) فَلَمَّا رَاَوْهُ زُلْفَةً سِيْٓئَتْ وُجُوْهُ الَّـذِيْنَ كَفَرُوْا وَقِيْلَ هٰذَا الَّـذِيْ كُنْتُمْ بِهٖ تَدَّعُوْنَ (27) قُلْ اَرَءَيْتُمْ اِنْ اَهْلَكَنِيَ اللّٰهُ وَمَنْ مَّعِيَ اَوْ رَحِمَنَاۙ فَمَنْ يُّجِيْرُ الْكٰـفِرِيْنَ مِنْ عَذَابٍ اَلِيـْمٍ (28) قُلْ هُوَ الرَّحْمٰنُ اٰمَنَّا بِهٖ وَعَلَيْهِ تَوَكَّلْنَا.ۚ فَسَتَعْلَمُوْنَ مَنْ هُوَ فِيْ ضَلٰلٍ مُّبِيْنٍ (29)  قُلْ اَرَءَيْتُمْ اِنْ اَصْبَحَ مَآؤُكُمْ غَوْرًا فَمَنْ يَأْتِيْكُمْ بِمَآءٍ مَّعِيْنٍ (30)ا",
              latinDoa: " ",
              bacaDoa: " "));
      boxDoa.put(
          141,
          Doa(
              id: 141,
              namaDoa: " Doa Sholat Khifdzi",
              arabDoa: " الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ ",
              latinDoa: " لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ",
              bacaDoa:
                  " لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ"));
      boxDoa.put(
          142,
          Doa(
              id: 142,
              namaDoa: " Dzikir Sesudah Sholat",
              arabDoa:
                  " اَسْتَغْفِرُ اللَّه 3<br>اللَّهُمَّ أَنْتَ السَّلَامُ وَمِنْكَ السَّلَامُ تَبَارَكْتَ يَا ذَا الْجَلَالِ وَالْإِكْرَامِ",
              latinDoa:
                  " ASTAGHFIRULLAAH 3X<br>ALLAAHUMMA ANTAS SALAAM WAMINKAS SALAAM TABAARAKTA DZAL JALAALIL WAL IKROOM",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          143,
          Doa(
              id: 143,
              namaDoa: " Dzikir Sesudah Sholat 2",
              arabDoa:
                  " سُبْحَانَ اللَّهِ 10<br> الْحَمْدُ لِلَّهِ 10<br> اللَّهُ أَكْبَرُ 10",
              latinDoa:
                  " Subhanallah 10X<br> Al HAMDULILLAAH 10X<br> ALLAAHU AKBAR 10X",
              bacaDoa: " "));
      boxDoa.put(
          144,
          Doa(
              id: 144,
              namaDoa: " Dzikir Sesudah Sholat 3",
              arabDoa:
                  " لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ اللَّهُمَّ لَا مَانِعَ لِمَا أَعْطَيْتَ وَلَا مُعْطِيَ لِمَا مَنَعْتَ وَلَا يَنْفَعُ ذَا الْجَدِّ مِنْكَ الْجَدُّ",
              latinDoa: " LAA ILAAHA ILLALLAH WAHDAHU LAA SYARIIKA LAHU",
              bacaDoa:
                  " LAHUL MULKU WA LAHUL HAMDU WA HUWA 'ALAA KULLI SYAI'IN QADIIR. ALLAHUMMA LAA MAANI'A LIMA A'THAITA WA LAA MU'THIYA LIMA MANA'TA WA LAA YANFA'U DZAL JADDI MINKAL JADDU"));
      boxDoa.put(
          145,
          Doa(
              id: 145,
              namaDoa: " Dzikir Sesudah Sholat 4",
              arabDoa:
                  " لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ لَا إِلَهَ إِلَّا اللَّهُ وَلَا نَعْبُدُ إِلَّا إِيَّاهُ لَهُ النِّعْمَةُ وَلَهُ الْفَضْلُ وَلَهُ الثَّنَاءُ الْحَسَنُ لَا إِلَهَ إِلَّا اللَّهُ مُخْلِصِينَ لَهُ الدِّينَ وَلَوْ كَرِهَ الْكَافِرُونَ",
              latinDoa: " LAA ILAAHA ILLALLAAH WAHDAHUU LAA SYARIIKA LAHU",
              bacaDoa:
                  " LAHUL MULKU WALAHUL HAMDU WAHUWA 'ALAA KULLI SYAI'IN QADIIR"));
      boxDoa.put(
          146,
          Doa(
              id: 146,
              namaDoa: " Dzikir Sesudah Sholat 5",
              arabDoa:
                  " لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ يُحْيِي وَيُمِيتُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ",
              latinDoa: " LAA ILAAHA ILLALLAAHU WAHDAHU LAA SYARIIKA LAH",
              bacaDoa:
                  " LAHUL MULKU WA LAHUL HAMDU YUHYII WA YUMIITU WA HUWA 'ALAA KULLI SYAI-IN QADIIR"));
      boxDoa.put(
          147,
          Doa(
              id: 147,
              namaDoa: " Doa Sebelum Salam",
              arabDoa:
                  " اللَّهُمَّ إِنِّي ظَلَمْتُ نَفْسِي ظُلْمًا كَثِيرًا وَلَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ فَاغْفِرْ لِي مَغْفِرَةً مِنْ عِنْدِكَ وَارْحَمْنِي إِنَّكَ أَنْتَ الْغَفُورُ الرَّحِيمُ",
              latinDoa:
                  " ALLAHUMMA INNII ZHALAMTU NAFSII ZHULMAN KATSIIRAN WALAA YAGHFIRUDZDZUNUUBA ILLAA ANTA FAHGHFIRLII MAGHFIRATAN MIN 'INDIKA  WARHAMNI INNAKA ANTAL GHAFUURURRAHIIM",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          148,
          Doa(
              id: 148,
              namaDoa: " Mendoakan Orang yang Akan Ditinggal Bepergian",
              arabDoa:
                  " أَسْتَوْدِعُكَ اللَّهَ الَّذِي لَا تَضِيعُ وَدَائِعُهُ",
              latinDoa: " ",
              bacaDoa:
                  " Aku menitipkan dirimu kepada Allah yang tidak akan menyia-nyiakan barang titipan-Nya"));
      boxDoa.put(
          149,
          Doa(
              id: 149,
              namaDoa: " Doa Minta Keselamatan",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَدْمِ وَأَعُوذُ بِكَ مِنْ التَّرَدِّي وَأَعُوذُ بِكَ مِنْ الْغَرَقِ وَالْحَرَقِ وَالْهَرَمِ وَأَعُوذُ بِكَ أَنْ يَتَخَبَّطَنِي الشَّيْطَانُ عِنْدَ الْمَوْتِ وَأَعُوذُ بِكَ أَنْ أَمُوتَ فِي سَبِيلِكَ مُدْبِرًا وَأَعُوذُ بِكَ أَنْ أَمُوتَ لَدِيغًا",
              latinDoa:
                  " ALLAAHUMMA INNII A'UUDZU BIKA MINAL HADMI WA A'UUDZU BIKA MINAT TARADDII",
              bacaDoa: " WA A'UUDZU BIKA MINAL GHARAQI"));
      boxDoa.put(
          150,
          Doa(
              id: 150,
              namaDoa: " Bertempat di tempat baru",
              arabDoa:
                  "  يَا أَرْضُ رَبِّي وَرَبُّكِ اللَّهُ أَعُوذُ بِاللَّهِ مِنْ شَرِّكِ وَشَرِّ مَا فِيكِ وَشَرِّ مَا خُلِقَ فِيكِ وَمِنْ شَرِّ مَا يَدِبُّ عَلَيْكِ وَأَعُوذُ بِاللَّهِ مِنْ أَسَدٍ وَأَسْوَدَ وَمِنَ الْحَيَّةِ وَالْعَقْرَبِ وَمِنْ سَاكِنِ الْبَلَدِ وَمِنْ وَالِدٍ وَمَا وَلَدَ",
              latinDoa: " Ya ardu",
              bacaDoa: " Rabbi wa Rabbuk-illahu"));
      boxDoa.put(
          151,
          Doa(
              id: 151,
              namaDoa: " Niat Haji",
              arabDoa:
                  " <ol><li>لَبَّيْكَ اللَّهُمَّ حَجًّا</li><li> لَبَّيْكَ بِحَجَّةٍ </li><li>لَبَّيْكَ اللَّهُمَّ لَبَّيْكَ بِالْحَجِّ</li></ol>",
              latinDoa:
                  " <ol><li>Labbaikallahumma hajjan</li><li>labbaika bihajjatin</li><li>Labbaikallahumma labbaika bihajjatin</li></ol>",
              bacaDoa: " "));
      boxDoa.put(
          152,
          Doa(
              id: 152,
              namaDoa: " Niat Umroh",
              arabDoa:
                  " <ol><li>لَبَّيْكَ اللَّهُمَّ عُمْرَةً</li><li>  لَبَّيْكَ بِعُمْرَةٍ </li></ol>",
              latinDoa:
                  " <ol><li>Labbaikallahumma 'umratan</li><li>labbaika bi 'umrah</li></ol>",
              bacaDoa: " "));
      boxDoa.put(
          153,
          Doa(
              id: 153,
              namaDoa: " Talbiyah",
              arabDoa:
                  " لَبَّيْكَ اللَّهُمَّ لَبَّيْكَ، لَبَّيْكَ لاَ شَرِيكَ لَكَ لَبَّيْكَ، إِنَّ الْحَمْدَ وَالنِّعْمَةَ لَكَ وَالْمُلْكَ، لاَ شَرِيكَ لَكَ",
              latinDoa:
                  " Labbaikallahumma labbaik. Labbaika laa syariika laka labbaik. Innal hamda wan ni'mata laka wal mulk. Laa syariika lak",
              bacaDoa:
                  " Aku datang memenuhi panggilanMu ya Allah. Aku datang memenuhi panggilanMu tidak ada sekutu bagiMu. Sesungguhnya segala puji"));
      boxDoa.put(
          154,
          Doa(
              id: 154,
              namaDoa: " Doa Menuju Masjid 2",
              arabDoa:
                  " اللَّهُمَّ اجْعَلْ فِي قَلْبِي نُورًا وَفِي لِسَانِي نُورًا وَاجْعَلْ فِي سَمْعِي نُورًا وَاجْعَلْ فِي بَصَرِي نُورًا وَاجْعَلْ مِنْ خَلْفِي نُورًا وَمِنْ أَمَامِي نُورًا وَاجْعَلْ مِنْ فَوْقِي نُورًا وَمِنْ تَحْتِي نُورًا اللَّهُمَّ أَعْطِنِي نُورًا",
              latinDoa:
                  " ALLAHUMMAJ 'AL FII QALBII NUURAN WA FII LISAANII NUURAN WAJ'AL FII SAM'I NUURAN WAJ'AL FII BASHARII NUURAN WAJ'AL MIN KHALFII NUURAN",
              bacaDoa: " WA MIN AMAAMII NUURAN"));
      boxDoa.put(
          155,
          Doa(
              id: 155,
              namaDoa: " Melihat Ka'bah",
              arabDoa:
                  " اللَّهُمَّ زِدْ هَذَا الْبَيْتَ تَشْرِيفًا وَتَعْظِيمًا، وَتَكْرِيمًا وَمَهَابَةً، وَزِدْ مَنْ شَرَّفَهُ وَكَرَّمَهُ مِمَّنْ حَجَّهُ أَوِ اعْتَمَرَه تَشْرِيفًا وَتَكْرِيمًا وَتَعْظِيمًا وَبِرًّا",
              latinDoa:
                  " ALLAHUMMA ZID HAAZAL BAITA TASYRIIFAN WATA'ZIIMAN WATAKRIIMAN WAMAHAABATAN. WAZID MAN SYARROFAHU WA 'ADZ-DZOMAHU WA KARROMAHU MIMMAN HAJJAHU AWI'TAMAROHU TASYRIIFAN WA TA'ZIIMAN WA TAKRIIMAN WABIRRON",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          156,
          Doa(
              id: 156,
              namaDoa: " Melihat Ka'bah 2",
              arabDoa:
                  " اللَّهُمَّ زِدْ بَيْتَكَ هَذَا تَشْرِيفًا وَتَعْظِيمًا، وَتَكْرِيمًا وَبِرًّا وَمَهَابَةً",
              latinDoa: " ",
              bacaDoa: " "));
      boxDoa.put(
          157,
          Doa(
              id: 157,
              namaDoa: " Doa Mengusap / Isyarat hajar aswad dan rukun yaman",
              arabDoa: "  بِسْمِ اللهِ ، وَاللهُ أَكْبَر",
              latinDoa: " ",
              bacaDoa: " Dengan menyebut nama Allah"));
      boxDoa.put(
          158,
          Doa(
              id: 158,
              namaDoa: " Bacaan thowaf Dari hajar aswad - rukun yaman",
              arabDoa:
                  " سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ وَلَا إِلَهَ إِلَّا اللَّهُ وَاللَّهُ أَكْبَرُ وَلَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ",
              latinDoa:
                  " Subhanallahu walhamdulillahi Laa ilaaha Illallah wAllahu Akbar wa Laa haula wa laa quwwata illaa billaah",
              bacaDoa:
                  " Maha Suci Allah dan Segala puji bagi Allah dan Tiada Tuhan kecuali Allah dan Allah Maha Besa dan Tiada daya dan upaya kecuali dari Allah"));
      boxDoa.put(
          159,
          Doa(
              id: 159,
              namaDoa: " Bacaan thowaf Dari rukun yaman - hajar aswad",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَسْأَلُكَ الْعَفْوَ وَالْعَافِيَةَ فِي الدُّنْيَا وَالْآخِرَةِ، رَبَّنَا آتِنَا فِي الدُّنْيَا حَسَنَةً، وَفِي الْآخِرَةِ حَسَنَةً، وَقِنَا عَذَابَ النَّارِ",
              latinDoa:
                  " ALLAHUMMA INNI AS`ALUKA AFWA WAL AFIYAH FIDUNYA WAL AKHIRAH RABBANA ATINA FIDUNYA HASANAH WAFIL AKHIRATI HASANAH WAQINA ADZABAN NAAR",
              bacaDoa:
                  " Ya Allah aku berharap kemaafan dan kesehatan dari di dunia dan akhirat wahai Rabb kami"));
      boxDoa.put(
          160,
          Doa(
              id: 160,
              namaDoa: " Bacaan sebelum sholat di belakang maqom ibrahim",
              arabDoa:
                  " أَعُوذُ بِاللَّهِ مِنْ الشَّيْطَانِ الرَّجِيمِ بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيْم وَاتَّخِذُوا مِنْ مَقَامِ إِبْرَاهِيمَ مُصَلًّى",
              latinDoa:
                  " A'udzu billahi minasysyaithani Rajim Bismillahi rahmaanir rahiim wattakhidzu min maqomi ibrohiima musholla",
              bacaDoa:
                  " Aku berlindung kepada Allah dari syaitan yang terkutuk"));
      boxDoa.put(
          161,
          Doa(
              id: 161,
              namaDoa: " Doa setelah sholat di belakang maqom Ibrahim",
              arabDoa:
                  " اللَّهُمَّ أَنْتَ تَعْلَمُ سِرِّى وَعَلَانِيَّتِى فَاقْبَلْ مَعْذِرَتِى وَتَعْلَمُ حَاجَتِى فَأَعْطِنِى سُؤْلىِ وَتَعْلَمُ مَاعِنْدِى فَاغْفِرْلىِ ذُنُوْبىِ اللَّهُمَّ إِنِّي أَسْأَلُكَ إِيْمَانًا يُبَاهِى قَلْبِى وَيَقِيْنًا صَادِقًا حَتَّى أَعْلَمَ أَنَّهُ لَايُصِيْبُنِى إِلَّا مَا كَتَبْتَ لِى وَرَضِّنِى بِقَضَائِكَ",
              latinDoa: " ",
              bacaDoa: " "));
      boxDoa.put(
          162,
          Doa(
              id: 162,
              namaDoa: " Doa ketika akan naik bukit shofa marwa",
              arabDoa:
                  " أَعُوذُ بِاللَّهِ مِنْ الشَّيْطَانِ الرَّجِيمِ بِسْمِ اللهِ الرَّحْمٰنِ الرَّحِيْم إِنَّ الصَّفَا وَالْمَرْوَةَ مِنْ شَعَائِرِ اللَّه",
              latinDoa:
                  " A'udzu billahi minasysyaithani Rajim Bismillahi rahmaanir rahiim inna shoffa wal marwata min sya'airillah",
              bacaDoa:
                  " Aku berlindung kepada Allah dari syaitan yang terkutuk"));
      boxDoa.put(
          163,
          Doa(
              id: 163,
              namaDoa: " Doa di atas bukit shofa marwa",
              arabDoa: " اللَّهُ أَكْبَرُ ",
              latinDoa: "اللَّهُ أَكْبَرُ ",
              bacaDoa: "اللَّهُ أَكْبَرُ "));
      boxDoa.put(
          164,
          Doa(
              id: 164,
              namaDoa:
                  " Doa ketika berlari kecil diantara bukit shofa dan marwa (daerah bekas banjir - diberi tanda lampu hijau)",
              arabDoa:
                  " رَبِّ اغْفِرْ لِي وَارْحَمْ وَأَنْتَ الْأَعَزُّ الْأَكْرَم",
              latinDoa: " ",
              bacaDoa: " "));
      boxDoa.put(
          165,
          Doa(
              id: 165,
              namaDoa: " Doa Ketika Wukuf di Arafah",
              arabDoa:
                  " اللَّهُمَّ لَكَ الْحَمْدُ كَالَّذِي تَقُولُ وَخَيْرًا مِمَّا نَقُولُ اللَّهُمَّ لَكَ صَلَاتِي وَنُسُكِي وَمَحْيَايَ وَمَمَاتِي وَإِلَيْكَ مَآبِي وَلَكَ رَبِّ تُرَاثِي اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ عَذَابِ الْقَبْرِ وَوَسْوَسَةِ الصَّدْرِ وَشَتَاتِ الْأَمْرِ اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ مَا تَجِيءُ بِهِ الرِّيحُ",
              latinDoa:
                  " ALLAAHUMMA LAKAL HAMDU KALLADZII TAQUULU WA KHAIRAN MIMMAA NAQUULU",
              bacaDoa:
                  " ALLAAHUMMA LAKA SHALAATII, my sacrifice, my living and my dying. And to You is my return, and to You, my Lord, belongs my inheritance. O Allah, indeed, I seek refuge in You from the punishment of the grave, the whispering of the chest, and the dividing of the affair. O Allah, indeed, I seek refuge in You from the evil of what the wind brings, , , H.R. Tirmidzi,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,"));
      boxDoa.put(
          166,
          Doa(
              id: 166,
              namaDoa: " Doa Pulang Haji",
              arabDoa:
                  " اللَّهُ أَكْبَرُ3<br> لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ آيِبُونَ تَائِبُونَ عَابِدُونَ سَاجِدُونَ لِرَبِّنَا حَامِدُونَ صَدَقَ اللَّهُ وَعْدَهُ وَنَصَرَ عَبْدَهُ وَهَزَمَ الْأَحْزَابَ وَحْدَهُ",
              latinDoa:
                  " ALLAHU AKBAR 3X<br>Laa ilaaha illallahu wahdahu laa syariika lahu",
              bacaDoa:
                  " lahul mulku wa lahul hamdu wa huwa 'alaa kulli syai'in qadiir. Aayibuuna taa'buuna 'aabiduuna saajiduuna li rabbinaa haamiduun. Shadaqallah wa'dahu wa nashara 'abdahu wa hazamal ahzaaba wahdah"));
      boxDoa.put(
          167,
          Doa(
              id: 167,
              namaDoa: " Minum Air Zam Zam",
              arabDoa:
                  " اللَّهُمَّ إِنِّي أَسْأَلُكَ عِلْمًا نَافِعًا، وَرِزْقًا وَاسِعًا، وَشِفَاءً مِنْ كُلِّ دَاء",
              latinDoa: " ",
              bacaDoa: " "));
      boxDoa.put(
          168,
          Doa(
              id: 168,
              namaDoa: " Doa Pengendalian Diri",
              arabDoa:
                  " اللَّهُمَّ فَاطِرَ السَّمَوَاتِ وَالْأَرْضِ، عَالِمَ الْغَيْبِ وَالشَّهَادَةِ، رَبَّ كُلِّ شَيْءٍ وَمَلِيكَهُ، أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا أَنْتَ، أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي، وَشَرِّ الشَّيْطَانِ وَشِرْكِهِ",
              latinDoa:
                  " Allaahumma Faathiras samaawaati wal-ardhi ‘Aalimal ghaibi was syahadah",
              bacaDoa:
                  " Rabbi kulli syaiin wamaliikah. Asyhadu an laa Ilaaha illaa Anta. Aa’uudzu biKa min syarri nafsii"));
      boxDoa.put(
          169,
          Doa(
              id: 169,
              namaDoa: " Doa Ketika Berperang",
              arabDoa:
                  " اللَّهُمَّ أَنْتَ عَضُدِي وَأَنْتَ نَصِيرِي وَبِكَ أُقَاتِلُ",
              latinDoa:
                  " ALLAHUMMA ANTA 'ADLUDII WA ANTA NASHIIRII WABIKA UQAATILU",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          170,
          Doa(
              id: 170,
              namaDoa: " Doa Terhindar dari Bahaya",
              arabDoa:
                  " أَعُوذُ بِكَلِمَاتِ اللَّهِ التَّامَّاتِ مِنْ شَرِّ مَا خَلَقَ",
              latinDoa:
                  " A'UUDZU BIKALIMAATILLAHIT TAAMMAH MIN SYARRI MAA KHALAQ",
              bacaDoa:
                  " aku berlindung kepada kalimat-kalimat Allah yang sempurna dari kejahatan para makhluk yang telah Dia ciptakan"));
      boxDoa.put(
          171,
          Doa(
              id: 171,
              namaDoa: " Doa yang di Sukai Nabi Muhammad SAW",
              arabDoa:
                  " سُبْحَانَ اللَّهِ وَالْحَمْدُ لِلَّهِ وَلَا إِلَهَ إِلَّا اللَّهُ وَاللَّهُ أَكْبَرُ",
              latinDoa:
                  " SUBHAANALLAHI WAL HAMDULILLAHI WALAA ILAAHA ILLA ALLAH WA ALLAHU AKBAR",
              bacaDoa: " maha suci Allah"));
      boxDoa.put(
          172,
          Doa(
              id: 172,
              namaDoa: " Doa agar pintu langit dibuka",
              arabDoa:
                  " اللَّهُ أَكْبَرُ كَبِيرًا وَالْحَمْدُ لِلَّهِ كَثِيرًا وَسُبْحَانَ اللَّهِ بُكْرَةً وَأَصِيلًا",
              latinDoa:
                  " ALLAHU AKBAR KABIRAN WAL HAMDULILLAHI KATSIRAN WASUBHAANALLAHI BUKRATAN WA`ASHIILAA",
              bacaDoa: " Allah Maha Besar dengan besar"));
      boxDoa.put(
          173,
          Doa(
              id: 173,
              namaDoa: " Doa agar mengantarkan ke pintu surga",
              arabDoa: " لَا حَوْلَ وَلَا قُوَّةَ إِلَّا بِاللَّهِ",
              latinDoa: " LAA HAULA WALAA QUWWATA ILLA BILLAH",
              bacaDoa: " Tidak ada daya dan upaya kecuali milik Allah"));
      boxDoa.put(
          174,
          Doa(
              id: 174,
              namaDoa: " Doa agar mati dalam keadaan fitrah",
              arabDoa:
                  " اللَّهُمَّ أَسْلَمْتُ وَجْهِي إِلَيْكَ وَفَوَّضْتُ أَمْرِي إِلَيْكَ وَأَلْجَأْتُ ظَهْرِي إِلَيْكَ رَغْبَةً وَرَهْبَةً إِلَيْكَ لَا مَلْجَأَ وَلَا مَنْجَا مِنْكَ إِلَّا إِلَيْكَ آمَنْتُ بِكِتَابِكَ الَّذِي أَنْزَلْتَ وَنَبِيِّكَ الَّذِي أَرْسَلْتَ",
              latinDoa: " ALLAAHUMMA ASLAMTU WAJHII ILAIKA",
              bacaDoa:
                  " WA ASLAMTU WAJHII ILAIKA WA FAWWADHTU AMRII ILAIKA RAGHBATAN WA RAHBATAN ILAIKA"));
      boxDoa.put(
          175,
          Doa(
              id: 175,
              namaDoa: " Tasbih yang lebih banyak pahalanya",
              arabDoa: " سُبْحَانَ اللَّهِ عَدَدَ خَلْقِهِ",
              latinDoa: " SUBHAANALLAAH",
              bacaDoa: " 'ADADA KHALQIHI"));
      boxDoa.put(
          176,
          Doa(
              id: 176,
              namaDoa: " Nama Allah yang Agung",
              arabDoa:
                  " اللَّهُمَّ لَا إِلَهَ إِلَّا أَنْتَ الْمَنَّانُ بَدِيعُ السَّمَوَاتِ وَالْأَرْضِ ذَا الْجَلَالِ وَالْإِكْرَامِ",
              latinDoa: " ALLAAHUMMA LAA ILAAHA ILLAA ANTA Al MANNAAN",
              bacaDoa:
                  " BADII'US SAMAAWAATI WAL ARDHI DZAL JALAALI WAL IKRAAM"));
      boxDoa.put(
          177,
          Doa(
              id: 177,
              namaDoa: " Doa agar doanya dikabulkan",
              arabDoa: " يَا ذَا الْجَلَالِ وَالْإِكْرَامِ",
              latinDoa: " YAA DZAL JALAALI WAL IKRAAM",
              bacaDoa: " Wahai Dzat yang memiliki kebesaran dan kemuliaan"));
      boxDoa.put(
          178,
          Doa(
              id: 178,
              namaDoa: " Doa agar diampuni Allah",
              arabDoa:
                  "  لَا إِلَهَ إِلَّا اللَّهُ الْعَلِيُّ الْعَظِيمُ لَا إِلَهَ إِلَّا اللَّهُ الْحَلِيمُ الْكَرِيمُ لَا إِلَهَ إِلَّا اللَّهُ سُبْحَانَ اللَّهِ رَبِّ الْعَرْشِ الْعَظِيمِ (الْحَمْدُ لِلَّهِ رَبِّ الْعَالَمِينَ)  ا",
              latinDoa:
                  " LAA ILAAHA ILLALLAAHUL 'ALIYYUL 'AZHIIMI LAA ILAAHA ILLALLAAHUL KARIIM",
              bacaDoa:
                  " LAA ILAAHA ILLALLAAHU SUBHAANLLAAHI RABBIL 'ARSYIL 'AZHIIM (Al HAMDULILLAAHI RABBIL 'AALAMIIN)"));
      boxDoa.put(
          179,
          Doa(
              id: 179,
              namaDoa: " Bacaan Terakhir Nabi Muhammad SAW",
              arabDoa:
                  " اللَّهُمَّ اغْفِرْ لِي وَارْحَمْنِي وَأَلْحِقْنِي بِالرَّفِيقِ الْأَعْلَى",
              latinDoa: " ALLAAHUMMAGHFIRLII",
              bacaDoa: " WARHAMNII"));
      boxDoa.put(
          180,
          Doa(
              id: 180,
              namaDoa: " 40 Juta Kebaikan",
              arabDoa:
                  " أَشْهَدُ أَنْ لَا إِلَهَ إِلَّا اللَّهُ وَحْدَهُ لَا شَرِيكَ لَهُ إِلَهًا وَاحِدًا أَحَدًا صَمَدًا لَمْ يَتَّخِذْ صَاحِبَةً وَلَا وَلَدًا وَلَمْ يَكُنْ لَهُ كُفُوًا أَحَدٌ",
              latinDoa:
                  " ASYHADU AN LAA ILAAHA ILLALLAAHU WAHDAHU LAA SYARIIKALAHU ILAAHAN WAAHIDAN SHAMADAN LAM YATTAKHIDZ SHAAHIBATAN WA LAM YAKUN LAHU KUFUWAN AHAD",
              bacaDoa:
                  " aku bersaksi bahwa tidak ada tuhan yang berhak disembah kecuali Allah semata tidak ada sekutu bagiNya"));
      boxDoa.put(
          181,
          Doa(
              id: 181,
              namaDoa: " Berangkat untuk bepergian",
              arabDoa:
                  " اللَّهُمَّ أَنْتَ الصَّاحِبُ فِي السَّفَرِ وَالْخَلِيفَةُ فِي الْأَهْلِ اللَّهُمَّ اصْحَبْنَا بِنُصْحِكَ وَاقْلِبْنَا بِذِمَّةٍ اللَّهُمَّ ازْوِ لَنَا الْأَرْضَ وَهَوِّنْ عَلَيْنَا السَّفَرَ اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ وَعْثَاءِ السَّفَرِ وَكَآبَةِ الْمُنْقَلَبِ",
              latinDoa:
                  " ALLAAHUMMA ANTASH SHAAHIBU FISSAFARI WAL KHALIIFATU FIL AHLI",
              bacaDoa: " ALLAAHUMMASHHABNAA BINUSHHIKA"));
      boxDoa.put(
          182,
          Doa(
              id: 182,
              namaDoa: " Pulang dari bepergian",
              arabDoa: " آيِبُونَ تَائِبُونَ عَابِدُونَ لِرَبِّنَا حَامِدُونَ",
              latinDoa: " AAYIBUUNA TAAIBUUNA 'AABIDUUNA LIRABBINAA HAAMIDUUN",
              bacaDoa: " Kami kembali"));
      boxDoa.put(
          183,
          Doa(
              id: 183,
              namaDoa: " Ketika orang yang berpergian berpamitan",
              arabDoa:
                  " اسْتَوْدِعْ اللَّهَ دِينَكَ وَأَمَانَتَكَ وَآخِرَ عَمَلِكَ",
              latinDoa:
                  " ISTAUDI'ILLAAHA DIINAKA WA AMAANATAKA WA AAKHIRA 'AMALIKA",
              bacaDoa: " Titipkan kepada Allah agamamu"));
      boxDoa.put(
          184,
          Doa(
              id: 184,
              namaDoa: " istighfar yang paling baik (raja istighfar)",
              arabDoa:
                  "  اللَّهُمَّ أَنْتَ رَبِّي لَا إِلَهَ إِلَّا أَنْتَ خَلَقْتَنِي وَأَنَا عَبْدُكَ وَأَنَا عَلَى عَهْدِكَ وَوَعْدِكَ مَا اسْتَطَعْتُ أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ أَبُوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ وَأَبُوءُ لَكَ بِذَنْبِي فَاغْفِرْ لِي فَإِنَّهُ لَا يَغْفِرُ الذُّنُوبَ إِلَّا أَنْتَ(  أَعُوذُ بِكَ مِنْ شَرِّ مَا صَنَعْتُ) ا",
              latinDoa:
                  " ALLAHUMMA ANTA RABBI LAA ILAAHA ILLA ANTA KHALAQTANI WA ANA 'ABDUKA WA ANA 'ALA 'AHDIKA WA WA'DIKA MASTATHA'TU A'UUDZU BIKA MIN SYARRI MAA SHANA'TU ABUU`U LAKA BIDZANBI WA ABUU`U LAKA BINI'MATIKA 'ALAYYA FAGHFIRLI FA INNAHU LAA YAGHFIRU ADZ DZUNUUBA ILLA ANTA (A'UUDZU BI SYARRI MAA SHANA'TU )",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          185,
          Doa(
              id: 185,
              namaDoa: " doa solawat kepada orang lain",
              arabDoa: " اللَّهُمَّ صَلِّ عَلَى آل  (  فُلَانٍ) ا",
              latinDoa: " ",
              bacaDoa: " "));
      boxDoa.put(
          186,
          Doa(
              id: 186,
              namaDoa: " Doa Minta Hujan",
              arabDoa:
                  " اللَّهُمَّ اسْقِنَا غَيْثًا مُغِيثًا مَرِيئًا مَرِيعاً نَافِعًا غَيْرَ ضَارٍّ عَاجِلاً غَيْرَ آجِلٍ",
              latinDoa: " ",
              bacaDoa: " "));
      boxDoa.put(
          187,
          Doa(
              id: 187,
              namaDoa: " Doa Memindahkan Hujan",
              arabDoa: " اللَّهُمَّ حَوَالَيْنَا وَلَا عَلَيْنَا",
              latinDoa: " ALLAHUMMA HAWAALAINAA WALAA 'ALAINAA",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          188,
          Doa(
              id: 188,
              namaDoa: " Doa yang dibalas ketika bertemu Allah",
              arabDoa:
                  " يَا رَبِّ لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ وَلِعَظِيمِ سُلْطَانِكَ",
              latinDoa:
                  " Ya Rabb! Lakal-hamdu kama yanbagi li-jalali Wajhika wa li'azima sultanika",
              bacaDoa: " Ya Rabb"));
      boxDoa.put(
          189,
          Doa(
              id: 189,
              namaDoa: " Doa Sarah (istri Nabi Ibrahim)",
              arabDoa:
                  " اللَّهُمَّ إِنْ كُنْتُ آمَنْتُ بِكَ وَبِرَسُولِكَ، وَأَحْصَنْتُ فَرْجِي، إِلَّا عَلَى زَوْجِي فَلاَ تُسَلِّطْ عَلَيَّ الكَافِرَ",
              latinDoa: " ",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          190,
          Doa(
              id: 190,
              namaDoa: " Mendoakan Pengantin Baru",
              arabDoa:
                  "  بَارَكَ اللَّهُ لَكَ وَبَارَكَ عَلَيْكَ وَجَمَعَ بَيْنَكُمَا فِي الْخَيْرِ",
              latinDoa:
                  " BARAKALLAH LAKA WA BARAKA 'ALAIKA WA JAMA'A BAINAKUMA FIL KHAIR",
              bacaDoa:
                  " semoga Allah memberi berkah kepadamu dan keberkahan atas pernikahan kamu"));
      boxDoa.put(
          191,
          Doa(
              id: 191,
              namaDoa: " Doa Orang yang Menikah (Suami)/Membeli Kendaraan Baru",
              arabDoa:
                  "  اللَّهُمَّ إِنِّي أَسْأَلُكَ خَيْرَهَا وَخَيْرَ مَا جَبَلْتَهَا عَلَيْهِ وَأَعُوذُ بِكَ مِنْ شَرِّهَا وَمِنْ شَرِّ مَا جَبَلْتَهَا عَلَيْهِ",
              latinDoa:
                  " ALLAAHUMMA INNII AS`ALUKA KHAIRAHAA WA KHAIRA MAA JABALTAHAA 'ALAIHI WA A'UUDZU BIKA MIN SYARRIHAA WA MIN SYARRI MAA JABALTAHAA 'ALAIH",
              bacaDoa: " Ya Allah"));
      boxDoa.put(
          192,
          Doa(
              id: 192,
              namaDoa: " 3 ayat terakhir Surat Al Hasr",
              arabDoa:
                  "  أَعُوذُ بِاللَّهِ السَّمِيعِ الْعَلِيمِ مِنْ الشَّيْطَانِ الرَّجِيمِ 3<br><p align=center> Tiga ayat Terakhir Surat Al Hasr </p> هُوَ اللَّهُ الَّذِي لَا إِلَٰهَ إِلَّا هُوَ ۖ عَالِمُ الْغَيْبِ وَالشَّهَادَةِ ۖ هُوَ الرَّحْمَٰنُ الرَّحِيمُ(22) هُوَ اللَّهُ الَّذِي لَا إِلَٰهَ إِلَّا هُوَ الْمَلِكُ الْقُدُّوسُ السَّلَامُ الْمُؤْمِنُ الْمُهَيْمِنُ الْعَزِيزُ الْجَبَّارُ الْمُتَكَبِّرُ ۚ سُبْحَانَ اللَّهِ عَمَّا يُشْرِكُونَ(23) هُوَ اللَّهُ الْخَالِقُ الْبَارِئُ الْمُصَوِّرُ ۖ لَهُ الْأَسْمَاءُ الْحُسْنَىٰ ۚ يُسَبِّحُ لَهُ مَا فِي السَّمَاوَاتِ وَالْأَرْضِ ۖ وَهُوَ الْعَزِيزُ الْحَكِيمُ (24) ا",
              latinDoa:
                  " A'udzu billahi Sami'il 'Aliim minasysyaithani Rajim 3X HUWALLAHULLADZII LAA ILAAHA ILLAHUWA ‘ALIMUL GHOIBI WASSYAHAADATI HUWARROHMAANURROOHIIM HUWALLAHULLADZII LAA ILAAHA ILLAA HUWAL MALIKUL QUDDUUSUSSALAAMUL MU’MINUL MUHAIMINUL ‘AZIIZUL JABBAARUL MUTAKABBIRU SUBHAANALLAHI ‘AMMAA YUSYRIKUUN HUWALLAHUL KHOOLIQUL BAARI-UL MUSHOWWIRU LAHUL ASMAAA’UL HUSNA YUSABBIHU LAHUU MAA FISSAMAAWAATI WAL ARDHI WAHUWAL ‘AZIIZUL HAKIIM",
              bacaDoa:
                  " Aku berlindung kepada Allah Yang Maha Mendengar dan Mengetahui dari syaitan yang terkutuk"));
      boxDoa.put(
          193,
          Doa(
              id: 193,
              namaDoa: " Doa agar Diberi Kerajaan",
              arabDoa:
                  " اللَّهُمَّ مَالِكَ الْمُلْكِ تُؤْتِي الْمُلْكَ مَنْ تَشَاءُ، وَتَنْزِعُ الْمُلْكَ مِمَّنْ تَشَاءُ، وَتُعِزُّ مَنْ تَشَاءُ، وَتُذِلُّ مَنْ تَشَاءُ بِيَدِكَ الْخَيْرُ إِنَّكَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، تُولِجُ اللَّيْلَ فِي النَّهَارِ، وتُولِجُ النَّهَارَ فِي اللَّيْلِ، وَتُخْرِجُ الْحَيَّ مِنَ الْمَيِّتِ، وَتُخْرِجُ الْمَيِّتَ مِنَ الْحَيِّ، وَتَرْزُقُ مَنْ تَشَاءُ بِغَيْرِ حِسَابٍ رَحْمَنَ الدُّنْيَا وَالآخِرَةِ وَرَحِيمَهُمَا، تُعْطِي مَنْ تَشَاءُ مِنْهُمَا، وتَمْنَعُ مَنْ تَشَاءُ، ارْحَمْنِي رَحْمَةً تُغْنِيني بِهَا عَنْ رَحْمَةِ مَنْ سِوَاكَ",
              latinDoa:
                  " Allaahumma Maalikal-mulki tu’thil mulka man tasyaaa’u wa tanzi’ul mulka mimman tasyaaa’u wa tu’izzu man tasyaaa’u wa tudzillu man tasyaaa’u bi Yadikal khairu innaka ‘alla kulli syai’in qadiir. Tuulijullaila finnahaari wa tuulijunnahaara fillaili wa tukhrijul chayya minal mayyiti wa tukhrijul mayyita minal chayyi wa tarzuqu man tasyaaa’u bi ghoii chisaab. Rohmaanad dunyaa wal aakhirati wa Rohiimahumaa. Tu’thii man tasyaaa’u min humaa wa tamna’u man tasyaa’urhamnii rahmatan tughniinii bihaa ‘an rahmati man siwaaK",
              bacaDoa: " Ya Allah Raja segala kerajaan"));
      boxDoa.put(
          194,
          Doa(
              id: 194,
              namaDoa: " Doa Setelah Baca Al Qur'an",
              arabDoa:
                  " اللَّهُمَّ ارْحَمْنَابِالْقُرْأَنِ وَاجْعَلْهُ لَنَا إِمَامًا وَهُدًى وَنُوْرًا وَرَحْمَةً اللَّهُمَّ ذَكِّرْنَا مِنْهُ مَا نَسِيْىنَا وَعَلِّمْنَا مِنْهُ مَا جَهِلْنَا وَارْزُقْنَا تِلَاوَتَهُ أَنَاءَاللَّيْلِ وَالنَّهَارِ وَاجْعَلْهُ لَنَا حُجَّةً يَا رَبَّ الْعَالَمِيْنَ",
              latinDoa:
                  " Doa setelah membaca Al Qur'an ini hanyalah susunan Doa",
              bacaDoa:
                  " untuk rujukan hadistnya kami belum menjumpainya. Adapun doa Setelah membaca Al Qur'an sebenarnya bisa apa aja"));
    } else {}
  }
}
