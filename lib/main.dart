import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WidgetMenu(),
    );
  }
}

class WidgetMenu extends StatefulWidget {
  const WidgetMenu({super.key});

  @override
  State<WidgetMenu> createState() => _WidgetMenuState();
}

class _WidgetMenuState extends State<WidgetMenu> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, //number of tabs
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(250, 248, 237, 227),
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(20),
            child: TabBar(
              labelColor:
                  Color.fromARGB(250, 133, 88, 111), // selected text color
              unselectedLabelColor:
                  Color.fromARGB(248, 128, 126, 126), // Unselected text color
              tabs: <Widget>[
                Tab(
                  text: 'About Motion',
                ),
                Tab(
                  text: 'About You',
                ),
              ],
              indicatorPadding: EdgeInsets.all(10),
              indicatorColor: Color.fromARGB(250, 133, 88, 111),
              indicatorSize: TabBarIndicatorSize.label,
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            AboutMotion(),
            AboutMe(),
          ],
        ),
      ),
    );
  }
}

class AboutMotion extends StatelessWidget {
  //AboutMotionPage
  const AboutMotion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/motion.jpg',
                width: 250,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'What is MotionLab?',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Mobile Innovation Laboratory or commonly known as Motion Lab, is one of the laboratories from Faculty of Informatics of Telkom University.',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}

class AboutMe extends StatelessWidget {
  //AboutMePage
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/pas-foto.jpeg',
                  width: 100,
                ),
                const SizedBox(
                  width: 24,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text("Nama: Zahra Amiera Putri Sailendra"),
                    Text("Jurusan: S1 Informatika"),
                    Text("Kelas: IF 46 10"),
                    Text("Angkatan: 2022"),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2, color: Color.fromARGB(250, 223, 211, 195)),
                borderRadius: BorderRadius.circular(6),
              ),
              height: 90,
              width: 380,
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                      "I am a first year college student at Telkom University majoring in Informatics")
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2, color: Color.fromARGB(250, 223, 211, 195)),
                borderRadius: BorderRadius.circular(6),
              ),
              height: 90,
              width: 380,
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                      "I have learned the basics of HTML and CSS. Currently learning go, dart, and flutter "),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2, color: Color.fromARGB(250, 223, 211, 195)),
                borderRadius: BorderRadius.circular(6),
              ),
              height: 90,
              width: 380,
              padding: const EdgeInsets.all(5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                      "My outlook on Motion is that this Lab have a prominent capability and here I am able to study a programming language that I have intrest in which is dart and flutter from people that are expert on them. "),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
