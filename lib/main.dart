import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body : SafeArea(
          /*child: Container(
            child: Text("Hello World"),
            height: 300,
            width: 300,
            color: Colors.white,
            margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          ),*/
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80.0,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                    'https://images.alphacoders.com/130/1306217.jpg'
                  ),
                ),
                SizedBox(height: 10),
                Text(
                    'Nickname',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                SizedBox(height: 10),
                /*Container(
                  color: Colors.white,
                  margin: EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail,
                      color: Colors.blueAccent,),
                      SizedBox(width: 10),
                      Text('abcd@gmail.com'),
                    ],
                  ),
                )*/
                Card(
                  color: Colors.white,
                  margin: EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      color: Colors.blueAccent,
                    ),
                    title: Text(
                        'abcd@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blue.shade700,
                      ),
                    ),
                  ),
                ),
                ElevatedButton.icon(
                    onPressed: () async {
                      final player = AudioPlayer();
                      await player.play(AssetSource('soundzeta.mp3'));
                    },
                  icon: Icon(Icons.speaker),
                    label: Text('Click Me!'),
                ),
              ],
            ),
          ),
        ),
            backgroundColor: Colors.amber,
      ),
    );
  }
}

