import 'dart:math';

import 'package:flutter/material.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  List l1 = [
    "assets/Images/dice1.png",
    "assets/Images/dice2.png",
    "assets/Images/dice3.png",
    "assets/Images/dice4.png",
    "assets/Images/dice5.png",
    "assets/Images/dice6.png",
  ];
  List l2=[
    "assets/Images/dice1.png",
    "assets/Images/dice2.png",
    "assets/Images/dice3.png",
    "assets/Images/dice4.png",
    "assets/Images/dice5.png",
    "assets/Images/dice6.png",
  ];
  int amount=0;
  int i = 0;
  int j = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.amber,
        title: Text(
          "Dice app",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            color: Colors.white
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Total Value : $amount",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white,
                ),

              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                  "${l1[i]}",
                height: 100,
                width: 100,
              ),
              SizedBox(width:20,),
              Image.asset(
                "${l2[j]}",
                height: 100,
                width: 100,
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(onTap: () {
                Random rnd=Random();
                int y = rnd.nextInt(6);
                int z = rnd.nextInt(6);
                setState(() {
                  i=y;
                  j=z;
                  amount=i+j+2;
                });
              },
                child: Container(
                  height: 70,
                  width: 225,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.black),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                      "dice",
                    style: TextStyle(
                      fontSize:20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      backgroundColor: Colors.black,
    );
  }
}
