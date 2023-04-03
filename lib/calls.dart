import 'package:flutter/material.dart';
import 'models/call_list.dart';
import 'package:intl/intl.dart';

class Calls extends StatelessWidget {
  Calls({Key? key}) : super(key: key);
  var callList = [
    CallList('Maa', false, DateTime.now()),
    CallList('Bhaiya', true, DateTime.now()),
    CallList('+8801971902007', false, DateTime.now()),
    CallList('Selim Mama', true, DateTime.now()),
    CallList('Raisa', false, DateTime.now()),
    CallList('Raisa', true, DateTime.now()),
    CallList('Shuvo', true, DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: const Icon(Icons.add_call),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          callLink(),
          recent(),
          Expanded(
            child: ListView.builder(
                itemCount: callList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: const CircleAvatar(
                      backgroundColor: Colors.teal,
                      child: Icon(
                        Icons.person_rounded,
                        color: Colors.white,
                      ),
                    ),
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
                        // Container(
                        //   child: Text(
                        //     // DateFormat.yMMMEd().format(callList[index].dateTime),
                        //     DateFormat.jm().format(callList[index].dateTime),
                        //   ),
                        // ),
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
      ),
    );
  }
}

Widget callLink() {
  return ListTile(
    onTap: () {
      print('Tapped!');
    },
    leading: const CircleAvatar(
      backgroundColor: Color.fromRGBO(1, 94, 83, 1),
      child: Icon(
        Icons.link,
        color: Colors.white,
      ),
    ),
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
