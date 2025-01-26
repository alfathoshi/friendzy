import 'package:flutter/material.dart';
import 'package:friendzy/pages/post_page.dart';
import 'package:friendzy/pages/discover_page.dart';
import 'package:friendzy/pages/matches/matches_page.dart';
import 'package:friendzy/pages/messages_page.dart';
import '../pages/home/home_page.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const HomePage(),
    const DiscoverPage(),
    const PostPage(),
    const MatchesPage(),
    const MessagesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 20),
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
                label: 'Discover',
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
                label: 'Post',
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
                label: 'Matches',
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
                label: 'Messages',
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
