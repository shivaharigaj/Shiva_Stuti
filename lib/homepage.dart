// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:nrn_shivastuti/Models/bhajan.dart';
import 'package:nrn_shivastuti/single_bhajan.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Bhajan> bhajans = [
     Bhajan(
      name: "Mahabharat full story",
      imageUrl: 'assets/images/nagendra_haraya.jpg',
      audioUrl: 'assets/audio/Mahabharat Song  Krishna  Arjuna  Rap Song  Bhakti Song  Geeta saar  StarPlus.mp3',
    ),
    Bhajan(
      name: "Nagendra Haraya",
      imageUrl: 'assets/images/nagendra_haraya.jpg',
      audioUrl: 'assets/audio/nagendra_haraya.mp3',
    ),
    Bhajan(
      name: "Sarvopari premi shiv shankar",
      imageUrl: 'assets/images/1.jpg',
      audioUrl: 'assets/audio/1.mp3',
    ),
 
    Bhajan(
      name: "Shiva Tandav",
      imageUrl: 'assets/images/3.jpg',
      audioUrl: 'assets/audio/nagendra_haraya.mp3',
    ),
    Bhajan(
      name: "Lingastakam",
      imageUrl: 'assets/images/4.jpg',
      audioUrl: 'assets/audio/nagendra_haraya.mp3',
    ),
    Bhajan(
      name: "Shiv Shakti Se Hi Poorn Hai",
      imageUrl: 'assets/images/5.jpg',
      audioUrl: 'assets/audio/nagendra_haraya.mp3',
    ),
    Bhajan(
      name: "Bhola Bhandari",
      imageUrl: 'assets/images/6.jpg',
      audioUrl: 'assets/audio/nagendra_haraya.mp3',
    ),
    Bhajan(
      name: "Shivoham Shivoham",
      imageUrl: 'assets/images/7.jpg',
      audioUrl: 'assets/audio/nagendra_haraya.mp3',
    ),
    Bhajan(
      name: "Aadi Aananta",
      imageUrl: 'assets/images/8.jpg',
      audioUrl: 'assets/audio/nagendra_haraya.mp3',
    ),
    Bhajan(
      name: "Shivoham Shivoham",
      imageUrl: 'assets/images/9.jpg',
      audioUrl: 'assets/audio/nagendra_haraya.mp3',
    ),
    Bhajan(
      name: "Jatadhar Shiva sankhar",
      imageUrl: 'assets/images/10.jpg',
      audioUrl: 'assets/audio/nagendra_haraya.mp3',
    ),
    Bhajan(
      name: "Shivoham Shivoham",
      imageUrl: 'assets/images/11.jpg',
      audioUrl: 'assets/audio/nagendra_haraya.mp3',
    ),
    Bhajan(
      name: "Shivoham Shivoham",
      imageUrl: 'assets/images/12.jpg',
      audioUrl: 'assets/audio/nagendra_haraya.mp3',
    ),
    Bhajan(
      name: "Shivoham Shivoham",
      imageUrl: 'assets/images/13.jpg',
      audioUrl: 'assets/audio/nagendra_haraya.mp3',
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              padding: const EdgeInsets.all(0),
             
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/1.jpg',
                    fit: BoxFit.cover,
                    height: double.infinity,
                    width: double.infinity,
                  ),
                  const Positioned(
                    child: Text(
                      "Shiva Stuti",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    bottom: 20,
                    left: 20,
                  )
                ],
              ),
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
              title: const Text("Home"),
              leading: const Icon(Icons.home),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Songs"),
              leading: Icon(Icons.music_note),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("About"),
              leading: const Icon(Icons.info),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text("Contact"),
              leading: const Icon(Icons.phone),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: const Text(
          "Shiva Bhajan",
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: bhajans.length,
                  itemBuilder: (context, index) {
                    return Card(
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundImage: AssetImage(bhajans[index].imageUrl),
                        ),
                        title: Text(bhajans[index].name),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SingleBhajan(
                                bhajan: bhajans[index],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
