import 'package:flutter/material.dart';
import 'package:whatsapp_ui/colors.dart';
import 'package:whatsapp_ui/contacts.dart';

class MobileScreenLayout extends StatelessWidget {
  const MobileScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: [
                Tab(text: "CHATS"),
                Tab(text: "STATUS"),
                Tab(text: "CALLS"),
              ]
          ),
        ),
        body: ListView.builder(
          shrinkWrap: true,
          itemCount: contacts.length,
            itemBuilder: (context, index){
              var contact = contacts[index];

              return Column(
                children: [
                  InkWell(
                    onTap: (){},
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: ListTile(
                        title: Text(contact["name"].toString(), style: const TextStyle(fontSize: 18),),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 8.0),
                          child: Text(contact["message"].toString(), style: const TextStyle(fontSize: 14, color: Colors.grey),),
                        ),
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage(contact["profilePic"].toString()),
                        ),
                        trailing: Text(contact["time"].toString(), style: const TextStyle(fontSize: 12, color: Colors.grey),),
                      ),
                    ),
                  ),
                  const Divider(color: dividerColor,)
                ],
              );
            }
        ),
      ),
    );
  }
}
