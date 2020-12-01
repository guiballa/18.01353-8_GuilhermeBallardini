import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart';
import 'package:magic_app/Utilities/network_helper.dart';
import 'package:magic_app/models/scryfall_api.dart';

class SegundaTela extends StatefulWidget {
  String Name;

  @override
  _SegundaTelaState createState() => _SegundaTelaState();

  SegundaTela({Key key, @required this.Name}) : super(key: key);



}

class _SegundaTelaState extends State<SegundaTela> {
  List _cardsListUrl = [];


  @override
  Widget build(BuildContext context) async{
    var requisicao = NetworkHelper(url:"https://api.scryfall.com/cards/search?q=" + widget.Name + "&unique=cards&order=name");
    var data = scryfall_api.fromJson(await requisicao.getData());
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(title: Text("Busca pelo nome de "+ widget.Name , style: GoogleFonts.lato(),), ),
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
  void adicionar_nova_carta(String Nome) {
    setState(() async {
      var requisicao = NetworkHelper(url:"https://api.scryfall.com/cards/search?q=" + Nome + "&unique=cards&order=name");
      var data = scryfall_api.fromJson(await requisicao.getData());
      // var num_dados = data.totalCards;
      // _cardsListUrl.add();
      print(_cardsListUrl);
    });

  }
}
