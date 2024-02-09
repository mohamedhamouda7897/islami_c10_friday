import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_c10_friday/home/tabs/ahadeth_tab.dart';
import 'package:islami_c10_friday/home/tabs/quran_tab.dart';
import 'package:islami_c10_friday/home/tabs/radio_tab.dart';
import 'package:islami_c10_friday/home/tabs/sebha_tab.dart';
import 'package:islami_c10_friday/home/tabs/settings_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "Home";

  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/bg.png"), fit: BoxFit.fill),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            "Islami",
            style: GoogleFonts.elMessiri(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Color(0xFF242424),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: Color(0xFFB7935F),
            showSelectedLabels: false,
            showUnselectedLabels: false,
            currentIndex: index,
            type: BottomNavigationBarType.fixed,
            onTap: (value) {
              index = value;
              setState(() {});
            },
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/ic_quran.png"),
                ),
                label: "dsfsdf",
              ),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_sebha.png")),
                  label: "dsfsdf"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_radio.png")),
                  label: "dsfsdf"),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage("assets/images/ic_ahadeth.png")),
                  label: "dsfsdf"),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: ""),
            ]),
        body: tabs[index],
      ),
    );
  }
  List<Widget>tabs=[
    QuranTab(),
    SebhaTab(),
    RadioTab(),
    AhadethTab(),
    SettingsTab()
  ];
}
