import 'package:flutter/material.dart';

class ASet extends StatefulWidget {
  const ASet({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ASetState();
}

class _ASetState extends State<ASet> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    String _shirt = "assets/images/shirt/TShirt1.jpg";
    String _paints = "assets/images/paints/paints1.jpg";
    String _shoe = "assets/images/shoe/shoe1.jpg";
    Color _color = Colors.white;

    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(Radius.circular(30)),
        border: Border.all(
          color: Colors.cyan.shade100,
        ),
        color: _color,
      ),
      child: Column(
        children: [
          AItem(
            size: Size(
              _size.width / 2.5,
              _size.width / 2.5,
            ),
            imageStr: _shirt,
            color: _color,
          ),
          AItem(
            size: Size(
              _size.width / 2.5,
              _size.width / 2.5,
            ),
            imageStr: _paints,
            color: _color,
          ),
          AItem(
            size: Size(
              _size.width / 5,
              _size.width / 5,
            ),
            imageStr: _shoe,
            color: _color,
          ),
        ],
      ),
    );
  }
}

class AItem extends StatelessWidget {
  AItem(
      {required Size size,
      required String imageStr,
      required Color color,
      Key? key})
      : super(key: key) {
    _size = size;
    _imageStr = imageStr;
    _color = color;
  }
  late Size _size;
  late String _imageStr;
  late Color _color;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: _size.width,
      width: _size.height,
      decoration: BoxDecoration(
        color: _color,
        image: DecorationImage(
          image: AssetImage(_imageStr),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
