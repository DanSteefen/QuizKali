import 'package:flutter/material.dart';
import 'dart:async';
import 'package:connectivity/connectivity.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Login extends StatefulWidget {
  const Login({Key? key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: FutureBuilder(
        future: FirebaseFirestore.instance.collection("point").get(),
        builder: (context, snapshot) {
          return SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 60.0),
                  child: Center(
                    child: Container(
                      width: 200,
                      height: 150,
                      child: Image.asset('assets/icon.png'),
                    ),
                  ),
                ),
                Container(
                  width: 250,
                  height: 500,
                  child: ElevatedButton(
                    child: Text("START"),
                    onPressed: () async {
                      checkInternetConnection();
                    },
                  ),
                ),
                SizedBox(height: 130),
              ],
            ),
          );
        },
      ),
    );
  }

  void checkInternetConnection() async {
    var result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.none) {
      _showDialog('NO internet', "You're not connected to a network");
    } else if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      // Navigate to Accueil widget or replace it with your desired widget
      Navigator.push(context, MaterialPageRoute(builder: (_) => Accueil()));
    }
  }

  _showDialog(title, text) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(text),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('ok'),
            )
          ],
        );
      },
    );
  }
}

class Accueil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Accueil'),
      ),
      body: Center(
        child: Text('Welcome to Accueil!'),
      ),
    );
  }
}
