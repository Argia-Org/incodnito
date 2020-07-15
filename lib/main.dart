import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:incodnito/pages/incodnito.dart';
import 'package:incodnito/pages/landing.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(Incodnito());
}
