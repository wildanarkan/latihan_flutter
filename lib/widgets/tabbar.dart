import 'package:flutter/material.dart';

void main() {
  runApp(AppTabBar());
}

class AppTabBar extends StatelessWidget {
  const AppTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double deviceWidth = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "WhatsApp",
                style: TextStyle(color: Colors.white),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.camera_alt_outlined, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.search, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.more_vert, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          backgroundColor: Colors.blueGrey[900],
          bottom: TabBar(
              indicatorColor: Colors.teal[700],
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 5,
              unselectedLabelColor: Colors.grey,
              isScrollable: true,
              padding: EdgeInsets.zero,
              labelPadding: EdgeInsets.zero,
              tabAlignment: TabAlignment.start,
              // indicatorPadding: EdgeInsets.symmetric(horizontal: 1.0),
              labelColor: Colors.teal[700],
              tabs: [
                Tab(
                  child: SizedBox(
                    width: deviceWidth * 0.13,
                    child: Center(child: Icon(Icons.groups_2)),
                  ),
                ),
                Tab(
                    child: Container(
                        width: deviceWidth * 0.29,
                        child: Center(
                            child: Text(
                          "Chat",
                          style: TextStyle(fontSize: 17),
                        )))),
                Tab(
                    child: Container(
                        width: deviceWidth * 0.29,
                        child: Center(
                            child: Text(
                          "Status",
                          style: TextStyle(fontSize: 17),
                        )))),
                Tab(
                    child: Container(
                        width: deviceWidth * 0.29,
                        child: Center(
                            child: Text(
                          "Panggilan",
                          style: TextStyle(fontSize: 17),
                        )))),
              ]),
        ),
        body: TabBarView(children: [
          Center(child: Text("Halaman Comunity")),
          Center(child: Text("Halaman Chat")),
          Center(child: Text("Halaman Status")),
          Center(child: Text("Halaman Panggilan")),
        ]),
      ),
    );
  }
}
