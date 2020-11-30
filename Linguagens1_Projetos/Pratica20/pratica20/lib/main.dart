import 'package:flutter/material.dart';

void main() {
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MinhaTela(),
    );
  }
}

class MinhaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Carta de Magic"),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text("Braids Conjurer Adept"),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Image.network("https://tcgplayer-cdn.tcgplayer.com/product/14693_200w.jpg", fit: BoxFit.fill, height:200 ,),
          ),
          Expanded(
            child: Row(

              children: [
                Expanded(child: Image.network("https://tcgplayer-cdn.tcgplayer.com/product/118754_200w.jpg", fit: BoxFit.contain,)),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _minha_Linha_Personalizada("https://tcgplayer-cdn.tcgplayer.com/product/118754_200w.jpg","Braids"),
                      _minha_Linha_Personalizada("https://tcgplayer-cdn.tcgplayer.com/product/118754_200w.jpg","Cabal Minion")
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(child: Image.asset("assets/qr-code.png"))
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Ola Devs!!");
        },
        child: Icon(Icons.donut_large),
      ),
    );
  }

  _minha_Linha_Personalizada(String url_imagem, String texto) {
    return Row(
      children: [
        //Expanded(child: Image.network(url_imagem,fit: BoxFit.contain,)),
        Expanded(child: Text(texto))
      ],
    );
  }
}
