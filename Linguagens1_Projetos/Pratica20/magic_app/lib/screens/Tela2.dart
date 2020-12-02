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
  Widget build(BuildContext context) {
    String card = widget.Name;
    card = card.replaceAll(" ", "%20");
    var requisicao = NetworkHelper(url:"https://api.scryfall.com/cards/search?q=" +card+ "&unique=cards&order=name");
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(title: Text("Busca pelo nome de "+ widget.Name , style: GoogleFonts.lato(),), ),
            body: Column(
              children: <Widget>[
                FutureBuilder<dynamic>(
                  future: requisicao.getData(),
                  builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
                    if (snapshot.hasData) {
                      var dados = scryfall_api.fromJson(snapshot.data);
                      return Expanded(
                        child: ListView.builder(
                            itemCount: 2,
                            itemBuilder: (context, index){
                              return ListTile(
                                title: Text("teste"),
                                leading: Image.network(dados.data[0].imageUris.large),

                                // leading: Image.network(_cardsListUrl[index]),
                              );
                            }),
                      );
                    } else {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Center(child: Text('Buscando cartas', style: TextStyle(fontSize: 24, ),)),
                      );

                    }
                  },
                ),
              ],
            )
        )
    );
  }




  void adicionar_nova_carta(String Nome, int index) {
    setState(() async {
      var requisicao = NetworkHelper(url:"https://api.scryfall.com/cards/search?q=" + Nome + "&unique=cards&order=name");
      var dados = scryfall_api.fromJson(await requisicao.getData());
       _cardsListUrl.add(dados.data[index].imageUris.large);
    });
  }
}
