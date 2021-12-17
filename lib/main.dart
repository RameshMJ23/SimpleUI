import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: SingleChildScrollView(
        child: Stack(
          children: <Widget>[
            const SizedBox(
              height: 250.0,
              width: double.infinity,
              child: Image(
                image: AssetImage("assets/thumb.jpg"),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15.0),
              margin: const EdgeInsets.fromLTRB(15, 200, 15, 15),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(10.0)
              ),
              child: Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15.0),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(left: 95.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:  [
                              const SizedBox(
                                width: 160.0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.0),
                                    child: Text(
                                      "ARR groups",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    contentPadding: EdgeInsets.only(left: 15.0),
                                    title: Text("Flutter tips and tricks"),
                                    subtitle: Text("Basics of dart and Flutter"),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                children: const [
                                  Text(
                                    "40",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "Subscribers",
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: const [
                                  Text(
                                    "400",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "Views",
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: const [
                                  Text(
                                    "50",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(
                                    "Visitors",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    margin: const EdgeInsets.only(left: 15.0),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(4,10),
                          blurRadius: 10,
                          color: Colors.black.withOpacity(0.5)
                        ),
                        BoxShadow(
                            offset: const Offset(0,0),
                            blurRadius: 10,
                            color: Colors.green.withOpacity(0.5),
                          spreadRadius: 20.0
                        )
                      ],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Image(
                      image: AssetImage(
                          "assets/profile.jpg"
                      ),
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              )
            ),
            const SizedBox(
              height: 25.0,
            ),
            Container(
              padding:const EdgeInsets.all(15.0),
              margin: const EdgeInsets.only(top: 420, left: 15, right: 15, bottom: 15.0),
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(15)
              ),
              child: Column(
                children: const [
                  ListTile(
                    title: Text("Channel Info"),
                  ),
                  Divider(),
                  ListTile(
                    title: Text("email"),
                    subtitle: Text("abc@gmail.com"),
                    leading: Icon(
                      Icons.email
                    ),
                  ),
                  ListTile(
                    title: Text("Instagram"),
                    subtitle: Text("https://Instagram.com/arrgroup.dev"),
                    leading: Icon(
                       LineIcons.itchIo
                    ),
                  ),
                  ListTile(
                    title: Text("About"),
                    subtitle: Text(
                        "We hope you find this channel useful.\nMosallas, is a group of 4 people who can do your projects well.\nAnd they will teach you their skills in this channel."),
                    leading: Icon(
                        Icons.help_outline
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
