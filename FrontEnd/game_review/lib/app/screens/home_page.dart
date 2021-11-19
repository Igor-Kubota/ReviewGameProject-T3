import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Game Review"),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Maru"),
            leading: CircleAvatar(
              radius: 24.0,
              child: Image.network("https://pbs.twimg.com/media/FEaCjohXIAQPVgl?format=jpg&name=small", fit: BoxFit.contain,),

            ),
            subtitle: const Text("Kunikida"),
          ),
        ],
      ),
    );
  }
}