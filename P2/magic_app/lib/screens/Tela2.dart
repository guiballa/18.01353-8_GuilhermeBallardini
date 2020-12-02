import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:magic_app/Utilities/network_helper.dart';
import 'package:magic_app/models/scryfall_api.dart';

class SegundaTela extends StatefulWidget {
  final String name;
  SegundaTela({Key key, @required this.name}) : super(key: key);
  @override
  _SegundaTelaState createState() => _SegundaTelaState();
}

class _SegundaTelaState extends State<SegundaTela> {
  List _cardsListUrl = [];
  NetworkHelper requisicao;
  Scryfall_api scryfallApi = new Scryfall_api();
  @override
  void initState() {
    iniciaData();
    super.initState();
  }

  iniciaData() {
    String card = widget.name;
    card = card.replaceAll(" ", "%20");
    requisicao = NetworkHelper(
        url: "https://api.scryfall.com/cards/search?q=" +
            card +
            "&unique=cards&order=name");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(4.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      IconButton(
                          icon: Icon(
                            Icons.arrow_back_ios,
                            size: 24,
                          ),
                          onPressed: () => Navigator.pop(context)
                      ),
                      Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: Text(
                              widget.name.toUpperCase(),
                              style: GoogleFonts.lato(),
                            ),
                          ))
                    ],
                  ),
                  FutureBuilder(
                    future: requisicao.getData(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        scryfallApi = Scryfall_api.fromJson(snapshot.data);
                        return Expanded(
                            child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                mainAxisSpacing: 16,
                                crossAxisSpacing: 0,
                              ),
                              itemCount: scryfallApi.totalCards,
                              itemBuilder: (context, index) {
                                Data data = scryfallApi.data[index];
                                if (data.imageUris == null) print(index);
                                return Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: NetworkImage(data.imageUris.large))),
                                );
                              },
                            ));
                      } else {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Center(
                              child: Text(
                                'Buscando cartas',
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              )),
                        );
                      }
                    },
                  ),
                ],
              ),
            )));
  }

}
