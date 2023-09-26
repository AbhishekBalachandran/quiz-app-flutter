class Database {
  static List<List<Map>> quiz = [
    //  Gk
    [
      {
        'question': 'National Income estimates in India are prepared by',
        'options': [' Planning Commission', 'Reserve Bank of India', 'Central statistical organisation', ' Indian statistical Institute'],
        'answer': 2
      },
      {
        'question': 'The tropic of cancer does not pass through which of these Indian states ?',
        'options': [' Madhya Pradesh', ' West Bengal', 'Rajasthan', 'Odisha'],
        'answer': 3
      },
      {
        'question': 'Fathometer is used to measure',
        'options': [' Earthquakes', 'Rainfall', 'Ocean depth', 'Sound intensity'],
        'answer': 2
      },
      {
        'question': 'The purest form of iron is ',
        'options': [' wrought iron', 'steel', 'pig iron', 'nickel steel'],
        'answer': 0
      },
      {
        'question': 'Who is the author of the book "Freedom Behind Bars "',
        'options': ['  Kiran Bedi', 'Jawaharlal Nehru', 'Nelson Mandela', 'Sheikh Abdullah'],
        'answer': 0
      },
      {
        'question': 'Which river of India is called Vridha Ganga?',
        'options': [' Krishna', 'Godavari', 'Kaveri', 'Narmada'],
        'answer': 1
      },
      {
        'question': 'Which latitude passes through the middle of India?',
        'options': [' Equator', 'Arctic Circle', 'Tropic of Capricorn', 'Tropic of Cancer'],
        'answer': 3
      },
      {
        'question': 'Hydrogen bomb is based on the principle of  ',
        'options': [' nuclear fission', 'nuclear fusion', 'natural radioactivity', ' artificial radioactivity'],
        'answer': 1
      },
      {
        'question': 'Union Budget is always presented first in ________',
        'options': [' The Lok Sabha', ' The Rajya Sabha', 'Joint session of the Parliament', 'Meeting of the Union Cabinet'],
        'answer': 0
      },
      {
        'question': 'The blue colour of the clear sky is due to',
        'options': ['  Diffraction of light', ' Dispersion of light', ' Reflection of light', ' Refraction of light'],
        'answer': 1
      },
    ],

    // Flutter
    [
      {
        'question':
            'Which programming language is used to build Flutter applications?',
        'options': [' Kotlin', 'Dart', 'Java', 'Go'],
        'answer': 1
      },
      {
        'question': 'How many types of widgets are there in Flutter?',
        'options': ['2', '4', '6', '8+'],
        'answer': 0,
      },
      {
        'question':
            'When building for iOS, Flutter is restricted to an __ compilation strategy ',
        'options': [
          'AOT (ahead-of-time)',
          'JIT (Just-in-time)',
          'Transcompilation',
          'Recompilation'
        ],
        'answer': 0,
      },
      {
        'question': 'A sequence of asynchronous Flutter events is known as a:',
        'options': ['Flow', 'Current', 'Stream', 'Series'],
        'answer': 2,
      },
      {
        'question':
            'What element is used as an identifier for components when programming in Flutter? ',
        'options': ['Widgets', 'Keys', 'Elements', 'Serial'],
        'answer': 1
      },
      {
        'question':
            'What command would you use to compile your Flutter app in release mode? ',
        'options': [
          'Flutter --release',
          ' Flutter build --release',
          'Flutter run --release',
          'Flutter run \$release'
        ],
        'answer': 2
      },
      {
        'question':
            'Which widget type allows you to modify its appearance dynamically according to user input?',
        'options': [' Stateful widget', 'Stateless widget'],
        'answer': 0
      },
      {
        'question':
            'Which function will return the widgets attached to the screen as a root of the widget tree to be rendered on screen? ',
        'options': ['main()', ' runApp()', 'container()', 'root()'],
        'answer': 1
      },
      {
        'question':
            'What is the key configuration file used when building a Flutter project?',
        'options': ['pubspec.yaml', 'pubspec.xml', 'config.html', 'root.xml'],
        'answer': 0
      },
      {
        'question':
            'Which component allows us to specify the distance between widgets on the screen?',
        'options': ['SafeArea', 'SizedBox', 'table', 'AppBar'],
        'answer': 1
      },
    ],

    // IT
    [
      {
        'question': 'Which one is the first search engine in internet',
        'options': [' Google', 'Archie', 'Altavista', 'WAIS'],
        'answer': 1
      },
      {
        'question': 'Number of bit used by the IPv6 address',
        'options': [' 32 bit', '64 bit', '128 bit', '256 bit'],
        'answer': 2
      },
      {
        'question': 'Which one is the first web browser invented in 1990',
        'options': [' Internet Explorer', 'Mosaic', 'Mozilla', 'Nexus'],
        'answer': 3
      },
      {
        'question':
            'Which of the following programming language is used to create programs like applets?',
        'options': [' COBOL', 'C Language', 'Java', 'BASIC'],
        'answer': 2
      },
      {
        'question': 'First computer virus is known as',
        'options': [' Rabbit', 'Creeper Virus', 'Elk Cloner', 'SCA Virus'],
        'answer': 1
      },
      {
        'question':
            'Which one programming language is exclusively used for artificial intelligence',
        'options': [' C', 'Java', 'J2EE', 'Prolog'],
        'answer': 3
      },
      {
        'question': 'Firewall in computer is used for',
        'options': [
          ' Security',
          'Data Transmission',
          'Authentication',
          'Monitoring'
        ],
        'answer': 0
      },
      {
        'question': 'A dual layer Blue-ray Disc can store data upto',
        'options': [' 20 GB', '35 GB', '12 GB', '50 GB'],
        'answer': 3
      },
      {
        'question': 'Which of the following is not an operating system',
        'options': [' DOS', 'Mac', 'C', 'Linux'],
        'answer': 2
      },
      {
        'question':
            'Which of the following is not a database management software',
        'options': [' MySQL', 'Oracle', 'Sybase', 'COBOL'],
        'answer': 3
      },
    ],

    // Games
    [
      {
        'question': ' Which was the first country to host the Asian Games?',
        'options': [' China', 'Japan', 'India', 'Korea'],
        'answer': 2
      },
      {
        'question': 'Where is the headquarters of the International Olympic Committee located?',
        'options': [' Italy', 'France', 'Belgium', 'Switzerland'],
        'answer': 3
      },
      {
        'question': ' Nine time Wimbledon Champion of Women’s Singles Match in Tennis is:',
        'options': [' Iva Majoli', ' Jana Novotna', 'Martina Navratilova', 'Mary Joe Fernandaz'],
        'answer': 2
      },
      {
        'question': ' ‘Free throw’ is associated with:',
        'options': [' Basketball', 'Hockey', 'Volleyball', 'Football'],
        'answer': 0
      },
      {
        'question': ' Who won the first silver medal for an individual event at the Olympics for India?',
        'options': [' Wilson Jones', 'Leander Paes', 'Maharaja Karni Singh', 'Major R.S. Rathore'],
        'answer': 3
      },
      {
        'question': 'Which of the following awards is not associated with the field of sports?',
        'options': [' Arjuna Award', 'Dronachatya Award', 'Dhyan Chand Award', 'Norman Borlaug Award'],
        'answer': 3
      },
      {
        'question': 'Hopman Cup is related with which sports?',
        'options': [' Tennis', 'Football', 'Badminton', 'Hockey'],
        'answer': 0
      },
      {
        'question': 'The term ‘Pitcher’ is associated with:',
        'options': [' Basketball', 'Baseball', 'Boxing', 'Wrestling'],
        'answer': 1
      },
      {
        'question': 'The first World Cup in cricket was held in',
        'options': [' 1971', '1973', '1975', '1977'],
        'answer': 2
      },
      {
        'question': 'The word “Jump ball” is associated with',
        'options': [' Softball', 'Basketball', 'Netball', 'Baseball'],
        'answer': 2
      },
    ]
  ];

  static List<String> category = [
    "General Knowledge",
    "Flutter",
    "Information Technology",
    "Games"
  ];
}
