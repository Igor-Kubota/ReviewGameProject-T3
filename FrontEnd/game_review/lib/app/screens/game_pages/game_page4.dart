import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:game_review/app/models/game_json.dart';
import 'package:game_review/app/screens/review_pages/review_page4.dart';
import 'package:http/http.dart' as http;


class GamePage4 extends StatefulWidget {
  const GamePage4({ Key? key }) : super(key: key);

  @override
  _GamePage4State createState() => _GamePage4State();
}

class _GamePage4State extends State<GamePage4> {
    
  Future<List<GameJson>> ReadJsonData() async{
    const url = "http://localhost:8080/games";
    final http.Response jsonData= await http.get(Uri.parse(url));

    final list = jsonDecode(jsonData.body) as List<dynamic>;

    return list.map((e) => GameJson.fromJson(e)).toList();
  }


  @override
  Widget build(BuildContext context) {

    return Container(
      decoration: const  BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0XFF0d324d),
            Color(0XFF000000)
          ],
        ),
      ), 

    child: Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: const Text("Game Details"),
      ),


       body: FutureBuilder(
         future: ReadJsonData(),

         builder: (context, data){
           if (data.hasError){
             return Center(child:Text("${data.error}"));

           }else if (data.hasData){
             var items = data.data as List<GameJson>;
             return ListView.builder(
               itemCount: 1,
               itemBuilder: (context, index){

          return Column(
            children: [
              Card(
              elevation: 0,
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.only(top: 32.0, bottom: 32.0, left: 16.0, right: 16.0),
              
              child: Container(
              
                color: Colors.transparent,

                height: 260,
                child: Card(
                  elevation: 0,
                  color: Colors.transparent,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 34,
                        child: Image.asset(
                          'assets/images/cyberpunk_2077_capa_v1.png',
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Expanded(
                        flex: 66,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                      Expanded(
                        flex: 15,
                        child: Text(
                          items[index+3].name.toString(),
                          style: TextStyle(
                          fontSize: 36,
                          color: Colors.cyan.shade100,
                        )
                      ),
                    ),

                      Expanded(
                        flex: 15,
                        child: Text(
                          "Developer: " + items[index+3].developer.toString(),
                          style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey.shade200,
                        )
                      ),
                    ),
                      Expanded(
                        flex: 15,
                        child: Text(
                          "Genre: " + items[index+3].genre.toString(),
                          style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey.shade200,
                        )
                      ),
                    ),

                      Expanded(
                        flex: 15,
                        child: Text(
                          "Score: " + items[index+3].score.toString(),
                          style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey.shade200,
                        )
                      ),
                    ),

                      Expanded(
                        flex: 15,
                        child: Text(
                          "Release Date: "+ items[index+3].release.toString(),
                          style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey.shade200,
                        )
                      ),
                    ),

                      Expanded(
                        flex: 15,
                        child: Text(
                          "Platform: "+ items[index+3].consoles.toString(),
                          style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey.shade200,
                          )
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )      
      )
    ),
    Card(
      
      elevation: 0,
      color: Colors.transparent,
      child: Padding(
              padding:const EdgeInsets.only(top: 32.0, bottom: 32.0, left: 16.0, right: 16.0),
              child: Column(
                children: [
                  TextButton.icon(
                  onPressed: ()async{
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => ReviewPage4()));
                },
        
                  icon: const Icon(Icons.sort), 
                  label: Text("Load Review Page",
                  style: TextStyle(
                          fontSize: 20,
                          color: Colors.blueGrey.shade200,
                    )
                  ),
                ),
              ],
            )
          )
        )
      ]
    );
  }
);
    

           }else{
             return const Center(child: CircularProgressIndicator(),);
           }
         }
       ),
      )
    );
  }
}
