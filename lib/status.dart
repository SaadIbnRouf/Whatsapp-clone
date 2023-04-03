import 'package:flutter/material.dart';

class Status extends StatelessWidget {
  const Status({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        onPressed: () {},
        child: const Icon(Icons.camera_alt_rounded),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          myStatus(),
          myContainer(),
          recentUpdate(),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.lock,
                size: 14.0,
                color: Colors.black54,
              ),
              Text(
                'Your status updates are ',
                style: TextStyle(fontSize: 13.0),
              ),
              Text(
                'end-to-end emcrypted',
                style: TextStyle(
                  color: Color.fromRGBO(1, 94, 83, 1),
                  fontSize: 13.0,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget myStatus() {
  return ListTile(
    onTap: () {
      print('Tapped!');
    },
    leading: const CircleAvatar(
      backgroundColor: Color.fromRGBO(1, 94, 83, 1),
      child: Icon(
        Icons.person_add_alt_1,
        color: Colors.white,
      ),
    ),
    title: const Text(
      'My Status',
    ),
    subtitle: const Text('Tap to add status update'),
  );
}

Widget myContainer() {
  return Container(
    margin: EdgeInsets.only(left: 10.0),
    padding: EdgeInsets.all(10.0),
    child: const Text(
      'Recent Updates',
      style: TextStyle(
        color: Colors.teal,
        fontSize: 15.0,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}

Widget recentUpdate() {
  return ListTile(
      onTap: () {
        print('Tapped Whatsapp!');
      },
      leading: const CircleAvatar(
        backgroundColor: Color.fromRGBO(1, 94, 83, 1),
        child: Icon(
          Icons.notification_add,
          color: Colors.white,
        ),
      ),
      title: GestureDetector(
        onTap: () {
          print('Tapped whatsapp');
        },
        child: Row(
          children: [
            const Text(
              'Whatsapp',
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              child: const Icon(
                Icons.verified,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ));
}
