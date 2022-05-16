import 'dart:async';

import 'package:flutter/material.dart';

import 'app_builder.dart';

class AppRunner {
  Future<void> preloadData() async {}

  void onAppLoaded() {}

  void handleZonedException(error, stackTrace) {}

  Future<void> run(AppBuilder builder) async {
    await preloadData();
    runZonedGuarded(() {
      runApp(builder.buildApp());
    }, (error, stackTrace) {
      handleZonedException(error, stackTrace);
    });
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      onAppLoaded();
    });
  }
}
