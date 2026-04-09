import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Persistent Bottom Nav with Routing",
      initialRoute: '/page1',
      routes: {
        '/page1': (context) => Page1(),
        '/page2': (context) => Page2(),
        '/page3': (context) => Page3(),
      },
      home: Page1(),
    );
  }
}

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int _selectedIndex = 0;
  final List<String> _routes = ['/page1', '/page2', '/page3'];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pushNamed(context, _routes[_selectedIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Here Comes The Sun!")),
      body: Center(child: Text("Page 1")),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Page 1"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Page 2"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Page 3"),
        ],
      ),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int _selectedIndex = 1;
  final List<String> _routes = ['/page1', '/page2', '/page3'];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pushNamed(context, _routes[_selectedIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Here Comes The Sun!")),
      body: Center(child: Text("Page 2")),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Page 1"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Page 2"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Page 3"),
        ],
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int _selectedIndex = 2;
  final List<String> _routes = ['/page1', '/page2', '/page3'];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    Navigator.pushNamed(context, _routes[_selectedIndex]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Here Comes The Sun!")),
      body: Center(child: Text("Page 3")),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Page 1"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Page 2"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Page 3"),
        ],
      ),
    );
  }
}
