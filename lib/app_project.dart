import 'package:flutter/material.dart';
import 'dart:async';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double buttonSize = screenWidth / 3;
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) {
                  return const SettingsPage();
                },
              ),
            );
          },
          icon: const Icon(Icons.settings),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(192, 0, 0, 0),
            width: screenWidth,
            height: screenHeight / 6.25,
            child: const Center(
              child: Text(
                'Important notifications:',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'RobotoMono',
                    fontSize: 20),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: screenHeight * 7.2 / 10,
                    width: screenWidth / 2.0,
                    color: Colors.grey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: buttonSize,
                          width: buttonSize,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const EmergencyContacts();
                                  },
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              'Emergency Contacts',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: buttonSize,
                          width: buttonSize,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const MedicalReminders();
                                  },
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              'Medical Reminders',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: buttonSize,
                          width: buttonSize,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text(
                              'Entertainment',
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    height: screenHeight * 7.2 / 10,
                    width: screenWidth / 2.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: buttonSize,
                          width: buttonSize,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const ToDoList();
                                  },
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text('To Do List'),
                          ),
                        ),
                        SizedBox(
                          height: buttonSize,
                          width: buttonSize,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const Tutorials();
                                  },
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text('Tutorials'),
                          ),
                        ),
                        SizedBox(
                          height: buttonSize,
                          width: buttonSize,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (BuildContext context) {
                                    return const Bills();
                                  },
                                ),
                              );
                            },
                            style: TextButton.styleFrom(
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text('Bills'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          ListTile(
            tileColor: Colors.grey,
            title: const Text(
              'Account Details',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              color: Colors.white,
              onPressed: () {
                // Handle press event here
              },
            ),
          ),
          ListTile(
            tileColor: Colors.grey,
            title: const Text(
              'Accessibility',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              color: Colors.white,
              onPressed: () {
                // Handle press event here
              },
            ),
          ),
          ListTile(
            tileColor: Colors.grey,
            title: const Text(
              'Contact Us',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              color: Colors.white,
              onPressed: () {
                // Handle press event here
              },
            ),
          ),
          ListTile(
            tileColor: Colors.grey,
            title: const Text(
              'App Settings',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              color: Colors.white,
              onPressed: () {
                // Handle press event here
              },
            ),
          ),
          ListTile(
            tileColor: Colors.grey,
            title: const Text(
              'RanOutOfIdeas',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              color: Colors.white,
              onPressed: () {
                // Handle press event here
              },
            ),
          ),
        ],
      ),
    );
  }
}

class EmergencyContacts extends StatefulWidget {
  const EmergencyContacts({super.key});

  @override
  State<EmergencyContacts> createState() => _EmergencyContactsState();
}

class _EmergencyContactsState extends State<EmergencyContacts> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double buttonSize = screenWidth / 3;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency Contacts'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(255, 72, 71, 71),
            width: screenWidth,
            height: screenHeight / 6.25,
            child: const Center(
              child: Text(
                'Click On The Person You Want To Call',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'RobotoMono',
                    fontSize: 20),
                textAlign: TextAlign.end,
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: screenHeight * 9.0 / 10,
                    width: screenWidth / 2.0,
                    color: Colors.grey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: buttonSize,
                          width: buttonSize,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text('Partner'),
                          ),
                        ),
                        SizedBox(
                          height: buttonSize,
                          width: buttonSize,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text('Kid'),
                          ),
                        ),
                        SizedBox(
                          height: buttonSize,
                          width: buttonSize,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text('Friend'),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.grey,
                    height: screenHeight * 9.0 / 10,
                    width: screenWidth / 2.0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          height: buttonSize,
                          width: buttonSize,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text('Police'),
                          ),
                        ),
                        SizedBox(
                          height: buttonSize,
                          width: buttonSize,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text('Fire'),
                          ),
                        ),
                        SizedBox(
                          height: buttonSize,
                          width: buttonSize,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              shape: ContinuousRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                            ),
                            child: const Text('Ambulance'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ToDoList extends StatefulWidget {
  const ToDoList({super.key});

  @override
  State<ToDoList> createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  List toDoList = [
    ['Learn Web Dev', false],
    ['Drink Coffee', false],
  ];

  final TextEditingController _controller = TextEditingController();

  void addTask() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        toDoList.add([_controller.text, false]);
      });
      _controller.clear();
    }
  }

  void toggleTaskCompletion(int index, bool? value) {
    setState(() {
      if (value == true) {
        toDoList.removeAt(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('To Do List'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      backgroundColor: Colors.grey,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Add a new task',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  color: Colors.white,
                  onPressed: addTask,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: toDoList.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                          value: toDoList[index][1],
                          onChanged: (value) {
                            toggleTaskCompletion(index, value);
                          },
                        ),
                        Expanded(
                          child: Text(
                            toDoList[index][0],
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class MedicalReminders extends StatefulWidget {
  const MedicalReminders({super.key});

  @override
  State<MedicalReminders> createState() => _MedicalRemindersState();
}

class _MedicalRemindersState extends State<MedicalReminders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Medical Reminders'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
    );
  }
}

class Bills extends StatefulWidget {
  const Bills({super.key});

  @override
  State<Bills> createState() => _BillsState();
}

class _BillsState extends State<Bills> {
  List toDoList = [
    ['1920 - Electricity Bill', false],
    ['35000 - Medical Bill', false],
  ];

  final TextEditingController _controller = TextEditingController();

  void addTask() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        toDoList.add([_controller.text, false]);
      });
      _controller.clear();
    }
  }

  void toggleTaskCompletion(int index, bool? value) {
    setState(() {
      if (value == true) {
        toDoList.removeAt(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bills'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: 'Add The Bill',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: addTask,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: toDoList.length,
              itemBuilder: (BuildContext context, index) {
                return Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Checkbox(
                          value: toDoList[index][1],
                          onChanged: (value) {
                            toggleTaskCompletion(index, value);
                          },
                        ),
                        Expanded(
                          child: Text(
                            toDoList[index][0],
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Tutorials extends StatefulWidget {
  const Tutorials({super.key});

  @override
  State<Tutorials> createState() => _TutorialsState();
}

Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
  if (snapshot.hasError) {
    return Text("Error: ${snapshot.error}");
  } else {
    return const Text("");
  }
}

class _TutorialsState extends State<Tutorials> {
  Future<void> _launched = Future.value();
  Future<void> _launchyoutube(String url) async {
    final Uri uri = Uri.parse(url); // Convert String to Uri
    if (await canLaunchUrl(uri)) {
      await launchUrl(
        uri,
        mode: LaunchMode
            .externalApplication, // Use external application launch mode
      );
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tutorials'),
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          ListTile(
            tileColor: Colors.grey,
            title: const Text(
              'Help Center',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              color: Colors.white,
              onPressed: () {
                // Handle press event here
              },
            ),
          ),
          ListTile(
            tileColor: Colors.grey,
            title: const Text(
              'YouTube',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              color: Colors.white,
              onPressed: () {
                setState(() {
                  _launched = _launchyoutube("https://youtube.com");
                });
              },
            ),
          ),
          ListTile(
            tileColor: Colors.grey,
            title: const Text(
              'Google Chrome',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              color: Colors.white,
              onPressed: () {
                // Handle press event here
              },
            ),
          ),
          ListTile(
            tileColor: Colors.grey,
            title: const Text(
              'WhatsApp',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              color: Colors.white,
              onPressed: () {
                // Handle press event here
              },
            ),
          ),
          ListTile(
            tileColor: Colors.grey,
            title: const Text(
              'Gmail',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              color: Colors.white,
              onPressed: () {
                // Handle press event here
              },
            ),
          ),
          ListTile(
            tileColor: Colors.grey,
            title: const Text(
              'Gpay',
              style: TextStyle(color: Colors.white, fontSize: 30),
            ),
            trailing: IconButton(
              icon: const Icon(Icons.arrow_forward_ios),
              color: Colors.white,
              onPressed: () {
                // Handle press event here
              },
            ),
          ),
        ],
      ),
    );
  }
}
