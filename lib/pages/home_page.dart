// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:medicalappui/utils/category_card.dart';
import 'package:medicalappui/utils/doctor_card.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
          // app bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              //name
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello,',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),

                  SizedBox(height: 8,),

                  Text('Aaditya,', 
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),),
                ],
              ),

              // profile picture
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(color: Colors.deepPurple[100],
                borderRadius: BorderRadius.circular(12)
                ),
                child: Icon(Icons.person),
              ),
            ],
            ),
          ),

          SizedBox(height: 25,),
      
          // card -> how do you feel
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Container(
              decoration: BoxDecoration(color: Colors.pink[100],
              borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(20),
              child: Row(
                children: [
          
                  // animation or cute picture
                  Container(
                    height: 100,
                    width: 100,
                    child: Lottie.network('https://assets6.lottiefiles.com/packages/lf20_42B8LS.json'),
                  ),

                  SizedBox(width: 20,),
          
                  // how do you feel + get started button
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Text('How do you feel?',
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 16,
                      ),
                      ),

                      SizedBox(height: 12,),

                      Text('Fill out your medical card right now',
                      style: TextStyle(
                      fontSize: 14,
                      ),
                      ),

                      SizedBox(height: 12,),

                      Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(color: Colors.deepPurple[300],
                        borderRadius: BorderRadius.circular(12)
                        ),
                        child: 
                        Center(
                          child: 
                          Text('Get Started', style: TextStyle(color: Colors.white),),
                      ),
                      )
                    ],),
                  )
          
                ],  
          
              ),
            ),
          ),

          SizedBox(height: 25,),


          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(color: Colors.deepPurple[100],
              borderRadius: BorderRadius.circular(12)),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: 'How can we help you?',
                ),
              ),
            ),
          ),

          SizedBox(height: 25,),

          // horizontal listview -> categories - dentist, etc
          Container(
            height: 80,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
              CategoryCard(icon: 'lib/icons/tooth.png', categoryName: 'Dentist',),
              CategoryCard(icon: 'lib/icons/pill.png', categoryName: 'Pharmacist',),
              CategoryCard(icon: 'lib/icons/surgeon.png', categoryName: 'Surgeon',),
            ],),

          ),

          SizedBox(height: 25,),
      
      
          // doctor list
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text('Doctor list',
              style: TextStyle(fontWeight: FontWeight.bold, 
              fontSize: 20,),
              ),
              Text('See all',
              style: TextStyle( fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.grey[500]),
              ),
            ],
            ),
          ),

          SizedBox(height: 25,),


          // card

          Expanded(child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
            DoctorCard(
              doctorImagePath: 'lib/images/doctor1.jpg',
              doctorName: 'Dr. Sarika',
              doctorTitle: 'Therapist, 5 y.e',
              rating: '4.9',
            ),

            DoctorCard(
              doctorImagePath: 'lib/images/doctor2.jpg',
              doctorName: 'Dr. Anoop Gupta',
              doctorTitle: 'Psychratic, 7 y.e',
              rating: '4.9',
            ),

            DoctorCard(
              doctorImagePath: 'lib/images/doctor3.jpg',
              doctorName: 'Dr. Ranjan Jha',
              doctorTitle: 'Orthopedic, 9 y.e',
              rating: '4.7',
            ),

            DoctorCard(
              doctorImagePath: 'lib/images/doctor1.jpg',
              doctorName: 'Dr. Sandeep Shah',
              doctorTitle: 'Neurologist, 3 y.e',
              rating: '4.3',
            ),
          ],
          ),
          )
          

      
      
      
          // bottom app bar
      
        ],
        ),
      ),
    );
  }
}