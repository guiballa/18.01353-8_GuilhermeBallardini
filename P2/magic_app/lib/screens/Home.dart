import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Tela2.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

final controladorCarta = TextEditingController();


class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Busca de cartas de Magic", style: GoogleFonts.lato(),), ),
        body: Column(
            children: [
              SizedBox(width:300, height: 100,child: Image.network("https://upload.wikimedia.org/wikipedia/commons/thumb/3/3f/Magicthegathering-logo.svg/1280px-Magicthegathering-logo.svg.png")),
              meuTextFieldPersonalizado(controladorCarta, "Informe o nome da Carta desejada", "Nome da Carta:", Icon(Icons.drive_file_rename_outline)),
              ElevatedButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      SegundaTela(name: controladorCarta.text,)
                  ),
                );
               }, child: Text("Procurar")
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(width:260, height: 350,
                      child: Image.network("https://media.magic.wizards.com/image_legacy_migration/magic/images/mtgcom/fcpics/making/mr224_back.jpg")),
                ),
              ),
            ],
          ),
      ),
    );
  }
}

Widget meuTextFieldPersonalizado(TextEditingController controlador, String hint, String label, Icon icone) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(controller: controlador, decoration: InputDecoration(
        hintText: hint,
        labelText: label,
        icon: icone,
        // hintStyle:
    ),),
  );
}