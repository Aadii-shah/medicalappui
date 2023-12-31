// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {

  final String doctorImagePath;
  final String rating;
  final String doctorName;
  final String doctorTitle;

  DoctorCard({
  required this.doctorImagePath, 
  required this.rating, 
  required this.doctorName,
  required this.doctorTitle});



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Container(
        padding: EdgeInsets.all(20),
            decoration: BoxDecoration(color: Colors.deepPurple[100],
              borderRadius: BorderRadius.circular(12),
              ),
              child: 
            Column(
              children: [
                // picture of doctor
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(doctorImagePath,
                  height: 100),
                ),

                SizedBox(height: 10,
                ),
    
                // rating 
                Row(children: [
                  Icon(Icons.star,
                  color: Colors.yellow[600],),
                  Text(rating,
                  style: TextStyle(fontWeight: FontWeight.bold),),
                ],
                ),

                 SizedBox(height: 10,
                ),
    
                // doctor name 
                Text(doctorName,
                style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 18),
                ),

                SizedBox(height: 5,
                ),
    
                // doctor title
                Text(doctorTitle),
    
    
    
    
            ],
            ),
            ),
    );
  }
}