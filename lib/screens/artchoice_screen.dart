import 'package:flutter/material.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:connectivity/connectivity.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:qiuzpro/screens/accueil_screen.dart';
import 'package:qiuzpro/screens/getjson_screen.dart';

class artchoice extends StatefulWidget {

  const artchoice ({Key ? key}) : super(key : key);

  @override
  State<artchoice> createState() => _artchoiceState();

}

class _artchoiceState extends State<artchoice> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white,), onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => accueil()));
        },
        ),
        title: Text('QUIZ'),
      ),
      body: Scrollbar(child: ListView(
        children: <Widget>[
          Padding(padding: EdgeInsets.all(15),
            child: const Text('Dan'),
          ),
          Padding(padding: EdgeInsets.all(15),
            child: Column(
              children: <Widget> [
                SizedBox(
                  width: 60,
                  height: 20,
                ),
                Row(
                  children: <Widget> [
                    Expanded(child: InkWell(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => getjson()));
                      },
                      child: Container(
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                        color: Colors.green,
                        border: Border.all(width: 1, color: Colors.white),),
                        child: Center(child:Text('GO', style: TextStyle(fontSize: 20),)),
                      ),
                    )),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}