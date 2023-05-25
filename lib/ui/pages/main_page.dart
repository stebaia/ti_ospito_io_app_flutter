import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:ti_ospito_io_app_flutter/ui/pages/dangerous_zone_page.dart';
import 'package:ti_ospito_io_app_flutter/ui/pages/give_a_bed_page.dart';
import 'package:ti_ospito_io_app_flutter/ui/pages/give_presents_page.dart';
import 'package:ti_ospito_io_app_flutter/ui/pages/help_me_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(24),
        child: Column(children: [
          const SizedBox(
            height: 60,
          ),
          const Text(
            'Ciao! hai bisogno di aiuto o vuoi dare una mano?',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'PoppinsExtraBold'),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
            decoration: BoxDecoration(
                color: Color.fromARGB(214, 170, 29, 19),
                borderRadius: BorderRadius.circular(10)),
            height: 60,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Attenzione nella tua zona\nè allerta rossa!',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.warning,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
          ),
          GridView.count(
            padding: EdgeInsets.only(top: 20),
            shrinkWrap: true,
            primary: false,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: <Widget>[
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HelpMePage(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 20, 158, 24),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text(
                        "Hai bisogno di un tetto?",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PoppinsExtraBold',
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 56,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Trovalo qui!',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            CupertinoIcons.home,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DangerousZonePage(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 158, 59, 20),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text(
                        "Vuoi segnalare una zona pericolosa?",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PoppinsExtraBold',
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Segnalala qui!',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            Icons.dangerous,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GiveABedPage(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 25, 83, 189),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text(
                        "Puoi ospitare qualcuno?",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PoppinsExtraBold',
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Scrivilo qui!',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            CupertinoIcons.person_2,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => GivePresentsPage(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 20, 68, 158),
                      borderRadius: BorderRadius.circular(10)),
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    children: [
                      Text(
                        "Dona i tuoi oggetti!",
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PoppinsExtraBold',
                            fontSize: 18),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Donali qui!',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          Icon(
                            CupertinoIcons.gift,
                            color: Colors.white,
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ]),
      ),
    );
  }
}
