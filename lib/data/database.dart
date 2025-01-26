class Database {
  List<String> interestData = [
    "⚽️ Football",
    "🍃 Nature",
    "🗣 Language",
    "👗 Fashion",
    "📸 Photography",
    "🎵 Music",
    "✍🏻 Writing",
  ];

  List<Map<String, dynamic>> storyData = [
    {
      "name": "My Stroy",
      "image": "assets/images/myprofile.png",
    },
    {
      "name": "Selena",
      "image": "assets/images/profile1.png",
    },
    {
      "name": "Clara",
      "image": "assets/images/profile2.png",
    },
    {
      "name": "Fabian",
      "image": "assets/images/profile3.png",
    },
    {
      "name": "George",
      "image": "assets/images/profile4.png",
    },
    {
      "name": "John",
      "image": "assets/images/profile5.png",
    },
  ];

  List<Map<String, dynamic>> personData = [
    {
      "image": "assets/images/person1.png",
      "name": "Halima",
      "age": 19,
      "location": "BERLIN",
      "distance": 16
    },
    {
      "image": "assets/images/person2.png",
      "name": "Vanessa",
      "age": 18,
      "location": "MUNICH",
      "distance": 4.8
    },
    {
      "image": "assets/images/person3.png",
      "name": "James",
      "age": 20,
      "location": "HANOVER",
      "distance": 2.2
    },
    {
      "image": "assets/images/person4.png",
      "name": "Kate",
      "age": 21,
      "location": "KOLN",
      "distance": 12.5,
    },
  ];

  List<Map<String, dynamic>> postData = [
    {
      "name": "Miranda Kehlani",
      "profilePict": "assets/images/postPerson1.png",
      "location": "STUTTGART",
      "caption":
          "If you could live anywhere in the world, where would you pick?",
      "postPict": "assets/images/post1.png",
      "type": "🏝 Travel",
    },
    {
      "name": "Brandon Aminoff",
      "profilePict": "assets/images/postPerson2.png",
      "location": "HAMBURG",
      "caption": "Who do you think will win Euro 2020?",
      "postPict": "assets/images/post2.png",
      "type": "⚽️ Football",
    }
  ];

  List<Map<String, dynamic>> matchesData = [
    {
      "image": "assets/images/matchPerson1.png",
      "name": "James",
      "age": 20,
      "location": "HANOVER",
      "distance": 1.3,
      "match": 100,
    },
    {
      "image": "assets/images/matchPerson2.png",
      "name": "Eddie",
      "age": 23,
      "location": "DORTMUND",
      "distance": 2,
      "match": 94,
    },
    {
      "image": "assets/images/matchPerson3.png",
      "name": "Brandon",
      "age": 20,
      "location": "HAMBURG",
      "distance": 2.5,
      "match": 89,
    },
    {
      "image": "assets/images/matchPerson4.png",
      "name": "Alfredo",
      "age": 20,
      "location": "HAMBURG",
      "distance": 2.5,
      "match": 80,
    },
    {
      "image": "assets/images/matchPerson5.png",
      "name": "Chris",
      "age": 24,
      "location": "LEIPZING",
      "distance": 2.5,
      "match": 88,
    },
    {
      "image": "assets/images/matchPerson6.png",
      "name": "Finn",
      "age": 21,
      "location": "COLOGNE",
      "distance": 2.9,
      "match": 92,
    },
  ];

  List<Map<String, dynamic>> chatData = [
    {
      'name': 'Alfredo Calzoni',
      'message':
          'What about the new jacket if I grab it in black instead of brown?',
      'profilePict': 'assets/images/chatProfilePict1.png',
      'time': '09:18',
    },
    {
      'name': 'Clara Hazel',
      'message': 'I know right 😉',
      'profilePict': 'assets/images/profile2.png',
      'time': '12:44',
    },
    {
      'name': 'Brandon Aminoff',
      'message':
          'I’ve already registered, can’t wait to see you guys at the event!',
      'profilePict': 'assets/images/postPerson2.png',
      'time': '08:06',
    },
    {
      'name': 'Amina Amina',
      'message':
          'It will have two lines of heading with bold text, followed by a detailed paragraph explaining the main idea.',
      'profilePict': 'assets/images/profile1.png',
      'time': '09:32',
    },
    {
      'name': 'Savanna Hall',
      'message':
          'It will have two lines of heading, styled in large bold fonts, and a subheading beneath for additional context.',
      'profilePict': 'assets/images/chatProfilePict5.png',
      'time': '06:21',
    },
    {
      'name': 'Sara Griff',
      'message':
          'Oh come on!! Is it really that great, or are you just hyping it up?',
      'profilePict': 'assets/images/chatProfilePict6.png',
      'time': '05:01',
    }
  ];
}
