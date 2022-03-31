import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';

import '../app/presentation/app_builder.dart';

mixin DevicePreviewBuilder on MainAppBuilder {
  @override
  Widget buildApp() {
    return DevicePreview(
      builder: (BuildContext context) {
        return super.buildApp();
      },
    );
  }
}
