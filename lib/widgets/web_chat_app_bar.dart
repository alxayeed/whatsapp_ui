import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants/contacts.dart';

import '../constants/colors.dart';

class WebChatAppBar extends StatelessWidget {
  const WebChatAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.077,
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: const BoxDecoration(color: webAppBarColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.01),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(contacts[6]["profilePic"]!),
                  radius: 30.0,
                ),
              ),
              Text(contacts[6]["name"].toString(),style: const TextStyle(fontSize: 18.0),)
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: const Icon(Icons.search, color: Colors.grey,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert, color: Colors.grey,))
            ],
          )
        ],
      ),
    );

  }
}
