import 'package:flutter/material.dart';

import '../widgets/contact_list.dart';
import '../widgets/web_app_bar.dart';
import '../widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  WebAppBar(),
                  WebSearchBar(),
                  ContactList(),
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery
                .of(context)
                .size
                .width * 0.75,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("bg_image.png"),
                  fit: BoxFit.cover
                )
            ),
          ),

        ],
      ),
    );
  }
}
