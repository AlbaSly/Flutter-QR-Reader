import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:qr_app/screens/home_screen.dart';
import 'package:qr_app/screens/mapa_screen.dart';

import 'package:qr_app/providers/scan-list_provider.dart';
import 'package:qr_app/providers/ui_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => UIProvider()),
        ChangeNotifierProvider(create: (_) => ScanListProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home': (_) => const HomeScreen(),
          'mapa': (_) => const MapaScreen(),
        },
        theme: ThemeData(
          primaryColor: Colors.orange,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}
