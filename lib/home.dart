import 'package:firebaseAuth/budget.dart';
import 'package:flutter/material.dart';
import 'package:firebaseAuth/chat.dart';
import 'package:firebaseAuth/profile.dart';
import 'package:firebaseAuth/setting.dart';
import 'package:firebaseAuth/chatbot.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentTab = 0;
  final List<Widget> screens = [
    NotesScreen(),
    Budget(),
    profile(),
    Setting(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = NotesScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentScreen = ChatBot();
            currentTab = 5;
          });
        },
        child: Icon(Icons.support),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = NotesScreen();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text('Dashboard',
                          style: TextStyle(
                              color: currentTab == 0 ? Colors.blue : Colors
                                  .grey
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Budget();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.chat,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text('Budget',
                          style: TextStyle(
                              color: currentTab == 1 ? Colors.blue : Colors
                                  .grey
                          ),
                        )
                      ],
                    ),
                  ),

                ],

              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = profile();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.account_balance_sharp,
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text('Interest',
                          style: TextStyle(
                              color: currentTab == 3 ? Colors.blue : Colors
                                  .grey
                          ),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = Setting();
                        currentTab = 4;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.date_range,
                          color: currentTab == 4 ? Colors.blue : Colors.grey,
                        ),
                        Text('Pricing',
                          style: TextStyle(
                              color: currentTab == 4 ? Colors.blue : Colors
                                  .grey
                          ),
                        )
                      ],
                    ),
                  ),

                ],

              )
            ],
          ),
        ),
      ),
    );
  }
}