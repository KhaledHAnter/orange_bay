import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:orange_bay/Core/utils/app_router.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const OrangBay(), // Wrap your app
    ),
  );
}

class OrangBay extends StatelessWidget {
  const OrangBay({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      title: 'Orang Bay',
      debugShowCheckedModeBanner: false,
    );
  }
}
