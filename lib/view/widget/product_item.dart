import 'package:flutter/material.dart';
import 'package:smart_fashion/view/widget/a_set.dart';
import 'package:smart_fashion/view/widget/detail_a_set.dart';

class ProductItem extends StatefulWidget {
  late Size _size;
  late String _shirt;
  late String _paints;
  late String _shoe;
  late Color _color;

  ProductItem(
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
  State<StatefulWidget> createState() => _ProductItemState(
        size: _size,
        shirt: _shirt,
        paints: _paints,
        shoe: _shoe,
        color: _color,
      );
}

class _ProductItemState extends State<ProductItem> {
  late Size _size;
  late String _shirt;
  late String _paints;
  late String _shoe;
  late Color _color;

  _ProductItemState(
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
      height: _size.height,
      width: _size.width,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        border: Border.all(
          color: Colors.cyan.shade100,
        ),
        color: const Color.fromARGB(251, 145, 248, 255),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Row(
        children: [
          ASet(
            size: Size(_size.width / 2.5, _size.width / 2.5),
            shirt: _shirt,
            shoe: _shoe,
            color: _color,
            paints: _paints,
          ),
          DetailASet(
            size: Size(_size.width / 1.5, _size.width / 2.5),
            shirt: _shirt,
            paints: _paints,
            shoe: _shoe,
            color: _color,
          ),
        ],
      ),
    );
  }
}
