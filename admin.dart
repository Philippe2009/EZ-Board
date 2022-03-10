/*
  - Programme créé par Philippe Chevelev pour l'ilot de Philippe Chevelev,
  Mark Goupil santer, Lucas Jacquet et Hery Diaz.
  - Maquette créée pour l'application de la EZ board, une affiche simple, 
  pratique, écologique et innovante.
*/
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, non_constant_identifier_names


// import des packages
import 'package:flutter/material.dart'; 
import 'dart:async';
//import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
// la fonction main s'éxeccute dès le lancement du programme
void main() {
  runApp(const MyApp());
}
// la classe de la page
class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);
//final <QuerySnapshot> posts = FirebaseFirestore.instance.collection("posts").snapshots();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "EZ BOARD AMIN",
      home: Scaffold(
        // la appBar
        appBar: AppBar(
          // le titre de la app bar
          title: Text("EZ BOARD ADMIN",
          style: TextStyle(
            color: Colors.black
          ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Column(
        
          children: [
            Text("Tableau de bord:",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            ),
          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)),  
            child: Container(
              padding: EdgeInsets.all(50),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(left: 1000),),
                  Text("Problèmes: 2",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                  ),
                  Text("Vous pouvez voir les problèmes ci dessous:")
                ],
              ),
            ),
          ),
          Text("Problèmes:",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
          ),
          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)), 
           child: Column(children: [
              Text("B00S00P00Dp, ne s'allume plus, 15/02/22 M. DuProcesseur")
            ],)
          ),
          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)), 
           child: Column(children: [
              Text("BcdiScdiP7De, n'a plus d'internet, 19/04/22 Mme. DeCore")
            ],)
          ),
          Image.asset('assets/schoolImage.png'),
          Text("BcdiScdiP7De", style:  TextStyle(
            fontSize: 15,
            
          ),)
          
        ],
        ),
        ),
    );
  }
}
class ListPage extends StatefulWidget {
  const ListPage({ Key? key }) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  Future getPosts() async {
    //var firestore = FirebaseFirestore.instance;
    //QuerySnapshot qn = await firestore.collection("posts").get();
    //return qn.docs;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(100),
      //child: StreamBuilder<QuerySnapshot>(stream: posts,builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot){
        /*
        if(snapshot.hasError){
          return Text("Il y a eu un problème...", style: TextStyle(fontSize: 100),);
        }
        if(snapshot.connectionState == ConnectionState.waiting){
          return Text("Loading...");
        }
        final data = snapshot.requireData;
        return ListView.builder(
          itemCount: data.size,
          itemBuilder: (context, index){
            return Text("index : ${data.docs[index]["ID"]}");
          },
        );
      }
      
    )*/);
  }
}
//final Stream<QuerySnapshot> posts = FirebaseFirestore.instance.collection("posts").snapshots();
class home extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return Column(
        
          children: [
            Text("Tableau de bord:",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold
            ),
            ),
          Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)),  
            child: Container(
              padding: EdgeInsets.all(50),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(left: 1000),),
                  Text("Problèmes: 2",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15
                  ),
                  ),
                  Text("Vous pouvez voir les problèmes ci dessous:")
                ],
              ),
            ),
          ),
          Text("Problèmes:",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold
          ),
          ),
          
            Column(children: [
              Text("B00S00P00Dp, ne s'allume plus, 15/02/22 M. DuProcesseur")
            ],)
          
          
        ],
        ); 
      
    
  }
}
/*
return Container(
      child: FutureBuilder(
        future: getPosts(),
        builder: (_,snapshot){
        if(snapshot.connectionState == ConnectionState.waiting){
          return Center(
            child: Text("Waiting..."),
          );
        } else {
           return ListView.builder(
             itemCount: 2,
             itemBuilder: (_,Index){
              return ListTile(
                title: Text(snapshot.data![""]),
              );
            });
        }
      },),
    );
*/
