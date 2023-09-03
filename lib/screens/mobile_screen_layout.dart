import 'package:flutter/material.dart';
import 'package:whatsapp_ui/constants/colors.dart';
import 'package:whatsapp_ui/constants/contacts.dart';
import 'package:whatsapp_ui/widgets/contact_list.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: appBarColor,
          elevation: 0,
          title: const Text(
            "Whatsapp",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: false,
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.grey,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                )),
          ],
          bottom: const TabBar(
            indicatorColor: tabColor,
              indicatorWeight: 5.0,
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(icon: Icon(Icons.people_alt)),
                Tab(text: "Chats"),
                Tab(text: "Status"),
                Tab(text: "Calls"),
              ]
          ),
        ),
        body: const ContactList()
      ),
    );
  }
}
