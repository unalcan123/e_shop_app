import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      'name': 'Blazer',
      'picture': 'images/products/blazer1.jpeg',
      'old_price': 120,
      'price': 90,
    },
    {
      'name': 'Blazer',
      'picture': 'images/products/blazer2.jpeg',
      'old_price': 120,
      'price': 90,
    },
    {
      'name': 'Dress',
      'picture': 'images/products/dress1.jpeg',
      'old_price': 100,
      'price': 60,
    },
    {
      'name': 'Dress',
      'picture': 'images/products/dress2.jpeg',
      'old_price': 100,
      'price': 60,
    },
    {
      'name': 'Hills',
      'picture': 'images/products/hills1.jpeg',
      'old_price': 100,
      'price': 60,
    },
    {
      'name': 'Hills',
      'picture': 'images/products/hills2.jpeg',
      'old_price': 100,
      'price': 60,
    },
    {
      'name': 'Pants',
      'picture': 'images/products/pants1.jpg',
      'old_price': 100,
      'price': 60,
    },
    {
      'name': 'Pants',
      'picture': 'images/products/pants2.jpeg',
      'old_price': 100,
      'price': 60,
    },
    {
      'name': 'Shoe',
      'picture': 'images/products/shoe1.jpg',
      'old_price': 100,
      'price': 60,
    },
    {
      'name': 'Skt',
      'picture': 'images/products/skt1.jpeg',
      'old_price': 100,
      'price': 60,
    },
    {
      'name': 'Skt',
      'picture': 'images/products/skt2.jpeg',
      'old_price': 100,
      'price': 60,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return SingleProduct(
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
              prod_name: product_list[index]['name'],
              prod_picture: product_list[index]['picture']);
        });
  }
}

class SingleProduct extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  const SingleProduct(
      {Key? key,
      required this.prod_old_price,
      required this.prod_price,
      required this.prod_name,
      required this.prod_picture})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () {},
            child: GridTile(
              footer: Padding(
                padding: const EdgeInsets.only(left: 5),
                child: Container(
                  height: 55,
                  child: ListTile(
                    subtitle: Text(
                      '\$${prod_old_price}',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.lineThrough),
                    ),
                    title: Text(
                      '\$${prod_price}',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    leading: Text(
                      prod_name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  color: Colors.white.withOpacity(0.5),
                ),
              ),
              child: Image.asset(
                prod_picture,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
