import 'package:flutter/material.dart';
import 'package:smart_fashion/view/widget/a_set.dart';

class DetailASet extends StatefulWidget {
  DetailASet(
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
  State<StatefulWidget> createState() => _DetailASetState(
        size: _size,
        shirt: _shirt,
        shoe: _shoe,
        color: _color,
        paints: _paints,
      );
}

class _DetailASetState extends State<DetailASet> {
  late Size _size;
  late String _shirt;
  late String _paints;
  late String _shoe;
  late Color _color;
  late List<String> _products;
  _DetailASetState(
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

    _products = [_shirt, _paints, _shoe];
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
        ),
        itemCount: _products.length,
        itemBuilder: (context, index) {
          return AItem(
            size: _size,
            imageStr: _products[index],
            color: _color,
          );
        },
      ),
    );
  }
}
