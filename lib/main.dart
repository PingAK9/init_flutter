import 'package:my_app/core/constans.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/view/my_app.dart';
import 'package:package_info/package_info.dart';


Future main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarIconBrightness: Brightness.dark,
      statusBarColor: Colors.grey[100]));

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  kPackageInfo = await PackageInfo.fromPlatform();

  runApp(MyApp());
}
