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
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Sign up as a: ',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
              ),
            ),
            TabBar(
              indicator: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              //splashBorderRadius: ,
              labelColor: Colors.black,
              tabs: myTabs,
              controller: _tabController,
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text(
                            'As a tenant baze will help you to: ',
                            style: theme.textTheme.titleSmall,
                          ),
                        ),
                        Expanded(
                          child: ListView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    const Icon(Icons.check),
                                    Text(
                                      'view hostels before you rent',
                                      style: theme.textTheme.bodyMedium,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 10,
                                  left: 10,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(Icons.check),
                                    Text(
                                      'Contact prospective landlords',
                                      style: theme.textTheme.bodyMedium,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 10,
                                  left: 10,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(Icons.check),
                                    Text(
                                      'Pay and save your rent through baze wallet',
                                      style: theme.textTheme.bodyMedium,
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 10,
                                  left: 10,
                                ),
                                child: Row(
                                  children: [
                                    const Icon(Icons.check),
                                    Text(
                                      'Help your friend pay rent when they cannot pay for the month',
                                      style: theme.textTheme.bodyMedium,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
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
