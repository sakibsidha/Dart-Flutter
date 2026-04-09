import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "MyApp", home: Home());
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Welcome to My App!",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w100),
        ),
        leading: Icon(Icons.home, color: Colors.amber),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Container(height: 50, width: 50, color: Colors.amber)),
          Text(
            "This will get to the left 'cus, we changed the default align to start.",
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text("This will be center!"),
          ),
          Center(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(height: 50, width: 50, color: Colors.amber),
                Container(height: 50, width: 50, color: Colors.red),
                Container(height: 50, width: 50, color: Colors.green),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
