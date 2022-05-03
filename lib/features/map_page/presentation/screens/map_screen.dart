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
  final Completer<YandexMapController> _completer = Completer();
  String _hintText = "this is my try";
  Point? _point = const Point(longitude: 55.7520233, latitude: 37.5474616);

  void changeText(Point? point) {
    setState(() {
      _point = point;
      _hintText = "${_point!.latitude}, ${_point!.longitude}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(),
      body: Stack(children: [
        YandexMap(
          onMapCreated: _onMapCreated,
          onMapTap: (Point? point) {
            changeText(point);
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
              name: 'try',
              decoration: InputDecoration(
                hintText: _hintText,
              ),
            ),
          ),
        )
      ]),
    );
  }

  Future<void> _onMapCreated(YandexMapController controller) async {
    _completer.complete(controller);
    await controller.moveCamera(
      CameraUpdate.newCameraPosition(const CameraPosition(
          target: Point(longitude: 37.617734, latitude: 55.751999))),
    );
  }
}
