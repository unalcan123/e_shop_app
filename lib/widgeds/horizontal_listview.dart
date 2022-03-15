import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
              image_caption: 'Accessories',
              image_location: 'images/cats/accessories.png'),
          Category(
              image_caption: 'Dress', image_location: 'images/cats/dress.png'),
          Category(
              image_caption: 'Formal',
              image_location: 'images/cats/formal.png'),
          Category(
              image_caption: 'Informal',
              image_location: 'images/cats/informal.png'),
          Category(
              image_caption: 'Jeans', image_location: 'images/cats/jeans.png'),
          Category(
              image_caption: 'Shoe', image_location: 'images/cats/shoe.png'),
          Category(
              image_caption: 'Tshirt',
              image_location: 'images/cats/tshirt.png'),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;
  const Category(
      {Key? key, required this.image_caption, required this.image_location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 120,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 100,
              height: 70,
            ),
            subtitle: Text(
              image_caption,
              style: TextStyle(
                  color: Colors.black54,
                  fontSize: 13,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
