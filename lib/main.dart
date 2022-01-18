import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:netflixclone/pages/root_app.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Rootapp(),
  ));
}