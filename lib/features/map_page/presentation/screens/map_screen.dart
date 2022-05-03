import 'dart:async';

import 'package:bvt1901_practice/gen/assets.gen.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  Completer<YandexMapController> _completer = Completer();
  String _hintText = "dj";
  Point? _point=Point(longitude: 55.7520233, latitude: 37.5474616);

  void ChangeText(Point? point){
    setState(() {
      _point=point;
      _hintText="${_point!.latitude}, ${_point!.longitude}";
    });
  }

  @override
  Widget build(BuildContext context) {
    CameraPosition _moscow = const CameraPosition(
        target: Point(longitude: 55.7520233, latitude: 37.5474616));

    return Scaffold(
      appBar: const DefaultAppBar(),
      body: Stack(children: [
        YandexMap(
          onMapCreated: _onMapCreated,
          onMapTap: (Point? point){
            ChangeText(point);
          },
        ),
        Align(
          alignment: Alignment.center,
          child: Assets.icons.icPointer.svg(
            width: 30.h,
            height: 30.h,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 200.h,
            color: Colors.red,
            child: FormBuilderTextField(
              name: 'gj',
              decoration: InputDecoration(
                hintText: _hintText,
              ),
            ),
          ),
        )
      ]),
    );
  }

  void _onMapCreated(YandexMapController controller) {
    _completer.complete(controller);
  }
}
