 // AnimatedContainer
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contine coneem " ),
        backgroundColor: Colors.black,
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected = !selected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            width: selected ? 200.0 : 100.0,
            height: selected ? 100.0 : 200.0,
            color: selected
                ? Color.fromARGB(255, 165, 211, 248)
                : Color.fromARGB(255, 37, 0, 0),
            alignment: selected ? Alignment.center : AlignmentDirectional.topCenter,
            duration: const Duration(seconds: 4),
            curve: Curves.linear,
            child: Image(
              image: NetworkImage(
                  'https://c4.wallpaperflare.com/wallpaper/256/101/286/fc-barcelona-logo-wallpaper-preview.jpg'),
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
