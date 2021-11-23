import 'package:flutter/material.dart';
import 'package:game_review/app/models/game.dart';
import 'package:game_review/app/models/network_helper.dart';
import 'package:game_review/app/models/pessoa.dart';
import 'package:game_review/app/models/random_user.dart';
import 'package:game_review/app/screens/game_page1.dart';

class MinhaListaDinamica extends StatefulWidget {
  const MinhaListaDinamica({ Key? key }) : super(key: key);

  @override
  State<MinhaListaDinamica> createState() => _MinhaListaDinamicaState();
}

class _MinhaListaDinamicaState extends State<MinhaListaDinamica> {

  List<Pessoa> pessoas = [Pessoa(nome: "Pikachu", url: "https://pbs.twimg.com/media/FEaCjohXIAQPVgl?format=jpg&name=small", subText: "Elétrico"),

  Pessoa(nome: "Raichu",
   url: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/026.png", subText: "Elétrico"),
  
  Pessoa(nome: "Sandchurew", url: "https://assets.pokemon.com/assets/cms2/img/pokedex/full/027.png", subText: "Terrestre"),
  
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Minha Lista Dinâmica"),),
      body: ListView.builder(
        itemCount: pessoas.length,
        itemBuilder: (context, itemIndex){
          return ListTile(
            title: Text("${pessoas[itemIndex].nome}"),
            leading: TextButton(
              child: Image.network("${pessoas[itemIndex].url}", fit: BoxFit.contain),
              
              onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MinhaListaDinamica()));
              }
            )
            ,
            subtitle: Text("${pessoas[itemIndex].subText}"),
          ); 
        },
      ),  
    
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
          NetworkHelper helper = NetworkHelper(url:"http://localhost:8080/games");
          Game game = Game.fromJson(await helper.getData());
          print(game);

          /*
          RandomUsers randomUsers = RandomUsers.fromJson(await helper.getData());
          //Colocar mais usuários
          randomUsers.results!.forEach((element) {
            pessoas.add(
              Pessoa(nome: "${element.name!.first} ${element.name!.last}",
              subText: element.email!, 
              url: element.picture!.medium!)
            );
          }); 
*//*
          game.results!.forEach((element) {
              Pessoa(
                nome: "${element.name!.title}",
                subText: "${element.developer!}",
                url: "https://pbs.twimg.com/media/FEaCjohXIAQPVgl?format=jpg&name=small" 
                );
          });
          */
          
          setState(() {});
        },
        child: Icon(Icons.search_sharp),
      ),     
    );
  }
}