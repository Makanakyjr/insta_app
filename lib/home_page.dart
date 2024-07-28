import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <String> profileImages = [
    "images/naky.jpg",
    "images/tiger.jpeg",
    "images/lion.jpeg",
    "images/ahmed.jpg",
    "images/cat.jpeg",
    "images/eagle.jpg",
    "images/lizzy.jpg",
    "images/naky.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Image.asset("images/insta_title2.jpeg", height: 50,),
      actions: [IconButton(onPressed: () {},
       icon: const Icon(Icons.add_circle_outline),
       ),
       IconButton(onPressed: () {},
       icon: const Icon(Icons.favorite_border),
       ),
       IconButton(onPressed: () {},
       icon: const Icon(Icons.messenger_outline_sharp),
       ),

       
       
       
       ],
      
      ),
      body:  SingleChildScrollView(
        child: Column(children: [
          //STORY
          SingleChildScrollView(scrollDirection:Axis.horizontal, 
          child: Row(children: List.generate(8, (index) => Container(
            padding: EdgeInsets.all(10),
            child: CircleAvatar(
              backgroundImage: AssetImage(profileImages[index]) ),
          ),),),
          ),
        ],),
      ),
    );
  }
}