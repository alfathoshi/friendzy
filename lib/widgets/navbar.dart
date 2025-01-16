import 'package:flutter/material.dart';
import 'package:friendzy/pages/blank.dart';
import 'package:friendzy/pages/discover_page.dart';
import 'package:friendzy/pages/matches_page.dart';
import 'package:friendzy/pages/messages_page.dart';
import '../pages/home/home_page.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  bool click = true;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
      if (_selectedIndex == 4) {
        click = false;
      } else {
        click = true;
      }
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const DiscoverPage(),
    const Blank(),
    const MatchesPage(),
    const MessagesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        margin: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: const Color(0xff752277).withOpacity(0.15),
              blurRadius: 40,
              offset: const Offset(8, 0),
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _navigateBottomBar,
            unselectedItemColor: Colors.grey,
            selectedItemColor: const Color(0xffDD88CF),
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(
                label: 'Home',
                icon: _selectedIndex == 0
                    ? const CircleAvatar(
                        backgroundColor: Color(0xffDD88CF),
                        child: Icon(
                          Icons.home,
                        ),
                      )
                    : const Icon(
                        Icons.home,
                      ),
              ),
              BottomNavigationBarItem(
                label: 'Search',
                icon: _selectedIndex == 1
                    ? const CircleAvatar(
                        backgroundColor: Color(0xffDD88CF),
                        child: Icon(
                          Icons.search,
                        ),
                      )
                    : const Icon(
                        Icons.search,
                      ),
              ),
              BottomNavigationBarItem(
                label: 'Community',
                icon: _selectedIndex == 2
                    ? const CircleAvatar(
                        backgroundColor: Color(0xffDD88CF),
                        child: Icon(Icons.add),
                      )
                    : const Icon(
                        Icons.add,
                      ),
              ),
              BottomNavigationBarItem(
                label: 'Notification',
                icon: _selectedIndex == 3
                    ? const CircleAvatar(
                        backgroundColor: Color(0xffDD88CF),
                        child: Icon(
                          Icons.people,
                        ),
                      )
                    : const Icon(
                        Icons.people,
                      ),
              ),
              BottomNavigationBarItem(
                label: 'Message',
                icon: _selectedIndex == 4
                    ? const CircleAvatar(
                        backgroundColor: Color(0xffDD88CF),
                        child: Icon(
                          Icons.chat_bubble,
                          size: 20,
                        ),
                      )
                    : const Icon(
                        Icons.chat_bubble,
                        size: 20,
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
