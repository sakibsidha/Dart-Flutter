import 'package:flutter/material.dart';

final ThemeData customeTheme=ThemeData(
 useMaterial3: true,
 colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 18, 214, 64),secondary: const Color.fromARGB(255, 51, 243, 33)),
 scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
 textTheme: const TextTheme(
   headlineLarge: TextStyle(
     fontSize: 32,
     fontWeight: FontWeight.bold,


   ),
   bodyLarge: TextStyle(
     fontSize: 16,
     color: Color.fromARGB(221, 212, 20, 20)
   )
 ),
 appBarTheme: AppBarTheme(
   centerTitle: true,
   //backgroundColor: Colors.blueAccent,
 ),
 elevatedButtonTheme: ElevatedButtonThemeData(
   style: ButtonStyle(
     backgroundColor: WidgetStatePropertyAll(Colors.blueAccent),
   )
 )
);
void main(){
 runApp(MaterialApp(
   theme: customeTheme,
   home: MyHome(),
 ));
}
class MyHome extends StatelessWidget {
 const MyHome({super.key});


 @override
 Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(title: Text("data"),),
     body: Center(
       child:Column(children:[
         Text("Hello",style: Theme.of(context).textTheme.bodyLarge,),
         ElevatedButton(onPressed: (){}, child: Text("data"))]
       )
      
     ),
   );
 }
}
