import 'package:flutter/material.dart';
import 'package:game_review/app/screens/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: const ColorScheme.dark().copyWith(
          primary: Colors.deepPurple ,
          secondary: const Color(0XFF1F1B24),
          surface: Colors.deepPurple
        ),
      
        
        //brightness: Brightness.dark
      ),
      home:const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}   


/*Column(
        children: [
          Text("Maru"),
          Image.network("https://pbs.twimg.com/media/FEaCjohXIAQPVgl?format=jpg&name=small"),
          */
          