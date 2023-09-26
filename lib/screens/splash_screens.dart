import 'package:apiapp/root/app_root.dart';
import 'package:apiapp/screens/login_screen.dart';
import 'package:flutter/material.dart';


class splashScreen extends StatelessWidget {
  const splashScreen({super.key});

 
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context,
       MaterialPageRoute(
        builder: (context) => Loginscreen()
        ));
    },);
      
    
     return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(child: 
      Column( mainAxisAlignment: MainAxisAlignment.center
        ,children: [
          // Image.asset("assets/insta2.png", width: 200,height: 200,
          // ),
          Text("HELLO", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30,),)
      ],)
     

      
      ),
    );
  }
}
