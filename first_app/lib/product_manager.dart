import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

//Create a new Stateful widget to manage products array
class ProductManager extends StatefulWidget {
  final Map<String, String> startingProduct;

  //Constructor to receive and set arguments
  //Curly braces indicate key of named arguments (this one has a default value)
  ProductManager({this.startingProduct});

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

//Create state
class _ProductManagerState extends State<ProductManager> {
  //Create variables
  List<Map<String, String>> _products = [];

  //Initialize state
  @override
  void initState() {
    super.initState();
    if (widget.startingProduct != null) {
    _products.add(widget.startingProduct); //widget gives you properties of parent widget!
    }
  }

  //Lifecycle hook determining if widget received external data
  @override
  void didUpdateWidget(ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

//Create a function to receive input props from other widgets
  void _addProduct(Map<String, String> product) {
    setState(() { //When _products changes, build() re-runs
      _products.add(product);
    });
  }

  //Build this component
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container( //Use container to wrap a widget in styling. Here, I'm wrapping the RaisedButton and including a margin
        margin: EdgeInsets.all(10.0), //Add a margin of 10px on all insets
        child: ProductControl(_addProduct) //Sending in a function this widget will need
      ),
      Expanded(child: Products(_products) //Products is throwing an exception when a ListView is rendered benheath another Widget. Therefore, we need to wrap Products
      )                                                   //in a Container to give it height bounds. Use "Expanded" to automate by using available space
    ]);
  }
}
