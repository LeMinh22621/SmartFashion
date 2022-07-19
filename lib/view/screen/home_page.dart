import 'package:flutter/material.dart';
import 'package:smart_fashion/view/widget/my_tab_bar.dart';
import 'package:smart_fashion/view/widget/search_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
                children: [
                  SearchBar(),
                  MyTabBar(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
