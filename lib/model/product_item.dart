import 'package:flutter/material.dart';

class ProductItem {
  final Size _size;
  final String _shirt;
  final String _paints;
  final String _shoe;
  final Color _color;

  ProductItem(this._size, this._shirt, this._shoe, this._paints, this._color);

  get getSize => _size;
  get getShirt => _size;
}
