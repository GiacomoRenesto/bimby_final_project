
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterbimby/container_bimby.dart';
import 'package:provider/provider.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailScreen extends StatefulWidget {
  DetailScreen();

  @override
  DetailScreenState createState() => DetailScreenState();
}

class DetailScreenState extends State<DetailScreen> {
  final GlobalKey<ScaffoldState> globalKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: globalKey,
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.only(left: 12),
          child:IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.green[700],
            ),
            onPressed: (){
              Navigator.pop(context);
            },
          ),
        ),
        centerTitle: true,
        title: Text(
          "DETTAGLIO",
          style: TextStyle(
              color: Colors.black,
              fontFamily: "bimby",
              fontSize: 18
          ),
          textAlign: TextAlign.center,
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            color: Colors.black,
            onPressed: () {  },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            color: Colors.black,
            onPressed: () {  },
          )
        ],
      ),
      body: Column(
        children: [
          ContainerBimby(
            Row(
              children: <Widget>[

      Padding(
      padding: EdgeInsets.all(8),
      child: new Row(
        children: <Widget>[
          new Icon(
            Icons.person_pin,
            color: Colors.green[800],
          ),
          SizedBox(
            width: 12,
          ),
          GestureDetector(
              onTap: (){
                Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => DetailScreen()));
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Mario Rossi",
                      style:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 24)),
                  Text("Via arcimabaldo 9000, 20137 Milano",
                      style: TextStyle(fontSize: 14))
                ],
              )
          ),
          Expanded(
            child: Container(),
          ),
          new Icon(
            Icons.content_paste,
            color: Colors.green[800],
          )
        ],
      ))
              ],
            )
          )
        ],
      ),
    );
  }

}