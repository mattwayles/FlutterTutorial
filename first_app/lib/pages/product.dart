import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;
  final String imgUrl;
  final String price;
  
  ProductPage(this.title, this.imgUrl, this.price);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        body: Column(
          //mainAxisAlignment: MainAxisAlignment.center,    //VERTICAL ALIGNMENT
          crossAxisAlignment: CrossAxisAlignment.center,  //HORIZONTAL ALIGNMENT
          children: <Widget>[
            Image.asset(imgUrl),
            Center(
              child: Container(
                child: Text(price),
                padding: EdgeInsets.all(20.0),        //WIDGET PADDING
              ),
            ),
            RaisedButton( //Custom 'back' button, if ya need it
                color: Theme.of(context).accentColor,
                child: Text("BACK", style: TextStyle(color: Colors.white)), onPressed: () => Navigator.pop(context)),
          ],
        ));
  }
}
