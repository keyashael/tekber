import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'About Me',
      theme: ThemeData(
        brightness: Brightness.light,
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Colors.pinkAccent,
          background: Color(0xFFFFF0F5),
        ),
      ),
      home: AboutPage(),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 30),

                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/images1/profpic.png'),
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(height: 15),

                Text(
                  "Keysha Amelia 𐙚",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 218, 58, 138),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "5026221122 \n Here are a few of my favorite things 🤍",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFFDB7093),
                  ),
                ),
                SizedBox(height: 25),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      InterestButton(
                        text: "🎉 Fun Fact about Me!",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => FunFactPage()),
                          );
                        },
                      ),
                      SizedBox(height: 15),
                      InterestButton(
                        text: "🎶 My Ultimate Top Artists",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => TopArtistsPage()),
                          );
                        },
                      ),
                      SizedBox(height: 15),
                      InterestButton(
                        text: "💖 What I Love to Do!",
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => InterestsPage()),
                          );
                        },
                      ),
                      SizedBox(height: 30),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class InterestButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  InterestButton({required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0), 
        child: IntrinsicWidth(
          child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(vertical: 12), 
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              side: BorderSide(color: Colors.grey.shade300),
              elevation: 2,
              backgroundColor: Theme.of(context).colorScheme.background, 
              foregroundColor: Color.fromARGB(255, 218, 58, 138), 
            ),
            child: Center( 
              child: Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class FunFactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Fun Fact")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('assets/images1/clown.jpg', width: 250, height: 250), // Gambar fun fact jika ada
              SizedBox(height: 20),
              Text(
                "did you know? i absolutely can't stand clowns... they actually make me cry! 😱",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 218, 58, 138), fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                "and here's the twist... i'm actually the clown...? 🤡💔",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15, 
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TopArtistsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Top Artists")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Here are my Top 5 Favorite Artists:",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 15),
            _buildArtistCard(
              artistName: "Taylor Swift",
              description: "From country roots to global pop sensation. Some of her songs that I adore are 'The Great War', 'champagne problems', and 'illicit affairs'.",
              imageUrl: 'assets/images1/tay.jpg',
            ),
            _buildArtistCard(
              artistName: "Gracie Abrams",
              description: "Gracie's unique voice and emotional lyrics make her one of my favorite indie-pop artists. Top songs: 'I Love You, I'm Sorry', 'I Miss You, I'm Sorry', and 'That's So Trus'.",
              imageUrl: 'assets/images1/grac.jpg',
            ),
            _buildArtistCard(
              artistName: "Niki Zefanya",
              description: "An Indonesian-American artist who brings a soulful and electronic sound. My top songs: 'Autumn', 'Did you like her in the morning', and 'Facebook Friends'.",
              imageUrl: 'assets/images1/niki.jpg', 
            ),
            _buildArtistCard(
              artistName: "LANY",
              description: "LANY’s dreamy and emotional pop sound has captured my heart. Favorite songs: 'ILYSB', 'XXL', and 'Malibu Nights'.",
              imageUrl: 'assets/images1/lany.jpg', 
            ),
            _buildArtistCard(
              artistName: "Olivia Rodrigo",
              description: "Olivia's raw emotion and powerhouse vocals make her one of the best new pop artists. My favorite tracks: 'drivers license', 'vampire', and 'deja vu'.",
              imageUrl: 'assets/images1/oliv.jpg', 
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildArtistCard({required String artistName, required String description, required String imageUrl}) {
    return Center( 
      child: Card(
        margin: EdgeInsets.only(bottom: 15),
        elevation: 5,
        child: Container(
          width: 350,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column( 
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imageUrl,
                    width: double.infinity, 
                    height: 200, 
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  artistName,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  description,
                  style: TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class InterestsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Interests/Hobbies")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              "Here are some of my favorite hobbies and interests:",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
              textAlign: TextAlign.center, 
            ),
            SizedBox(height: 20), 

            _buildInterestCard(
              icon: Icons.tv,
              title: "Binge Watching Netflix 📺",
              description: "I love spending my weekends watching the latest Netflix series and movies. A few of my favorites are 'Gossip Girl', 'Bridgerton', and 'Gilmore Girls'.",
              backgroundColor: Colors.redAccent,
              imageUrl: 'assets/images1/netflix.png', 
            ),
            SizedBox(height: 15),

            _buildInterestCard(
              icon: Icons.sports_motorsports,
              title: "Watching F1 Races 🏎️",
              description: "Formula 1 races are an adrenaline rush! I love following the speed, the teams, and of course, the drama that unfolds every season.",
              backgroundColor: Colors.black,
              imageUrl: 'assets/images1/f1.png', 
            ),
            SizedBox(height: 15),

            _buildInterestCard(
              icon: Icons.music_note,
              title: "Attending Concerts 🎤",
              description: "There's nothing like the energy of a live concert. I enjoy seeing my favorite artists perform live. The vibe is unforgettable!",
              backgroundColor: Colors.blueAccent,
              imageUrl: 'assets/images1/concert.jpg', 
            ),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildInterestCard({
    required IconData icon,
    required String title,
    required String description,
    required Color backgroundColor,
    required String imageUrl, 
  }) {
    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 5,
        color: backgroundColor,
        child: Container(
          width: 350, 
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, 
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white.withOpacity(0.7),
                  ),
                  child: Icon(
                    icon,
                    size: 40,
                    color: backgroundColor,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  title,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imageUrl,
                    width: double.infinity,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  description,
                  style: TextStyle(fontSize: 14, color: Colors.white70),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
