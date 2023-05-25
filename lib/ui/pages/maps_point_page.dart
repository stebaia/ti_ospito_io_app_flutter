import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:lottie/lottie.dart' as LottieFiles;
import 'package:ti_ospito_io_app_flutter/utils/fake_data.dart';

class MapsPointPage extends StatefulWidget {
  const MapsPointPage({super.key});

  @override
  State<MapsPointPage> createState() => _MapsPointPageState();
}

class _MapsPointPageState extends State<MapsPointPage> {
  late GoogleMapController _controller;

  List<Marker> allMarkers = [];

  late PageController _pageController;

  int prevPage = 0;

  @override
  void initState() {
    super.initState();
    getFakePlaceOspital.forEach((element) {
      allMarkers.add(Marker(
          markerId: MarkerId(element.name),
          draggable: true,
          infoWindow: InfoWindow(title: element.name, snippet: element.address),
          position: LatLng(element.lat!, element.long!)));
    });
    _pageController = PageController(initialPage: 1, viewportFraction: 0.8)
      ..addListener(onScroll);
  }

  void onScroll() {
    if (_pageController.page!.toInt() != prevPage) {
      prevPage = _pageController.page!.toInt();
      moveCamera();
    }
  }

  void mapCreated(controller) {
    setState(() {
      _controller = controller;
    });
  }

  moveCamera() {
    _controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
        target: LatLng(getFakePlaceOspital[_pageController.page!.toInt()].lat!,
            getFakePlaceOspital[_pageController.page!.toInt()].long!),
        zoom: 14.0,
        bearing: 45.0,
        tilt: 45.0)));
  }

  Widget animatedOspitals(index) {
    return AnimatedBuilder(
        animation: _pageController,
        builder: (context, child) {
          double value = 1;
          if (_pageController.position.haveDimensions) {
            value = _pageController.page! - index;
            value = (1 - (value.abs() * 0.3) + 0.06).clamp(0.0, 1.0);
          }
          return Center(
            child: SizedBox(
              height: Curves.easeInOut.transform(value) * 200,
              width: Curves.easeInOut.transform(value) * 350,
              child: child,
            ),
          );
        },
        child: InkWell(
            onTap: () {
              moveCamera();
            },
            child: Stack(children: [
              Center(
                  child: Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: 10.0,
                        vertical: 20.0,
                      ),
                      height: 200.0,
                      width: MediaQuery.of(context).size.width / 1.3,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black54,
                              offset: Offset(0.0, 4.0),
                              blurRadius: 10.0,
                            ),
                          ]),
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Colors.white),
                          child: Row(children: [
                            Container(
                                height: 200.0,
                                width: 90.0,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(10.0),
                                        topLeft: Radius.circular(10.0)),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            'https://www.auslromagna.it/media/k2/items/cache/ff336f2665fe8bd02bf108a99b6df90e_XL.jpg'),
                                        fit: BoxFit.cover))),
                            SizedBox(width: 5.0),
                            Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    getFakePlaceOspital[index].name.length > 25
                                        ? '${getFakePlaceOspital[index].name.substring(0, 23)}..'
                                        : getFakePlaceOspital[index].name,
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    getFakeData[index].address,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        SizedBox(
                                          width: 100,
                                        ),
                                        GestureDetector(
                                            onTap: () {},
                                            child: Text('Dettagli')),
                                        Icon(CupertinoIcons.arrow_right)
                                      ],
                                    ),
                                  )
                                ])
                          ]))))
            ])));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 50,
            child: GoogleMap(
              tiltGesturesEnabled: false,
              gestureRecognizers: Set()
                ..add(Factory<TapGestureRecognizer>(
                    () => TapGestureRecognizer())),
              zoomGesturesEnabled: true,
              zoomControlsEnabled: false,
              markers: Set.from(allMarkers),
              onMapCreated: mapCreated,
              initialCameraPosition: CameraPosition(
                  target: LatLng(44.1402816, 12.2430347), zoom: 10.0),
            )),
        Positioned(
          top: 60,
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: Container(
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                    color: Color.fromARGB(255, 10, 179, 221),
                    borderRadius: BorderRadius.circular(10)),
                height: 100,
                child: Row(
                  children: [
                    Text(
                      'Qui puoi trovare zone sicure\ncon persone che ti possono\naiutare!',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    LottieFiles.Lottie.asset('assets/hospital.json')
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20.0,
          child: Container(
            height: 220.0,
            width: MediaQuery.of(context).size.width,
            child: PageView.builder(
              controller: _pageController,
              itemCount: getFakePlaceOspital.length,
              itemBuilder: (BuildContext context, int index) {
                return animatedOspitals(index);
              },
            ),
          ),
        )
      ],
    );
  }
}
