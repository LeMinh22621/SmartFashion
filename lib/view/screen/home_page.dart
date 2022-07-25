import 'package:flutter/material.dart';
import 'package:smart_fashion/view/widget/a_set.dart';
import 'package:smart_fashion/view/widget/detail_a_set.dart';
import 'package:smart_fashion/view/widget/my_tab_bar.dart';
import 'package:smart_fashion/view/widget/product_item.dart';
import 'package:smart_fashion/view/widget/search_bar.dart';
import 'package:smart_fashion/view/widget/top_product_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size _size = Size(
      MediaQuery.of(context).size.width,
      MediaQuery.of(context).size.height / 4,
    );
    String _shirt = "assets/images/shirt/TShirt1.jpg";
    String _paints = "assets/images/paints/paints1.jpg";
    String _shoe = "assets/images/shoe/shoe1.jpg";
    Color _color = Colors.white;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade50,
        centerTitle: true,
        leading: Row(
          children: [
            IconButton(
              icon: const Icon(
                Icons.list_outlined,
                size: 30,
                color: Colors.black87,
              ),
              onPressed: () {},
            ),
          ],
        ),
        title: const Text(
          'APPNAME',
          style: TextStyle(
            color: Colors.black87,
            fontSize: 30.0,
          ),
          textAlign: TextAlign.center,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart_rounded,
              color: Colors.black87,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        color: Colors.grey.shade50,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Scaffold(
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SearchBar(),
                  MyTabBar(),
                  SizedBox(height: 10),
                  SizedBox(
                    child: Text(
                      "Trend Fashion",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        fontFamily: "IbarraRealNova",
                        fontStyle: FontStyle.normal,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  ProductItem(
                    size: _size,
                    shirt: _shirt,
                    paints: _paints,
                    shoe: _shoe,
                    color: _color,
                  ),
                  //TopProductList(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
