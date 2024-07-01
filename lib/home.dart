import 'package:flutter/material.dart';
import 'search.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation"),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
            BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label: "Profile"),
          ],
          selectedItemColor: Colors.green,
          elevation: 0,
          currentIndex: currentIndex,
          onTap: (index){
            setState(() {
              currentIndex=index;
            });
          },
      ),
    );
  }
}
