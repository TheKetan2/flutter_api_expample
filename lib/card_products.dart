import 'package:flutter/material.dart';

class Cart_product extends StatefulWidget {
  @override
  _Cart_productState createState() => _Cart_productState();
}

class _Cart_productState extends State<Cart_product> {
  var cart_list = [
    {
      "name": "Avocado",
      "img": "assets/text_bg.jpg",
      "price": 180,
      "ice-cream": "2 scoops",
      "sugar": "3 cube"
    },
    {
      "name": "Mango",
      "img": "assets/text_bg.jpg",
      "price": 180,
      "ice-cream": "1 scoops",
      "sugar": "2 cube"
    },
    {
      "name": "Avocado",
      "img": "assets/text_bg.jpg",
      "price": 180,
      "ice-cream": "2 scoops",
      "sugar": "3 cube"
    },
    {
      "name": "Mango",
      "img": "assets/text_bg.jpg",
      "price": 180,
      "ice-cream": "1 scoops",
      "sugar": "2 cube"
    },
    {
      "name": "Avocado",
      "img": "assets/text_bg.jpg",
      "price": 180,
      "ice-cream": "2 scoops",
      "sugar": "3 cube"
    },
    {
      "name": "Mango",
      "img": "assets/text_bg.jpg",
      "price": 180,
      "ice-cream": "1 scoops",
      "sugar": "2 cube"
    },
    {
      "name": "Avocado",
      "img": "assets/text_bg.jpg",
      "price": 180,
      "ice-cream": "2 scoops",
      "sugar": "3 cube"
    },
    {
      "name": "Mango",
      "img": "assets/text_bg.jpg",
      "price": 180,
      "ice-cream": "1 scoops",
      "sugar": "2 cube"
    },
    {
      "name": "Avocado",
      "img": "assets/text_bg.jpg",
      "price": 180,
      "ice-cream": "2 scoops",
      "sugar": "3 cube"
    },
    {
      "name": "Mango",
      "img": "assets/text_bg.jpg",
      "price": 180,
      "ice-cream": "1 scoops",
      "sugar": "2 cube"
    },
    {
      "name": "Avocado",
      "img": "assets/text_bg.jpg",
      "price": 180,
      "ice-cream": "2 scoops",
      "sugar": "3 cube"
    },
    {
      "name": "Mango",
      "img": "assets/text_bg.jpg",
      "price": 180,
      "ice-cream": "1 scoops",
      "sugar": "2 cube"
    },
    {
      "name": "Avocado",
      "img": "assets/text_bg.jpg",
      "price": 180,
      "ice-cream": "2 scoops",
      "sugar": "3 cube"
    },
    {
      "name": "Mango",
      "img": "assets/text_bg.jpg",
      "price": 180,
      "ice-cream": "1 scoops",
      "sugar": "2 cube"
    },
    {
      "name": "Avocado",
      "img": "assets/text_bg.jpg",
      "price": 180,
      "ice-cream": "2 scoops",
      "sugar": "3 cube"
    },
    {
      "name": "Mango",
      "img": "assets/text_bg.jpg",
      "price": 180,
      "ice-cream": "1 scoops",
      "sugar": "2 cube"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        title: Text("Card Card Example"),
      ),
      body: ListView.builder(
        itemCount: cart_list.length,
        itemBuilder: (context, index) {
          return new Single_cart_prod(
            prod_name: cart_list[index]['name'],
            prod_img: cart_list[index]['img'],
            prod_price: cart_list[index]['price'],
            prod_ice_cream: cart_list[index]['ice-cream'],
            prod_sugar: cart_list[index]['sugar'],
          );
        },
      ),
    );
  }
}

class Single_cart_prod extends StatelessWidget {
  final prod_name;
  final prod_img;
  final prod_price;
  final prod_ice_cream;
  final prod_sugar;

  Single_cart_prod(
      {this.prod_name,
      this.prod_img,
      this.prod_price,
      this.prod_ice_cream,
      this.prod_sugar});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: double.infinity,
        height: 80,
        child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Image.asset(prod_img, width: 50.0, height: 50.0),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      prod_name,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Rs:" + prod_price.toString(),
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black38),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Ice Cream",
                    ),
                    Text(
                      prod_ice_cream,
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Sugar",
                    ),
                    Text(
                      prod_sugar,
                      style: TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Expanded(
                        child: IconButton(
                            icon: Icon(Icons.arrow_drop_up), onPressed: () {})),
                    Expanded(
                        child: IconButton(
                            icon: Icon(Icons.arrow_drop_down),
                            onPressed: () {}))
                  ],
                ),
              )
            ]),
      ),
    );
  }
}
