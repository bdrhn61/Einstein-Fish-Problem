import 'package:flutter/material.dart';
import 'package:test/Utils/renkler.dart';
import 'package:test/Provider/allProvider.dart';
import 'package:test/widget/DilSecimi/dilContainer.dart';


class DilSec extends StatefulWidget {
  const DilSec({Key? key}) : super(key: key);

  @override
  _DilSecState createState() => _DilSecState();
}

class _DilSecState extends State<DilSec> {
  
  List<String> dilList = [
    'English',
    'German',
    'French',
    'Spanish',
    'Italian',
    'Turkish',
    'Russian',
    'Swedish',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: globalEn,
      height: globalBoy,
      color: UtilSplashRenkler.backColor,
      child: Center(
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 4; i++) DilContainer.dilContainer(dilList[i],context),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 4; i < 8; i++) DilContainer.dilContainer(dilList[i],context),
                ],
              ),
            ],
          ),
        ),
      ),
    ));
  }

 
}
