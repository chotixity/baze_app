import 'package:flutter/material.dart';

class Tabs extends StatefulWidget {
  static const routeName = '/Tabs';
  const Tabs({super.key});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(
      child: Text(
        'Tenant',
        //style: TextStyle(color: Colors.black),
      ),
    ),
    Tab(
      child: Text('Landlord'),
    ),
  ];

  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: myTabs.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
          //bottom: TabBar(
          //  tabs: myTabs,
          //  controller: _tabController,
          // )
          ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TabBar(
              labelColor: Colors.black,
              tabs: myTabs,
              controller: _tabController,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Center(
                    child: Text(
                      'I am a Tenant',
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                  Center(
                    child: Text(
                      'I am a Landlord',
                      style: theme.textTheme.titleSmall,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
