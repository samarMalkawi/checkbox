import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool flutterCourse = false;
  bool reactCourse = false;
  Image flutterImage = Image(image: NetworkImage(""));
  Image reactImage = Image(image: NetworkImage(""));
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
            child: Column(
          children: [
            Text(
              "Please selecet you Course!",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold),
            ),
            Divider(height: 35),
            CheckboxListTile(
                secondary: Icon(
                  Icons.book,
                  color: Colors.amber,
                ),
                subtitle: Text("based on dart programming",
                    style: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 20,
                        color: Colors.green[700])),
                title: Text(
                  "Flutter",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                value: flutterCourse,
                onChanged: ((val) {
                  setState(() {
                    flutterCourse = val!;
                    flutterImage = Image(
                        alignment: Alignment.center,
                        height: 100,
                        width: 100,
                        image: NetworkImage(
                            "https://www.swtestacademy.com/wp-content/uploads/2022/06/flutter.webp"));
                  });
                })),
            CheckboxListTile(
                secondary: Icon(
                  Icons.book,
                  color: Colors.amber,
                ),
                subtitle: Text(
                  "based on dart programming",
                  style: TextStyle(
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                      color: Colors.green[700]),
                ),
                title: Text(
                  "React",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold),
                ),
                value: reactCourse,
                onChanged: ((val) {
                  setState(() {
                    reactCourse = val!;
                    reactImage = Image(
                        alignment: Alignment.center,
                        height: 100,
                        width: 100,
                        image: NetworkImage(
                            "https://reactjs.org/logo-og.png"));
                  });
                })),
                flutterImage,
                reactImage,
          ],
        )),
      ),
    );
  }
}
