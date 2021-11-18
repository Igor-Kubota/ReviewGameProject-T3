import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Game Review"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Maru"),
            leading: CircleAvatar(
              radius: 24.0,
              child: Image.network("https://pbs.twimg.com/media/FEaCjohXIAQPVgl?format=jpg&name=small", fit: BoxFit.contain,),

            ),
            subtitle: Text("Kunikida"),
          ),
        ],
      ),
    );
  }
}

/*Column(
        children: [
          Text("Maru"),
          Image.network("https://pbs.twimg.com/media/FEaCjohXIAQPVgl?format=jpg&name=small"),
          */
          