import 'package:apiapp/cubits/products/products_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'search_screens.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var cubit = ProductsCubit.get(context);
    cubit.getProducts();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SearchScreen(),
                    ));
              },
              icon: const Icon(Icons.search))
        ],
      ),
      body: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          return state is GetProductsLoadingState
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : state is GetProductsErrorState
                  ? const Center(
                      child: Text("Error"),
                    )
                  : GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                            children: [
                              Image.network(
                                cubit.products[index].image!,
                                height: 100,
                              ),
                              Text(
                                cubit.products[index].title!,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              Text(cubit.products[index].category!),
                              Text(cubit.products[index].price!),
                            ],
                          ),
                        );
                      },
                      itemCount: cubit.products.length,
                    );
        },
      ),
    );
  }
}