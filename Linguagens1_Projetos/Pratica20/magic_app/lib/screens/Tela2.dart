import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:magic_app/Utilities/network_helper.dart';

class SegundaTela extends StatefulWidget {
  String Nome;

  @override
  _SegundaTelaState createState() => _SegundaTelaState();

  SegundaTela({Key key, @required this.Nome}) : super(key: key);
}

class _SegundaTelaState extends State<SegundaTela> {
  List _cardsListUrl = [];
  var _requisicao = NetworkHelper(url:"url da sua api");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Busca pelo nome de "+ widget.Nome , style: GoogleFonts.lato(),), ),
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
}
