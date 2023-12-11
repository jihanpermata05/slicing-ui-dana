import 'package:flutter/material.dart';
import 'package:workshop/complete.dart';

class TopNavigationMenu extends StatefulWidget {
  TopNavigationMenu({Key? key}) : super(key: key);

  State<TopNavigationMenu> createState() => _TopNavigationMenuState();
}

class _TopNavigationMenuState extends State<TopNavigationMenu>
    with TickerProviderStateMixin {
  late TabController _tabController;

  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Transaction Activity"),
        ),
        elevation: 0,
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(
              text: "In Progress",
            ),
            Tab(text: "Complete"),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Center(
            child: Text("In Progress"),
          ),
          Complete(),
        ],
      ),
    );
  }
}
