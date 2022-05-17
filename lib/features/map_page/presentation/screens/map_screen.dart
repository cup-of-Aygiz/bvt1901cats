import 'dart:async';
import 'package:bvt1901_practice/app/presentation/theme/app_text_style.dart';
import 'package:bvt1901_practice/features/adreses_page/presentation/screens/address_page.dart';
import 'package:bvt1901_practice/gen/assets.gen.dart';
import 'package:bvt1901_practice/uikit/app_bars/default_app_bar.dart';
import 'package:bvt1901_practice/uikit/buttons/app_text_button.dart';
import 'package:bvt1901_practice/uikit/text_fields/app_text_field.dart';
import 'package:bvt1901_practice/utils/extentions/app_context.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart' as mapya;
import 'package:yandex_geocoder/yandex_geocoder.dart';
import 'package:yandex_mapkit/yandex_mapkit.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final Completer<YandexMapController> _completer = Completer();
  String text = "Определяем ваш адрес";

  /// переменная отвечает за показывать снизу окно с выбором или нет
  bool isOpenAddress = true;
  final YandexGeocoder geocoder =
      YandexGeocoder(apiKey: "6e95a308-6db4-4bf9-8dfe-a22740c21a94");

  PointGeocode _point = PointGeocode(longitude: 37.617734, latitude: 55.751999);

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    final locale = context.appLocale;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: const DefaultAppBar(),
      body: Stack(children: [
        YandexMap(
          onMapCreated: _onMapCreated,
          onCameraPositionChanged: (CameraPosition cameraPosition,
              CameraUpdateReason cameraUpdateReason, bool prov) {
            setState(() {
              PointGeocode point = PointGeocode(
                  longitude: cameraPosition.target.longitude,
                  latitude: cameraPosition.target.latitude);
              _point = point;
            });
          },
        ),
        Align(
          alignment: Alignment.center,
          child: Assets.icons.icPointer.svg(
            width: 30.h,
            height: 30.h,
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              isOpenAddress = !isOpenAddress;
            });
          },
          child: Align(
            alignment: Alignment.bottomLeft,
            child: AnimatedCrossFade(
              crossFadeState: isOpenAddress
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              firstChild: Container(
                height: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: colors.white,
                ),
              ),
              duration: const Duration(milliseconds: 300),
              secondChild: Container(
                height: 250.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.r),
                  color: colors.white,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 6.h, bottom: 2.h),
                      child: Text(
                        locale.delivery_address,
                        style: AppTextStyle.normalW700S16,
                        maxLines: 10,
                      ),
                    ),
                    AppTextField(
                      hintText: text,
                      name: 'address',
                      readOnly: true,
                      maxLines: 3,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 2.h, horizontal: 16.w),
                      child: SizedBox(
                        width: width,
                        child: AppTextButton(
                          buttonText: locale.choose,
                          onPressed: () async {
                            final GeocodeResponse geocodeFromPoint =
                                await geocoder.getGeocode(GeocodeRequest(
                              geocode: PointGeocode(
                                  latitude: _point.latitude,
                                  longitude: _point.longitude),
                              lang: Lang.ru,
                            ));

                            setState(() {
                              text =
                                  "${geocodeFromPoint.firstAddress?.formatted}";
                            });

                            await Future.delayed(const Duration(seconds: 1))
                                .then((value) => context.appRouter.pushScreen(
                                    context,
                                    AddressScreen(
                                      address: text,
                                    )));
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
      ]),
    );
  }

  Future<void> _onMapCreated(YandexMapController controller) async {
    _completer.complete(controller);
    controller.moveCamera(CameraUpdate.newCameraPosition(const CameraPosition(
        target: mapya.Point(longitude: 37.617734, latitude: 55.751999),
        zoom: 17)));
  }
}
