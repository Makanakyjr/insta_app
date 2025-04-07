import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <String> profileImages = [
    "images/ahm1.jpg",
    "images/liz3.jpg",
    "images/ahm.jpg",
    "images/liz3.jpg",
    "images/liz2.jpg",
    "images/liz.jpg",
    "images/naky.jpg",
    "images/lizzy5.jpg",
    "images/lizahm.jpg",
    "images/ahmed.jpg",
    "images/naky3.jpg",
    "images/eagle.jpg",
    "images/lizzy.jpg",
    "images/lizzy2.jpg",
  ];
  List <String> posts = [
    "images/lizz.jpg",
    "images/ahm1.jpg",
    "images/liz3.jpg",
    "images/liz2.jpg",
    "images/ahm.jpg",
    "images/liz.jpg",
     "images/lizzy2.jpg",
    "images/naky3.jpg",
    "images/naky2.jpg",
    "images/lizzy3.jpg",
    "images/ahmed.jpg",
    "images/lizzy4.jpg",
    "images/lizzy5.jpg",
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
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: const AssetImage("images/plain.jpg"),
                  child: CircleAvatar(
                    radius: 32,
                     backgroundImage: AssetImage(profileImages[index]),
                  ),
                   ),
                   const SizedBox(height: 7,),
                   const Text("Profile Images ",
                   style: TextStyle(fontSize: 12, color: Colors.black),
                   ),
              ],
            ),
          ),),),
          ),
          const Divider(),
          Column(
            children: List.generate(8, (index) => Column(
              children: [
                Row(children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: CircleAvatar(
                  radius: 20,
                  backgroundImage: const AssetImage("images/plain.jpg"),
                  child: CircleAvatar(
                    radius: 18,
                     backgroundImage: AssetImage(profileImages[index]),
                  ),
                   ),
                  ),
                  const Text("Profile"),
                  const Spacer(),
                  IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert),)
                ],
                  
                ),
                // IMAGE POST
                Image.asset(posts[index]),

              ],
            ),),
          ),
          
        ],),
      ),
    );
  }
}