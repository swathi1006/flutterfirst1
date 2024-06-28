import 'package:flutter/material.dart';
import 'package:flutterfirst/api/products_api/controller/allProductsController.dart';
import 'package:flutterfirst/api/products_api/view/widget/productTile.dart';
import 'package:provider/provider.dart';


class HomeProductList extends StatelessWidget {

  void fetchData(BuildContext context){
    Provider.of<ProductProvider>(context,listen: false)
        .fetchData();
  }

  @override
  Widget build(BuildContext context) {

    fetchData(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Products"),
        backgroundColor: Colors.greenAccent,
      ),
      body:

      Consumer<ProductProvider>(
        builder: (context,provider,child) {
          return provider.isLoading == true
            ? const Center(
            child: Text("loading"),
          )
          : Padding(padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                  itemCount: provider.allProducts.products?.length??0,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: 0.8,
                      mainAxisSpacing: 0.2,
                      crossAxisCount: 2),
                  itemBuilder: (context,index){
                    return ProductTileAPI(
                      image: provider.allProducts.products?[index].images![0],
                      title: provider.allProducts.products?[index].title,
                      category: provider.allProducts.products?[index].category,
                      price: provider.allProducts.products?[index].price,
                      description: provider.allProducts.products?[index].description,
                    );
                  }),
          );
        }
      ),
    );
  }
}
