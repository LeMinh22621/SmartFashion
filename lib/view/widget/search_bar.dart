import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black26,
        ),
        color: Colors.white70,
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          SizedBox(width: 10),
          Icon(
            Icons.search_outlined,
            size: 30,
          ),
          SizedBox(width: 10),
          Flexible(
            fit: FlexFit.loose,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                filled: true,
                fillColor: Colors.white70,
                border: InputBorder.none,
              ),
            ),
          ),
          SizedBox(width: 16),
        ],
      ),
    );
  }
}
