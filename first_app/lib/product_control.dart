import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
final Function addProductFunc;


ProductControl(this.addProductFunc);


  @override
  Widget build(BuildContext context) {
    return RaisedButton( //Add a Raised Button
          color: Theme.of(context).primaryColor, //Use the context theme provided in 'main.dart'
          onPressed: () { //With a press handler
            addProductFunc({"title": "Sweets", "imgUrl": "assets/food.jpg", "price": "\$3.50"}); //Pass data UP to the parent widget by passing the calling function DOWN from the parent widget to the child
          },
          child: Text("Add Product"), //And a title
        );
  }
}