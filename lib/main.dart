import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
      DevicePreview(

        builder: (context) => MyApp(), // Wrap your app
      ),


  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      useInheritedMediaQuery: true,// Set to true
      locale: DevicePreview.locale(context), // Add the locale here

      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:MyHomePage(),
    );
  }
}

class  MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter'),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed:(){},

        ),
        actions:  <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed:(){},

          ),

          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed:(){},

          )

        ],
        // flexibleSpace: Icon(
        //   Icons.photo_camera,
        //   size:75.0,
        //   color: Colors.white70,
        //
        // ),
        flexibleSpace: Image.asset("assets/01.jpg",fit: BoxFit.cover,),
      ),
    );
  }
}


