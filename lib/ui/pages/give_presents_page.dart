import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:ti_ospito_io_app_flutter/utils/fake_data.dart';

class GivePresentsPage extends StatefulWidget {
  const GivePresentsPage({super.key});

  @override
  State<GivePresentsPage> createState() => _GivePresentsPageState();
}

class _GivePresentsPageState extends State<GivePresentsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  Container(
                    child: Text(
                      "Dona a chi è meno fortunato!",
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
                'Hai qualcosa che non ti serve più e vorresti donarla?',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Color.fromARGB(255, 5, 79, 143),
                    fontSize: 20,
                    fontFamily: 'PoppinsExtraBold',
                    fontWeight: FontWeight.bold),
              ),
              Lottie.asset('assets/gift.json', width: 100, height: 100),
              Text(
                'Presentati in uno di questi punti di raccolta e porta un regalo a chi è stato meno fortunato di te!',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.all(8),
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color.fromARGB(123, 162, 190, 214)),
                child: Center(
                  child: ListView.builder(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    itemCount: getPlaceFakeData.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          child: Container(
                        padding: EdgeInsets.all(4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${getPlaceFakeData[index].name} ',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 14),
                                ),
                                Text(
                                  getFakeData[index].address,
                                  style: TextStyle(fontSize: 12),
                                ),
                                SizedBox(
                                  height: 10,
                                )
                              ],
                            ),
                            Icon(CupertinoIcons.arrow_right)
                          ],
                        ),
                      ));
                    },
                  ),
                ),
              ),
            ])));
  }
}
