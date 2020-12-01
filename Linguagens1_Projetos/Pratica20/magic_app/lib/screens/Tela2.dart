import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;

class SegundaTela extends StatelessWidget {
  String Nome;

  List _cardsListUrl = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Busca pelo nome de "+ Nome , style: GoogleFonts.lato(),), ),
          body: Column(
            children: [

              Expanded(
                  child: ListView.builder(
                      itemBuilder: (context, index){
                        return ListTile(
                          title: Text("ola"),
                        );
                      }
                  )
              )
            ],
          ),
        )
    );
  }
  SegundaTela({Key key, @required this.Nome}) : super(key: key);


}
