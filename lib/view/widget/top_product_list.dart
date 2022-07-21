import 'package:flutter/material.dart';

class TopProductList extends StatefulWidget {
  const TopProductList({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _TopProductListState();
}

class _TopProductListState extends State<TopProductList> {
  @override
  Widget build(BuildContext context) {
    return ListView();
  }
}

class ProductItem extends StatefulWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: Image.network(""),
        )
      ],
    );
  }
}
