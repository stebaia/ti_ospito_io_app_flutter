import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ti_ospito_io_app_flutter/utils/fake_data.dart';

class SosVolontariPage extends StatelessWidget {
  const SosVolontariPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Positioned(
              top: 0.0,
              right: -50.0,
              child: Opacity(
                opacity: 0.5,
                child: Image.asset(
                  'assets/lifesaver.png',
                ),
              )),
          Container(
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
                        "Sos Volontari!",
                        style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'PoppinsExtraBold',
                            fontSize: 18),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Qui puoi trovare tutte le informazioni e i luoghi in cui c\'è bisogno!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      primary: false,
                      itemCount: getSosPlaceCity.length,
                      itemBuilder: (context, index) => Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            getSosPlaceCity[index].name,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'PoppinsExtraBold'),
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(123, 162, 190, 214)),
                            padding: EdgeInsets.all(10),
                            child: ListView.separated(
                              physics: const BouncingScrollPhysics(),
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              itemCount:
                                  getSosPlaceCity[index].sosPlaceList.length,
                              itemBuilder: (context, jndex) => Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.green,
                                            borderRadius:
                                                BorderRadius.circular(50)),
                                        child: Icon(
                                          CupertinoIcons.person_3,
                                          color: Colors.white,
                                        ),
                                        padding: EdgeInsets.all(10),
                                      ),
                                      SizedBox(
                                        width: 6,
                                      ),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              getSosPlaceCity[index]
                                                  .sosPlaceList[jndex]
                                                  .address,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Text(
                                                'Orario: ${getSosPlaceCity[index].sosPlaceList[jndex].time}'),
                                            Text(
                                                '${getSosPlaceCity[index].sosPlaceList[jndex].freePlace} posti liberi'),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Icon(CupertinoIcons.chevron_right)
                                ],
                              ),
                              separatorBuilder:
                                  (BuildContext context, int index) => Divider(
                                color: Colors.white,
                                height: 3,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ])),
        ],
      ),
    ));
  }
}
