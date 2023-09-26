import 'package:apiapp/screens/main_screen.dart';
import 'package:flutter/material.dart';

class Loginscreen extends StatelessWidget {
   Loginscreen({super.key});
   var controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
    
    body: Column(
    
      mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Row(
      children: [
        Container(
      
      margin: EdgeInsets.only(top: 80, left: 80),
      child:   Text("LOGIN HERE!",
      style: TextStyle(
      fontSize:35,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      ),
      ),
    ),
    
      ],
      ),
      SizedBox(height: 20,
      ),
       Container(
      
     margin: EdgeInsets.symmetric(horizontal:30, vertical: 10,),   
    
      child: TextField(
        controller: controller,
      decoration: InputDecoration(
      hintText: "Name or Email Address",
    
      prefixIcon: Icon(Icons.mail),
      ),
    
      
      ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal:30, vertical: 10),
    
        
        child: TextField(
        controller: controller,
      decoration: InputDecoration(
      hintText: "Enter Password",
    
      prefixIcon: Icon(Icons.lock_outline),
      ),
    
      ),
      ),
       
      SizedBox(height: 10,),
      Row(
      children: [
        Container(
      
     
      margin: EdgeInsets.only(top: 6, left: 20),
      child:   Text("Remamber me",
      style: TextStyle(
      fontSize:14,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      ),
      ),
    ),
    Container(
    
      margin: EdgeInsets.only(top: 6, left: 150),
      child: Text(
      "Forget password?",
      style: TextStyle(
        fontSize: 14,
        color: Colors.blueGrey,
        fontWeight: FontWeight.bold),
      ),)
        ],
    
      ),
      SizedBox(height: 20,),
    
    
     Container(
      width: 300,
      height: 50,
    
      
       child: ElevatedButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> MainScreen()));
     
       }, child: Text("Login",
       style: TextStyle(color: Colors.white),),
       style: ButtonStyle(
      
      backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),
     shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: 
     BorderRadius.only(
      
     )
     
     ))
      ),
      
       ),
     ),
     
    
    Row(
      
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
        
      margin: EdgeInsets.only(top: 20, left: 25),
      child:   Text("Don't have an account?",
      style: TextStyle(
      fontSize:13,
      fontWeight: FontWeight.bold,
      color: Colors.black,
      
      ),
      )
    ),
    
    Container(
     
      margin: EdgeInsets.only(top: 20, left: 5),
      child: Text(
      "Singnup here",
      style: TextStyle(
        fontSize: 12,
        color: Colors.blueGrey,
        fontWeight: FontWeight.bold),
      ),)
        ],
    
      ),
    ],
    
    ),
    
      
    ),
    );


  }
}
  