import 'package:client_portal/widget/sidebar.dart';
import 'package:flutter/material.dart';

class dashboard extends StatefulWidget {
  dashboard({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: dashboard(),
    );
  }

  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: NavigationDrawerWidget(),
          appBar: AppBar(
            title: Text(
              "Client Portal",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            bottom: TabBar(
              tabs: [
                Tab(text: 'Timeline', icon: Icon(Icons.home)),
                Tab(text: 'Blog', icon: Icon(Icons.newspaper)),
                Tab(text: 'Subscription', icon: Icon(Icons.subscriptions)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Text('timeline'),
              Text('blog'),
              Text('subscription'),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.message,
              size: 35,
            ),
            onPressed: () {
              //code
            },
          ),
        ),
      );
}
