import 'package:flutter/material.dart';
import 'package:friendzy/data/database.dart';
import 'package:friendzy/widgets/interest_option.dart';
import 'package:friendzy/widgets/person_card.dart';
import 'package:google_fonts/google_fonts.dart';

import '../themes/light_theme.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

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
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(
                      Icons.nature,
                      size: 12,
                      color: Color(0xffDD88CF),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    Text(
                      'Indonesia',
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const SizedBox(
                      width: 4,
                    ),
                    const Icon(
                      Icons.arrow_drop_down,
                      size: 12,
                      color: Color(0xffDD88CF),
                    )
                  ],
                ),
                const Text(
                  'Discover',
                ),
              ],
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: lightTheme.primaryColor,
                  child: CircleAvatar(
                    radius: 29,
                    backgroundColor: const Color(0xffFDF7FD),
                    foregroundColor: Colors.black,
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        color: lightTheme.primaryColor,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: lightTheme.primaryColor,
                  child: CircleAvatar(
                    radius: 29,
                    backgroundColor: const Color(0xffFDF7FD),
                    foregroundColor: Colors.black,
                    child: IconButton(
                      icon: Icon(
                        Icons.settings,
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
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 96),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: db.personData.length,
                      itemBuilder: (context, index) {
                        List listData = db.personData;
                        Map<String, dynamic> data = listData[index];
                        return  Padding(
                          padding: EdgeInsets.only(right: 12),
                          child: PersonCard(
                            image: data['image'],
                            name: data['name'],
                            age: data['age'],
                            distance: data['distance'],
                            location: data['location'],
                          ),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Interest',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'View All',
                            style: GoogleFonts.poppins(
                              fontSize: 16,
                              color: const Color(0xffDD88CF),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      SizedBox(
                        height: 120,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: db.interestData
                                    .take((db.interestData.length / 2).ceil())
                                    .map((entry) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: InterestOption(
                                      text: entry,
                                      get: () {},
                                    ),
                                  );
                                }).toList(),
                              ),
                              const SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: db.interestData
                                    .skip((db.interestData.length / 2).ceil())
                                    .map((entry) {
                                  return Padding(
                                    padding: const EdgeInsets.only(right: 8),
                                    child: InterestOption(
                                      text: entry,
                                      get: () {},
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  Text(
                    'Around Me',
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      children: [
                        const TextSpan(text: 'People with '),
                        TextSpan(
                          text: '"Music"',
                          style: GoogleFonts.poppins(
                            color: const Color(0xffDD88CF),
                          ),
                        ),
                        const TextSpan(text: ' interest around you'),
                      ],
                    ),
                  ),
                  Image.asset(
                    'assets/images/map.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
