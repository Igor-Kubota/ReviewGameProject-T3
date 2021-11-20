import 'package:flutter/material.dart';
import 'package:game_review/app/screens/home_page.dart';
import 'package:game_review/app/screens/login_page.dart';
import 'package:game_review/app/screens/minha_lista_dinamica.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => const LoginPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const MinhaListaDinamica(),
      },

      theme: ThemeData(
        colorScheme: const ColorScheme.dark().copyWith(
          primary: Colors.deepPurple ,
          secondary: const Color(0XFF1F1B24),
          surface: Colors.deepPurple
        ),
      
        
        //brightness: Brightness.dark
      ),
      //home:const LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}   


/*Column(
        children: [
          Text("Maru"),
          Image.network("https://pbs.twimg.com/media/FEaCjohXIAQPVgl?format=jpg&name=small"),
          */
          