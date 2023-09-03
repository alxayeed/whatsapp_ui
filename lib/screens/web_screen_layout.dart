import 'package:flutter/material.dart';

import '../widgets/contact_list.dart';

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
                  // Web profile bar
                  // Web search bar
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
