import 'package:flutter/material.dart';
import 'package:qr_app/widgets/scan_tiles.dart';

class DireccionesScreen extends StatelessWidget {
  const DireccionesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScanTiles(tipo: 'http');
  }
}
