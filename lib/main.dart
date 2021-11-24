import 'package:flutter/material.dart';
void main () {

runApp(Myapp());

}


class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(

       home: Scaffold(
         appBar: AppBar(
           title:  Text("Madusha"),
         ),
         body:Center(
           child: Text("Hello World",
               style: TextStyle(fontSize: 20.0)),
         )
       ),
    );
  }


}
