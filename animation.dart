import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      title: "Home Page",
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController controller, controller2;
  late Animation animation, animation2;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    controller2 = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    );
    animation = ColorTween(
      begin: Colors.blue,
      end: Colors.red,
    ).animate(controller);
    animation2 = Tween<double>(begin: 0, end: 300).animate(controller2);
    controller.repeat(reverse: true);
    controller2.repeat(reverse: true);
  }

  @override
  void dispose() {
    controller.dispose();
    controller2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedBuilder(
        animation: animation,
        builder: (context, child) {
          return Stack(
            children: [
              Positioned(
                left: animation2.value,
                top: 100,
                child: Container(
                  width: 150,
                  height: 150,
                  color: animation.value,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
