import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomSheetDangerWidget extends StatefulWidget {
  const BottomSheetDangerWidget({super.key});

  @override
  State<BottomSheetDangerWidget> createState() =>
      _BottomSheetDangerWidgetState();
}

class _BottomSheetDangerWidgetState extends State<BottomSheetDangerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
          children: [Text('Modal bottomsheet')],
        ),
      ),
    );
  }
}
