import 'package:flutter/material.dart';
import 'package:wisata_candi/screens/detail_screen.dart';
import 'package:wisata_candi/data/candi_data.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
       home: DetailScreen(
        candi: candiList[0]
        ),      
     );
  }
}

