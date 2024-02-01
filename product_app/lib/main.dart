import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo - 6488181',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Product layout demo home page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Product Listing')),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "Koala's March Chocolate",
                description:
                    "These delicious and adorable cookies are crunchy on the outside and filled with Chocolate flavor filling",
                price: 20,
                image: "koalaChoco.png"),
            ProductBox(
                name: "Koala's March Strawberry",
                description:
                    "These delicious and adorable cookies are crunchy on the outside and filled with Strawberry flavor filling",
                price: 20,
                image: "koalaStraw.png"),
            ProductBox(
                name: "Koala's March Bitter Chocolate",
                description:
                    "A perfect combination of bitter chocolate and biscuits blended with cocoa powder",
                price: 25,
                image: "koalaBitterChoc.png"),
            ProductBox(
                name: "Koala's March White Milk Chocolate",
                description:
                    "Rich taste of milk added cream cheese powder giving you irresistible pleasure",
                price: 20,
                image: "koalaWhiteChoc.png"),
            ProductBox(
                name: "Koala's March Ritch Matcha",
                description:
                    "Biscuits white milk cream matcha flavor filling Koala's March cute and variety character, fun and delicious for every bite",
                price: 25,
                image: "koalaMatcha.png"),
            ProductBox(
                name: "Koala's March Vanilla",
                description:
                    "Koala's March Vanilla Milk Biscuits are biscuits in the shape of small, deliciously filled koala bears with vanilla flavour",
                price: 20,
                image: "koalaVanilla.png"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.price,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset("assets/" + image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Price: " + this.price.toString()),
                        ],
                      )))
            ])));
  }
}
