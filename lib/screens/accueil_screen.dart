import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:connectivity/connectivity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class accueil extends StatefulWidget {

  const accueil ({Key ? key}) : super(key : key);

  @override
  State<accueil> createState() => _accueilState();

}

class _accueilState extends State<accueil> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle( fontSize: 30, fontWeight: FontWeight.bold);

  void _onItemTapped(int index){

    setState(() {
      _selectedIndex = index;
    });
  }

  static List<Widget> widgetOption = <Widget> [
    homepage(),
    statictic(),
    group(),
    parametre(),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(

    );
  }
}