import 'package:flutter/material.dart';

import '../constants/colors.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.25,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: dividerColor)
        )
      ),
      padding: const EdgeInsets.all(10.0),
      child: const TextField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
          filled: true,
            fillColor: searchBarColor,
            prefixIcon: Padding(
              padding: EdgeInsets.all(10),
              child: Icon(Icons.search, color: Colors.grey,),
            ),
          hintText: "Search or start a chat",
          hintStyle: TextStyle(fontSize: 14),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          contentPadding: EdgeInsets.all(10.0)

        ),
      ),
    );
  }

}
