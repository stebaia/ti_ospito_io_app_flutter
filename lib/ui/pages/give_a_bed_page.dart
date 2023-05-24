import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class GiveABedPage extends StatefulWidget {
  const GiveABedPage({super.key});

  @override
  State<GiveABedPage> createState() => _GiveABedPageState();
}

class _GiveABedPageState extends State<GiveABedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      padding: const EdgeInsets.all(20),
      child: Column(children: [
        const SizedBox(
          height: 60,
        ),
        Row(
          children: [
            IconButton(
              icon: const Icon(CupertinoIcons.arrow_left),
              onPressed: () => Navigator.pop(context),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                "Hai un posto letto in più?",
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'PoppinsExtraBold',
                    fontSize: 18),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        const Text(
          'C\'è chi ha perso tutto e non sa dove dormire..',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromARGB(255, 25, 83, 189),
              fontSize: 20,
              fontFamily: 'PoppinsExtraBold',
              fontWeight: FontWeight.bold),
        ),
        Lottie.asset('assets/safeplace.json', width: 200, height: 200),
        Text(
          'Ci sono persone che hanno perso tutto e non sanno dove dormire stanotte..\n\nOffri un posto letto a qualcuno meno fortunato di te!',
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
        Container(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'Quanti posti letto hai?',
                  labelText: 'Quanti posti letto hai?',
                  prefixIcon: const Icon(
                    CupertinoIcons.bed_double,
                    color: Colors.blue,
                  ),
                  prefixText: ' ',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderSide: new BorderSide(color: Colors.teal)),
                  hintText: 'Inserisci l\'indirizzo',
                  labelText: 'Inserisci l\'indirizzo',
                  prefixIcon: const Icon(
                    CupertinoIcons.location,
                    color: Colors.blue,
                  ),
                  prefixText: ' ',
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 60,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.blue),
          width: MediaQuery.of(context).size.width,
          child: Center(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Aggiungiti tra i volontari'.toUpperCase(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                CupertinoIcons.person_3,
                color: Colors.white,
              )
            ],
          )),
        )
      ]),
    )));
  }
}
