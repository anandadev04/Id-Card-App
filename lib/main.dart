import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: IdCard(),
  ));
}

class IdCard extends StatefulWidget {
  const IdCard({super.key});

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  int sem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'My Id card',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.grey[850],
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (sem < 8) {
              sem += 1;
            } else {
              sem == 8;
            }
          });
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: CircleAvatar(
                backgroundImage: AssetImage(
                    '/Users/anandadev/StudioProjects/mini_project/assets/dp.png'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90,
              color: Colors.grey[800],
            ),
            const Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Anandadev.A',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30.0),
            const Text(
              'BRANCH',
              style: TextStyle(
                fontSize: 20,
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'ComputerScience Engineering (AI)',
              style: TextStyle(
                color: Colors.amberAccent[200],
                fontSize: 20.0,
              ),
            ),
            const SizedBox(height: 30.0),
            Text(
              '$sem',
              style: const TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Semester 4',
              style: TextStyle(
                  color: Colors.amberAccent[200],
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30.0),
            Row(
              children: [
                Icon(
                  Icons.mail,
                  size: 30.0,
                  color: Colors.grey[400],
                ),
                const SizedBox(width: 10),
                Text(
                  'adevd2004@gmail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
