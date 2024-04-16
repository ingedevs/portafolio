import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/config/theme/theme_provider.dart';
import 'src/main_app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
      ],
      child: const MainApp(),
    ),
  );
}
