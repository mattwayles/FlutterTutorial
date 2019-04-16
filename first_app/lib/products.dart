import 'package:flutter/material.dart';

import './pages/product.dart';

class Products extends StatelessWidget {
  final List<Map<String, String>> products;

  //Constructor; Auto-sets products variable
  //Default to an empty array
  Products([this.products]);

//Function to direct the ListView Builder on how to build each item of the ListView
  Widget _buildProductItem(BuildContext context, int index) {
    return Card(
      //Map each item in products arr to a Card
      child: Column(children: <Widget>[
        Image.asset(products[index]["imgUrl"]), //Construct an Image widget that is configured to load an asset
        Text(products[index]["title"]),
        ButtonBar(alignment: MainAxisAlignment.center, children: <Widget>[
          FlatButton(
            child: Text("Details"),
            onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (BuildContext context) => ProductPage(products[index]["title"], products[index]["imgUrl"], products[index]["price"]),
                      ),
                ), //Navigator: Built-in tool for navigation! Provides built-in 'back' button for us
          )
        ]) //Auto-position multiple buttons
      ]),
    );
  }

  Widget _buildProductList() {
    Widget productCards = Center(child: Text("No Products"));

    if (products.length > 0) { 
      productCards = ListView.builder(
        //ListView Builder automatically lazily loads/lazily destroys elements as they're needed!
        itemBuilder: _buildProductItem,
        itemCount: products.length,
      );
    }

    return productCards; 
  }

  @override
  Widget build(BuildContext context) {
    return _buildProductList();
  }
}
