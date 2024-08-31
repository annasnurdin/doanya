import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:myapp/model/boxes.dart';
import 'package:myapp/model/doa.dart';
import 'package:myapp/theme/colors.dart';

class DetailsDoa extends StatefulWidget {
  const DetailsDoa({super.key});

  @override
  State<DetailsDoa> createState() => _DetailsDoaState();
}

class _DetailsDoaState extends State<DetailsDoa> {
  @override
  Widget build(BuildContext context) {
    final doaId = ModalRoute.of(context)?.settings.arguments as int;
    final boxDoa = Hive.box<Doa>('doaBox');
    final doa = boxDoa.get(doaId);

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            doa!.namaDoa,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          backgroundColor: primaryColor,
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 30),
              Text(
                doa.arabDoa,
                textAlign: TextAlign.right,
                style: const TextStyle(
                  fontSize: 28.0,
                  fontFamily: 'Poppins',
                ),
              ),
              const SizedBox(height: 30),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  doa.latinDoa,
                  style: const TextStyle(
                    fontSize: 16.0,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(height: 15.0),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  doa.bacaDoa,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.favorite_border_rounded,
                      color: primaryColor,
                      size: 30.0,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.copy_rounded,
                      color: primaryColor,
                      size: 30.0,
                    ),
                  )
                ],
              ),
              const Divider(
                color: Colors.grey,
                thickness: 1.0,
              ),
            ],
          ),
        ));
  }
}
