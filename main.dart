import 'package:ekart_sample_pranush/screens/home.dart';
import 'package:ekart_sample_pranush/widgets/searchField.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ekart_sample_by_pranush',
      theme: ThemeData.dark(),
      home: const MyHomePage(title: 'Ekart Demo'),
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
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 75,
          title: Text(widget.title),
          actions: <Widget>[
            SizedBox(
              child: Center(
                  child: SearchField(searchController: searchController)),
              width: 500,
            ),
            SizedBox(
              child: Center(
                  child: IconButton(
                icon: const Icon(
                  Icons.favorite_border_outlined,
                  size: 30,
                ),
                onPressed: () {},
              )),
              width: 50,
            ),
            SizedBox(
              child: Center(
                  child: IconButton(
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                ),
                onPressed: () {},
              )),
              width: 50,
            ),
            SizedBox(
              child: Center(
                  child: InkWell(
                onTap: () {},
                child: Container(
                  child: const Center(
                    child: Text(
                      "My Account",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(55)),
                ),
              )),
              width: 150,
            ),
            const SizedBox(
              width: 25,
            ),
          ],
        ),
        body: const SingleChildScrollView(
            child:
                HomePage()) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
