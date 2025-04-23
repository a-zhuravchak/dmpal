import 'package:dmpal/src/app/theme/theme.dart';
import 'package:dmpal/src/app/theme/util.dart';
import 'package:flutter/material.dart';

class DMPalApp extends StatelessWidget {
  const DMPalApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;
    final TextTheme textTheme = createTextTheme(context);
    final MaterialTheme materialTheme = MaterialTheme(textTheme);
    return MaterialApp(
      title: 'DM Pal',
      theme: brightness == Brightness.light ? materialTheme.light() : materialTheme.dark(),
      home: const Placeholder(),
    );
  }
}
