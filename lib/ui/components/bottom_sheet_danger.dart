import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';
import 'package:ti_ospito_io_app_flutter/utils/utils_method.dart';

class BottomSheetDangerWidget extends StatefulWidget {
  const BottomSheetDangerWidget({super.key});

  @override
  State<BottomSheetDangerWidget> createState() =>
      _BottomSheetDangerWidgetState();
}

class _BottomSheetDangerWidgetState extends State<BottomSheetDangerWidget> {

  Position? position = null;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: MediaQuery.of(context).size.height * 0.85,
      decoration: new BoxDecoration(
        color: Colors.white,
        borderRadius: new BorderRadius.only(
          topLeft: const Radius.circular(25.0),
          topRight: const Radius.circular(25.0),
        ),
      ),
      child: Center(
        child: Column(
          children: [
            Text('Hey! Hai visto una situazione pericolante e vuoi segnalarla?', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
            SizedBox(height: 10,),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.5,
                  child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderSide: new BorderSide(color: Colors.red)),
                    hintText: 'Indicaci dove...',
                    labelText: 'Indicaci dove...',
                    prefixIcon: const Icon(
                      CupertinoIcons.location_solid,
                      color: Colors.red,
                    ),
                    prefixText: ' ',
                  ),
                              ),
                ),
                SizedBox(width: 20,),
                GestureDetector(
                  onTap: () async {
                   
                    determinePosition().then((value) => position = value);
                    print(position);
                  },
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(color: Color.fromARGB(255, 191, 65, 24), borderRadius: BorderRadius.circular(10)),
                    child: Icon(CupertinoIcons.location_circle, color: Colors.white,),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
