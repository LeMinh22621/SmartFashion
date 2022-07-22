import 'package:flutter/material.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _size.height,
      width: _size.width,
      child: Flexible(
        child: GridView.count(
          crossAxisCount: 2,
          children: const [
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
            FlutterLogo(),
          ],
        ),
      ),
    );
  }
}
