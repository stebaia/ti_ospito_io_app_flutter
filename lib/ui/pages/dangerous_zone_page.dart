import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ti_ospito_io_app_flutter/ui/components/bottom_sheet_danger.dart';

class DangerousZonePage extends StatefulWidget {
  const DangerousZonePage({super.key});

  @override
  State<DangerousZonePage> createState() => _DangerousZonePageState();
}

class _DangerousZonePageState extends State<DangerousZonePage> {
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
                "Segnala un pericolo!",
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
          'Segnala una zona pericolosa vicino a te!',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Color.fromARGB(255, 139, 33, 6),
              fontSize: 20,
              fontFamily: 'PoppinsExtraBold',
              fontWeight: FontWeight.bold),
        ),
        Lottie.asset('assets/warning.json', width: 200, height: 200),
        Text(
          'Sei in pericolo o hai visto una zona che potrebbe diventare pericolante?',
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 30,
        ),
        GestureDetector(
          onTap: () => showModalBottomSheet<void>(
              isScrollControlled: true,
              backgroundColor: Colors.transparent,
              context: context,
              builder: (BuildContext context) {
                return BottomSheetDangerWidget();
              }),
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8), color: Colors.red),
            width: MediaQuery.of(context).size.width,
            child: Center(
                child: Text(
              'segnala pericolo!'.toUpperCase(),
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            )),
          ),
        )
      ]),
    )));
  }
}
