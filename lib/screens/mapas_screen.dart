import 'package:flutter/material.dart';
import 'package:qr_app/widgets/scan_tiles.dart';

class MapasScreen extends StatelessWidget {
  const MapasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScanTiles(tipo: 'geo');
  }
}
