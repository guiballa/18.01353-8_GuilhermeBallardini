import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Magic cards", style: GoogleFonts.lato(),), ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          children: [
            Text("Ola")
          ],
        ),
      ),
    );
  }
}
