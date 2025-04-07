import 'package:flutter/material.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false, 
    theme: ThemeData(
      appBarTheme: const AppBarTheme(elevation: 1.0, color: Colors.white),
    ),
    home: const MyHomePage(), 
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const HomePage(),
      bottomNavigationBar: BottomAppBar(
        color: Colors.black,
        child: Row(
        children: [
          const Spacer(),
          IconButton(icon: const Icon(Icons.home),
          onPressed:() {
            setState(() {
              currentPage = 0;
            });
          },
          color: currentPage == 0 ? Colors.white : const Color.fromRGBO(203, 73, 101, 1)
          ),
          const Spacer(),
           IconButton(icon: const Icon(Icons.search),
          onPressed:() {
             setState(() {
              currentPage = 1;
            });
          },
          color:  currentPage == 1 ? Colors.white : const Color.fromRGBO(203, 73, 101, 1),
          ),
          const Spacer(),
            IconButton(icon: const Icon(Icons.ondemand_video),
          onPressed:() {
             setState(() {
              currentPage = 2 ;
            });
          },
          color: currentPage == 2 ? Colors.white : const Color.fromRGBO(203, 73, 101, 1),
          ),
          const Spacer(),
            IconButton(icon: const Icon(Icons.card_travel),
          onPressed:() {
            setState(() {
              currentPage = 3;
            });
          },
          color: currentPage ==3 ? Colors.white : const Color.fromRGBO(203, 73, 101, 1),
        
          ),
          const Spacer(),
            IconButton(icon: const Icon(Icons.person),
          onPressed:() {
            setState(() {
              currentPage = 4;
            });
          },
          color: currentPage == 4 ? Colors.white :const Color.fromRGBO(203, 73, 101, 1),
          ),
          const Spacer(),
        ],
      ),),
    );
  }
}
