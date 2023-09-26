import 'package:apiapp/screens/main_screen.dart';
import 'package:apiapp/screens/product_screen.dart';
import 'package:apiapp/screens/splash_screens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubits/main/main_cubit.dart';
import '../cubits/products/products_cubit.dart';


class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => MainCubit()),
          BlocProvider(create: (context) => ProductsCubit()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          // home: ProductsScreen()
          home: splashScreen()
        ));
  }
}