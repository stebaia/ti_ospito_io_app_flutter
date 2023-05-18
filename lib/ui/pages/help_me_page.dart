import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';

class HelpMePage extends StatelessWidget {
  const HelpMePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                children: [
                  const Icon(CupertinoIcons.arrow_left),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "Hai bisogno di un tetto?",
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
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    color: Color.fromARGB(255, 20, 158, 24),
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                height: 100,
                child: Row(
                  children: [
                    Text(
                      'Qui puoi trovare persone\nche hanno un posto per te!',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Lottie.asset('assets/safeplace.json')
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: Text(
                      "Loro hanno un posto per te!",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: 16),
                    ),
                  ),
                  const Icon(CupertinoIcons.film),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
