import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:game_review/app/models/game_json.dart';
import 'package:http/http.dart' as http;

class GamePage3 extends StatefulWidget {
  const GamePage3({ Key? key }) : super(key: key);

  @override
  _GamePage3State createState() => _GamePage3State();
}

class _GamePage3State extends State<GamePage3> {
    
  Future<List<GameJson>> ReadJsonData() async{
    const url = "http://localhost:8080/games";
    final http.Response jsonData= await http.get(Uri.parse(url));

    final list = jsonDecode(jsonData.body) as List<dynamic>;

    return list.map((e) => GameJson.fromJson(e)).toList();
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text("Game Review"),
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
          return Card(
            child: Padding(
              padding: const EdgeInsets.only(top: 32.0, bottom: 32.0, left: 16.0, right: 16.0),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget> [
                Text(
                  items[index+1].name.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.cyan.shade200
                  )
                ),

                Text(
                  items[index+1].summary.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.cyan.shade200
                  )
                ),

                Text(
                  items[index+1].developer.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.cyan.shade200
                  )
                ),

                Text(
                  items[index+1].consoles.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.cyan.shade200
                  )
                ),

                Text(
                  items[index+1].release.toString(),
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.cyan.shade200
                  )
                ),
              ],
            ),
          )
        );
      },  
    ); 
               
           }else{
             return const Center(child: CircularProgressIndicator(),);
           }
         }
       ),
    );
  }
}