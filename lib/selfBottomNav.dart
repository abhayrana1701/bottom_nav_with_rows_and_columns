import 'package:flutter/material.dart';

class SelfBottomNav extends StatefulWidget {
  const SelfBottomNav({super.key});

  @override
  State<SelfBottomNav> createState() => _SelfBottomNavState();
}

class _SelfBottomNavState extends State<SelfBottomNav> {

  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Self Made Bottom Nav Bar"),
        backgroundColor: Colors.green,
      ),
      body: Center(child: currentIndex==0 ? (Text("Home")) : currentIndex==1 ? (Text("Search")) : (Text("Profile")),),
      bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: BottomNavItem(icon: Icons.home, text: "Home",index: 0)),
                Expanded(child: BottomNavItem(icon: Icons.search, text: "Search",index: 1)),
                Expanded(child: BottomNavItem(icon: Icons.account_circle_outlined, text: "Profile",index: 2)),
              ],
            ),
          ),
    );
  }
  Widget BottomNavItem({required IconData icon, required String text, required int index}){
    return InkWell(
      onTap: (){
        setState(() {
          currentIndex=index;
        });
      },
      child: SizedBox(
        height:40,
        child: Container(
          color: index==currentIndex ? Colors.green : Colors.white,
          child: Column(
            children: [
              Icon(icon,color: index==currentIndex ? Colors.white : Colors.black),
              Text(text,style: TextStyle(color: index==currentIndex ? Colors.white : Colors.black)),
            ],
          ),
        ),
      ),
    );
  }
}
