import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ti_ospito_io_app_flutter/models/user.dart';
import 'package:url_launcher/url_launcher_string.dart' as UrlLauncher;

class DetailExtraUserPage extends StatefulWidget {
  const DetailExtraUserPage({super.key, required this.user});
  final User user;
  @override
  State<DetailExtraUserPage> createState() => _DetailExtraUserPageState();
}

class _DetailExtraUserPageState extends State<DetailExtraUserPage> {
  String url() {
    if (Platform.isAndroid) {
      // add the [https]
      return "https://api.whatsapp.com/send?phone=${widget.user.telephone}=${Uri.parse("ciao!")}";
    } else {
      // add the [https]
      return "https://api.whatsapp.com/send?phone=${widget.user.telephone}=${Uri.parse("ciao!")}"; // new line
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 60,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: const Icon(CupertinoIcons.arrow_left),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(widget.user.urlImage),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${widget.user.name} ${widget.user.surname}',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(124, 213, 232, 237),
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.all(20),
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(CupertinoIcons.phone),
                        Text(widget.user.telephone)
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(CupertinoIcons.location),
                        Text(widget.user.address)
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(CupertinoIcons.home),
                        Text('${widget.user.freePlace} posti liberi')
                      ],
                    )
                  ]),
                ),
                const SizedBox(
                  height: 50,
                ),
                GestureDetector(
                  onTap: () => UrlLauncher.launchUrlString(
                      'tel://+39${widget.user.telephone}'),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(8)),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Chiama!',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PoppinsExtraBold'),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          CupertinoIcons.phone,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                GestureDetector(
                  onTap: () => UrlLauncher.launchUrlString(url()),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 54, 133, 56),
                        borderRadius: BorderRadius.circular(8)),
                    height: 60,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Contatta!',
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'PoppinsExtraBold'),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Icon(
                          Icons.telegram,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(8)),
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Raggiungilo!',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'PoppinsExtraBold'),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Icon(
                        CupertinoIcons.location_circle,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                )
              ])),
    );
  }
}
