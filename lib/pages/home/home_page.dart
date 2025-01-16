import 'package:flutter/material.dart';
import 'package:friendzy/pages/discover_page.dart';
import 'package:friendzy/pages/home/make_friends_tab.dart';
import 'package:friendzy/pages/home/search_partners_tab.dart';
import 'package:friendzy/pages/matches_page.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../themes/light_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xffFDF7FD),
        appBar: AppBar(
          title: const Text(
            'Friendzy',
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: CircleAvatar(
                radius: 22,
                backgroundColor: lightTheme.primaryColor,
                child: CircleAvatar(
                  radius: 21,
                  backgroundColor: const Color(0xffFDF7FD),
                  foregroundColor: Colors.black,
                  child: IconButton(
                    icon: Icon(
                      Icons.notifications,
                      color: lightTheme.primaryColor,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 7,
                padding: const EdgeInsets.symmetric(horizontal: 10),
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.grey.shade300,
                              ),
                              CircleAvatar(
                                child: Icon(
                                  Icons.add,
                                  size: 16,
                                ),
                                backgroundColor: lightTheme.primaryColor,
                                radius: 10,
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "My Story",
                            style: GoogleFonts.poppins(fontSize: 12),
                          ),
                        ],
                      ),
                    );
                  }
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffDD88CF),
                          radius: 30,
                          child: CircleAvatar(
                            backgroundColor: lightTheme.scaffoldBackgroundColor,
                            radius: 28,
                            child: CircleAvatar(
                              radius: 25,
                              backgroundColor: Colors.grey.shade300,
                              child: Text(
                                "U$index",
                                style: const TextStyle(color: Colors.black),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "User $index",
                          style: GoogleFonts.poppins(fontSize: 12),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            PreferredSize(
              preferredSize: const Size.fromHeight(60.0),
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                    color: const Color(0xffF8E7F6),
                    borderRadius: BorderRadius.circular(16)),
                child: TabBar(
                  indicatorPadding: const EdgeInsets.all(4),
                  indicatorSize: TabBarIndicatorSize.tab,
                  dividerHeight: 0,
                  indicator: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  labelColor: const Color(0xff4B164C),
                  unselectedLabelColor: const Color(0xff4B164C),
                  labelStyle: const TextStyle(fontWeight: FontWeight.bold),
                  tabs: const [
                    Tab(text: "Make Friends"),
                    Tab(text: "Search Partners"),
                  ],
                ),
              ),
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  MakeFriendsTab(),
                  SearchPartnersTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
