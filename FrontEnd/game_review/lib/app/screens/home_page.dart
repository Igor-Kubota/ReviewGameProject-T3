import 'package:flutter/material.dart';
import 'package:game_review/app/screens/game_page1.dart';
import 'package:game_review/app/screens/minha_lista_dinamica.dart';


class HomePage extends StatelessWidget {
 HomePage({ Key? key }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Game Review"),
      ),
      body:

      ListView(
        children: [
          ListTile(
            title: const Text("God Of War"),
            dense: true,
            visualDensity: VisualDensity(vertical: 3),
            leading: TextButton(
              child: Image.network("https://upload.wikimedia.org/wikipedia/pt/8/82/God_of_War_2018_capa.png",fit: BoxFit.fill,),
              
              onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => MinhaListaDinamica()));
              }
            ),
            
            subtitle: const Text("Sony"),
          ),
          
          ListTile(
            title: Text("HitMan"),
            dense: true,
            visualDensity: VisualDensity(vertical: 3), 
            leading: TextButton(
              style: TextButton.styleFrom(fixedSize: Size.fromHeight(500)),

              child: Image.network("https://upload.wikimedia.org/wikipedia/pt/1/1e/Hitman_2016_capa.png", fit: BoxFit.contain,),

              onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => GamePage1()));
              }
            ),
            
            subtitle: Text("Sony"),
          ),
        ],
      ),    
    );
  }
}

 /*

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kindacode.com'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),

        
        children: GridView.builder(
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20),
            itemCount: myProducts.length,
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                alignment: Alignment.center,
                child: Text(myProducts[index]["name"]),
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(15)),
              );
            }),
      ),
    );
  }
}
*/