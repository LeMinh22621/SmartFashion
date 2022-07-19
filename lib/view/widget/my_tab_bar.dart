import 'package:flutter/material.dart';

class MyTabBar extends StatefulWidget {
  const MyTabBar({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> {
  late double _size;
  @override
  Widget build(BuildContext context) {
    _size = (MediaQuery.of(context).size.width / 5);
    return Container(
      margin: const EdgeInsets.only(top: 20),
      height: _size + 20,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _MyItem(
              imageStr: "assets/shirt.jpeg", size: _size, title: "clothers"),
          _MyItem(imageStr: "assets/trouser.jpg", size: _size, title: "paints"),
          _MyItem(imageStr: "assets/shoe.jpg", size: _size, title: "shoes"),
          _MyItem(imageStr: "assets/hat.jpg", size: _size, title: "hats"),
          _MyItem(imageStr: "assets/hat.jpg", size: _size, title: "hats"),
          _MyItem(imageStr: "assets/hat.jpg", size: _size, title: "hats"),
          _MyItem(imageStr: "assets/hat.jpg", size: _size, title: "hats"),
          _MyItem(imageStr: "assets/hat.jpg", size: _size, title: "hats"),
          _MyItem(imageStr: "assets/hat.jpg", size: _size, title: "hats"),
          _MyItem(imageStr: "assets/hat.jpg", size: _size, title: "hats"),
          _MyItem(imageStr: "assets/hat.jpg", size: _size, title: "hats"),
          _MyItem(imageStr: "assets/hat.jpg", size: _size, title: "hats"),
          _MyItem(imageStr: "assets/hat.jpg", size: _size, title: "hats"),
          _MyItem(imageStr: "assets/hat.jpg", size: _size, title: "hats"),
        ],
      ),
    );
  }
}

class _MyItem extends StatelessWidget {
  _MyItem(
      {required String imageStr,
      required double size,
      required String title,
      Key? key})
      : super(key: key) {
    _imageStr = imageStr;
    _size = size;
    _title = title;
  }
  late String _imageStr, _title;
  late double _size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: _size + 20,
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        children: [
          Flexible(
            child: Container(
              height: _size,
              width: _size,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.black38,
                ),
                image: DecorationImage(
                  image: AssetImage(_imageStr),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          Text(
            _title,
            textAlign: TextAlign.right,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              fontFamily: "Courier",
            ),
          ),
        ],
      ),
    );
  }
}
