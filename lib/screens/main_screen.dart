import 'package:apiapp/screens/cart_screens.dart';
import 'package:apiapp/screens/login_screen.dart';
import 'package:apiapp/screens/product_screen.dart';
import 'package:apiapp/screens/search_screens.dart';
import 'package:apiapp/screens/splash_screens.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int index = 0;
  List<Widget> screens = [
    // splashScreen(),
    // Loginscreen(),
    SearchScreen(),
    ProductsScreen(),
    CartScreen(),
    
  
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[index],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          type: BottomNavigationBarType.fixed,fixedColor: Colors.black,
          items: [
            //  BottomNavigationBarItem(icon: Icon(Icons.login), label: "LOGIN"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), label: "Home"),
                 BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_checkout), label: "Cart"),
    
           
          ],
          currentIndex: index,
          onTap: (value) {
            index = value;
            setState(() {});
          },
        ),
      ),
    );
  }
}

