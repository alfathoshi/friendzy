import 'package:flutter/material.dart';
import 'package:friendzy/data/database.dart';
import 'package:friendzy/themes/light_theme.dart';
import 'package:friendzy/widgets/matches_card.dart';
import 'package:friendzy/widgets/matches_ring.dart';
import 'package:google_fonts/google_fonts.dart';

class MatchesPage extends StatelessWidget {
  const MatchesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final db = Database();
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            toolbarHeight: 85,
            backgroundColor: lightTheme.scaffoldBackgroundColor,
            floating: true,
            snap: true,
            centerTitle: true,
            title: const Text(
              'Matches',
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: lightTheme.primaryColor,
                  child: CircleAvatar(
                    radius: 19,
                    backgroundColor: const Color(0xffFDF7FD),
                    foregroundColor: Colors.black,
                    child: Icon(
                      Icons.settings,
                      color: lightTheme.primaryColor,
                    ),
                  ),
                ),
              )
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      MatchesRing(
                        type: 'Likes',
                        image: 'assets/images/profile1.png',
                        icon: Icons.favorite,
                      ),
                      MatchesRing(
                        type: 'Connect',
                        image: 'assets/images/profile2.png',
                        icon: Icons.comment,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        TextSpan(
                            text: 'Your Matches ',
                            style: GoogleFonts.poppins(
                              color: lightTheme.primaryColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )),
                        TextSpan(
                          text: '50',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffDD88CF),
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
          SliverList.builder(
            itemCount: (db.matchesData.length / 2).ceil(),
            itemBuilder: (BuildContext context, int index) {
              Map<String, dynamic> data = db.matchesData[index + (index)];
              Map<String, dynamic> data2 = db.matchesData[index + (index + 1)];
              if (index == (db.matchesData.length / 2) - 1) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 120.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MatchesCard(
                        name: data['name'],
                        distance: data['distance'],
                        age: data['age'],
                        location: data['location'],
                        image: data['image'],
                        match: data['match'],
                      ),
                      MatchesCard(
                        name: data2['name'],
                        distance: data2['distance'],
                        age: data2['age'],
                        location: data2['location'],
                        image: data2['image'],
                        match: data2['match'],
                      ),
                    ],
                  ),
                );
              }
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MatchesCard(
                    name: data['name'],
                    distance: data['distance'],
                    age: data['age'],
                    location: data['location'],
                    image: data['image'],
                    match: data['match'],
                  ),
                  MatchesCard(
                    name: data2['name'],
                    distance: data2['distance'],
                    age: data2['age'],
                    location: data2['location'],
                    image: data2['image'],
                    match: data2['match'],
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
