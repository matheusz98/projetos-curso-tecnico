import 'package:flutter/material.dart';
import 'package:loja/models/product.dart';
import 'package:loja/provider/product_list.dart';

class Home extends StatefulWidget {
  @override
  createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(
          "assets/images/logo.jpg",
        ),
        title: Text(
          "Ofertas do dia!",
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView.builder(
        itemBuilder: builder,
        itemCount: listOfProducts.length,
      ),
    );
  }

  Widget builder(BuildContext _, int index) {
    Product product = listOfProducts.elementAt(index);
    return ListTile(
      title: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Image.asset(
                  product.photo,
                  width: 100,
                  height: 100,
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        product.name.toString(),
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        product.description.toString(),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "R\$ ${product.price.toString()}",
                        style: TextStyle(
                          color: Color(0xFF0F79E3),
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.fees.toString(),
                            style: TextStyle(
                              color: Color(0xFF1087FF),
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          IconButton(
                            icon: Hero(
                              tag: product.isFavorite,
                              child: Icon(
                                (product.isFavorite) ? Icons.favorite : Icons.favorite_border,
                                color: Colors.red.shade400,
                                size: 20,
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                product.isFavorite = !product.isFavorite;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}