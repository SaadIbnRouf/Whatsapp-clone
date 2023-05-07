import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:whatsapp/custom_widgets/my_circle_avatar.dart';
import 'package:whatsapp/dummy/call_list_dummy.dart';

class CallsTabView extends StatelessWidget {
  const CallsTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        callLink(),
        recent(),
        Expanded(
          child: ListView.builder(
              itemCount: callList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: MyCircleAvatar(icon: Icons.person_rounded),
                  title: Text(callList[index].contact),
                  subtitle: Row(
                    children: [
                      Icon(Icons.compare_arrows,
                          color: (callList[index].incoming)
                              ? Colors.red
                              : Colors.green),
                      Container(
                        margin: EdgeInsets.all(5.0),
                        child: Text(
                          '${DateFormat.MMMd().format(callList[index].dateTime)}, ${DateFormat.jm().format(callList[index].dateTime)}',
                        ),
                      ),
                    ],
                  ),
                  trailing: const Icon(
                    Icons.call,
                    color: Colors.teal,
                  ),
                );
              }),
        ),
        // ListView.builder(itemBuilder: itemBuilder),
      ],
    );
  }
}

Widget callLink() {
  return ListTile(
    onTap: () {
      print('Tapped!');
    },
    leading: MyCircleAvatar(icon: Icons.link),
    title: const Text(
      'Create call link',
    ),
    subtitle: const Text('Share a link for your whatsapp call'),
  );
}

Widget recent() {
  return Container(
    margin: const EdgeInsets.only(left: 10.0),
    padding: const EdgeInsets.all(10.0),
    child: const Text(
      'Recent Calls',
      style: TextStyle(
        color: Colors.teal,
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}
