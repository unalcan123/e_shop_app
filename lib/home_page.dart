import 'package:carousel_slider/carousel_slider.dart';

import 'package:e_shop_app/widgeds/carousel_widged.dart';
import 'package:e_shop_app/widgeds/drawer_widged.dart';
import 'package:e_shop_app/widgeds/horizontal_listview.dart';
import 'package:e_shop_app/widgeds/products_widget.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
              )),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_cart,
              ))
        ],
      ),
      drawer: NewWidgetDrawer(),
      body: ListView(
        children: <Widget>[
          NewWidgetCarousel(controller: _controller),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Categories',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              textAlign: TextAlign.left,
            ),
          ),
          HorizontalList(),
          Divider(
            height: 20,
          ),
          Text(
            'Categories',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            textAlign: TextAlign.left,
          ),
          Container(
            height: 390,
            child: Products(),
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
