

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterbimby/container_bimby.dart';
import 'package:flutterbimby/screens/bimby.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var bottomBarHeight = 40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.only(left: 12),
          child:Image(
          image: AssetImage("assets/bimby_logo.png"),
          ),
        ),
        centerTitle: true,
        title: Text(
          "HOME",
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
      body: Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(0.0),
        color: Colors.grey[200],
        child: Column(
          children: <Widget>[
            ContainerBimby(
              Row(
                children: <Widget>[
                  Text(
                      "Ciao",
                    style: TextStyle(fontSize: 22),
                  ),
                  SizedBox(width: 16,),
                  Text(
                    "Nome Cognome",
                    style: TextStyle(color: Colors.green[700], fontSize: 22),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Stack(
              children: <Widget>[
                ContainerBimby(
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text(
                              "Lista Clienti",
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.green[700]
                              ),
                            ),
                            Text(
                              "Accedi alla tua lista clienti,\n"
                                  "consulta i dettagli e crea la tua\n"
                                  "lista da lavorare.",
                            )
                          ]),
                      SizedBox(
                        width: 12,
                      ),
                      Icon(
                        Icons.supervisor_account,
                        color: Colors.green[700]
                      ),
                      SizedBox(
                        width: 24,
                      ),
                    ])),
                Positioned(
                    right: 0,
                    bottom: 0,
                    top: 0,
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => Bimby()));
                      },
                      child: Container(
                        padding: EdgeInsets.all(6),
                        color: Colors.green,
                        child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        ),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: AnimatedContainer(
          height: bottomBarHeight,
          color: Colors.green[700],
          duration: Duration(milliseconds: 200),
          child: GestureDetector(
            onTap: changeHeight,
            child: Row(
              children: <Widget>[
                SizedBox(width: 16,),
                Text(
                  "Bimby",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                Expanded(
                  child: Container(),
                ),
                Row(
                  children: <Widget>[
                    Text(
                        "Apri footer",
                      style: TextStyle(color: Colors.white),
                    ),
                    Icon(
                        bottomBarHeight != 40.0? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
                      color: Colors.white,
                    )
                  ],
                ),
                SizedBox(width: 16,)
              ],
            ),
          ),
        ),
      ),
    );
  }


  void changeHeight() {
    setState(() {
      if (bottomBarHeight >= 120.0){
        bottomBarHeight = 40.0;
      } else {
        bottomBarHeight = 120.0;
      }
    });
  }
}