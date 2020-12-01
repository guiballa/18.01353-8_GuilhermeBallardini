import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SegundaTela extends StatelessWidget {
  String Nome;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Busca pelo nome de "+ Nome , style: GoogleFonts.lato(),), ),

        )
    );
  }
  SegundaTela({Key key, @required this.Nome}) : super(key: key);


}
