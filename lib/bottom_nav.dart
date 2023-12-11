import 'dart:convert';


import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:workshop/camera.dart';
import 'package:workshop/home.dart';
import 'package:workshop/profile.dart';
import 'package:workshop/top_nav.dart';

class BottomNavigationMenu extends StatefulWidget {
  BottomNavigationMenu({Key? key}) : super(key: key);

  State<BottomNavigationMenu> createState() => _BottomNavigationMenuState();
}

class _BottomNavigationMenuState extends State<BottomNavigationMenu>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Transform.scale(
        scale: 1.3,
        child: FloatingActionButton(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.qr_code_2,
                  size: 32,
                ),
                Text("PAY", style: TextStyle(fontSize: 12),)
              ],
            ),
            onPressed: () async {
                  await availableCameras().then((value) => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => CameraPage(cameras: value)))
                          .then((value) {
                        // print(base64Encode(File(value.path).readAsBytesSync()));

                        // base64Decode(foto!);
                        setState(() {});
                        // print(img64);
                      }));
                },),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        onTap: (index) {
          setState(() {
            _tabController.index = index;
          });
        },
        currentIndex: _tabController.index,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.flag_circle_outlined),
            activeIcon: Icon(Icons.flag_circle),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pageview_outlined),
            activeIcon: Icon(Icons.pageview),
            label: 'History',
          ),
           BottomNavigationBarItem(
            icon: Icon(Icons.wallet_rounded),
            activeIcon: Icon(Icons.wallet),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet_rounded),
            activeIcon: Icon(Icons.wallet),
            label: 'Wallet',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            activeIcon: Icon(Icons.person_2),
            label: 'Me',
          ),
        ],
      ),
      body: TabBarView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _tabController,
        children: [
          Home(),
          TopNavigationMenu(),
          Center(
            child: Text("Home"),
          ),
          Center(
            child: Text("Home"),
          ),
          Profile(),
        ],
      ),
    );
  }
}
