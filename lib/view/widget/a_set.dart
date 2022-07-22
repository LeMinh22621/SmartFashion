import 'package:flutter/material.dart';
import 'package:smart_fashion/view/widget/product_item.dart';

class ASet extends StatefulWidget {
  ASet(
      {Key? key,
      required size,
      required shirt,
      required paints,
      required shoe,
      required color})
      : super(key: key) {
    _size = size;
    _shirt = shirt;
    _paints = paints;
    _shoe = shoe;
    _color = color;
  }
  late Size _size;
  late String _shirt;
  late String _paints;
  late String _shoe;
  late Color _color;

  @override
  State<StatefulWidget> createState() => _ASetState(
        size: _size,
        shirt: _shirt,
        shoe: _shoe,
        color: _color,
        paints: _paints,
      );
}

class _ASetState extends State<ASet> {
  late Size _size;
  late String _shirt;
  late String _paints;
  late String _shoe;
  late Color _color;

  _ASetState(
      {Key? key,
      required size,
      required shirt,
      required paints,
      required shoe,
      required color}) {
    _size = size;
    _shirt = shirt;
    _paints = paints;
    _shoe = shoe;
    _color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(Radius.circular(16)),
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
          const Text(
            "Sport",
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              fontFamily: "IbarraRealNova",
              fontStyle: FontStyle.italic,
            ),
          )
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
