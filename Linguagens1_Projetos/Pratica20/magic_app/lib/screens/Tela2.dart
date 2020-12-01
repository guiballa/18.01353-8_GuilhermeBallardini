import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:magic_app/Utilities/network_helper.dart';
import 'package:magic_app/models/scryfall_api.dart';

class SegundaTela extends StatefulWidget {
  String Nome;

  @override
  _SegundaTelaState createState() => _SegundaTelaState();

  SegundaTela({Key key, @required this.Nome}) : super(key: key);
}

class _SegundaTelaState extends State<SegundaTela> {
  List _cardsListUrl = [];
  

  @override
  Widget build(BuildContext context) {
    var requisicao = NetworkHelper(url:"https://api.scryfall.com/cards/search?q=" + Nome + "&unique=cards&order=name");
    var data = scryfall_api.fromJson(await requisicao.getData());
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Busca pelo nome de "+ widget.Nome , style: GoogleFonts.lato(),), ),
          body: Column(
            children: [
              Expanded(
                  child:

                    ListView.builder(
                      itemBuilder: (context, index){
                        return ListTile(
                          leading: Image.network(_cardsListUrl[index]),
                        );
                      }
                  )
              )
            ],
          ),
        )
    );
  }
  void adicionar_novo_registro(String Nome) {
    setState(() async {
      var requisicao = NetworkHelper(url:"https://api.scryfall.com/cards/search?q=" + Nome + "&unique=cards&order=name");
      var data = scryfall_api.fromJson(await requisicao.getData());
      // var num_dados = data.totalCards;
      // _cardsListUrl.add();
      print(_cardsListUrl);
    });

  }
}
