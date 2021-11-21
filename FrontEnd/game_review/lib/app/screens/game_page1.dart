import 'package:flutter/material.dart';
import 'package:game_review/app/screens/minha_lista_dinamica.dart';


class GamePage1 extends StatelessWidget {
 GamePage1({ Key? key }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Game Review"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("AAAAAAAAAA"),
            leading: TextButton(
              child: Image.network("https://pbs.twimg.com/media/FEaCjohXIAQPVgl?format=jpg&name=small", fit: BoxFit.contain,),
              
              onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MinhaListaDinamica()));
              }
            ),
            subtitle: const Text("aaaaaaaaaaaa"),
          ),
        ],
      ),
      
    );
  }
}
