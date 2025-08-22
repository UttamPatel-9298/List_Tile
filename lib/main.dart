import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      title: "List Tile",
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> animals = [
    {
      "title": "Cat",
      "subtitle": "Popular domestic pet",
      "image": "https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg",
    },
    {
      "title": "Elephant",
      "subtitle": "The largest land animal",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/3/37/African_Bush_Elephant.jpg",
    },
    {
      "title": "Lion",
      "subtitle": "The king of the jungle",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/7/73/Lion_waiting_in_Namibia.jpg",
    },
    {
      "title": "Tiger",
      "subtitle": "Powerful striped big cat",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/5/56/Tiger.50.jpg",
    },
    {
      "title": "Giraffe",
      "subtitle": "Tallest land animal",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/9/9f/Giraffe_standing.jpg",
    },
    {
      "title": "Panda",
      "subtitle": "Loves eating bamboo",
      "image":
          "https://upload.wikimedia.org/wikipedia/commons/0/0f/Grosser_Panda.JPG",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List tile demo'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Center(
            child: Text(
              'Animals',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemCount: animals.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  child: ListTile(
                    leading: Image.network(
                      animals[index]['image']!,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(animals[index]['title']!),
                    subtitle: Text(animals[index]['subtitle']!),
                    trailing: Icon(Icons.navigate_next),
                    onTap: () {
                      print('Tapped');
                    },
                    onLongPress: () {
                      print('Long Press');
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
