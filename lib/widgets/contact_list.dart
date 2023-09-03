import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/contacts.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
                      radius: 30,
                    ),
                    trailing: Text(contact["time"].toString(), style: const TextStyle(fontSize: 12, color: Colors.grey),),
                  ),
                ),
              ),
              const Divider(color: dividerColor,)
            ],
          );
        }
    );
  }
}
