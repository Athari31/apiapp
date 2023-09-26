import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/pro_models.dart';


class CartScreen extends StatefulWidget {
   CartScreen({super.key , });
   
     get products => null;


  @override
  State<CartScreen> createState() => _CartScreenState();
}

 class _CartScreenState extends State<CartScreen> {
  @override
 
 void initState(){
_getData();
super.initState();
 }

//  List<productsModel> CartProuducts=[] ; 

 _getData() async{

SharedPreferences  prefs = await SharedPreferences.getInstance();
for(var element in widget.products){
if (prefs.containsKey(element.name!)){
  // CartProuducts.add(element);
}

setState(() {
  
});


}

 }

  Widget build(BuildContext context) {
    return Scaffold(


    appBar: AppBar(
      backgroundColor: Colors.blueGrey,
      title: Text("Cart"),
    ),




    );











  
  }
}