import 'package:flutter/material.dart';
import 'package:friendzy/pages/home/make_friends_tab.dart';
import 'package:friendzy/pages/home/search_partners_tab.dart';
import 'package:friendzy/widgets/user_story.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/database.dart';
import '../../themes/light_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final db = Database();
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xffFDF7FD),
        body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            SliverAppBar(
              automaticallyImplyLeading: false,
              toolbarHeight: 85,
              backgroundColor: lightTheme.scaffoldBackgroundColor,
              floating: true,
              snap: true,
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
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    height: 120,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: db.storyData.length,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      itemBuilder: (context, index) {
                        Map<String, dynamic> data = db.storyData[index];
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
                                      child: Image.asset(
                                          'assets/images/myprofile.png'),
                                    ),
                                    const CircleAvatar(
                                      backgroundColor: Color(0xffDD88CF),
                                      radius: 10,
                                      child: Icon(Icons.add, size: 16),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 5),
                                Text("My Story",
                                    style: GoogleFonts.poppins(fontSize: 12)),
                              ],
                            ),
                          );
                        }
                        return UserStory(
                            name: data['name'], image: data['image']);
                      },
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      color: const Color(0xffF8E7F6),
                      borderRadius: BorderRadius.circular(16),
                    ),
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
                ],
              ),
            ),
          ],
          body: const TabBarView(
            children: [
              MakeFriendsTab(),
              SearchPartnersTab(),
            ],
          ),
        ),
      ),
    );
  }
}
