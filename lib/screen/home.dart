import 'package:flutter/material.dart';
import 'package:media_ui/data/data.dart';
import 'package:media_ui/widgets/custom_drawer.dart';
import 'package:media_ui/widgets/following_users.dart';
import 'package:media_ui/widgets/post_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  PageController _pageController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _pageController = PageController(initialPage: 0, viewportFraction: 0.8);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Theme.of(context).primaryColor),
        centerTitle: true,
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        title: Text(
          "FRENZY",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              letterSpacing: 10.0,
              color: Theme.of(context).primaryColor),
        ),
        bottom: TabBar(
          controller: _tabController,
          indicatorWeight: 3.0,
          labelColor: Theme.of(context).primaryColor,
          labelStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600),
          unselectedLabelStyle: TextStyle(fontSize: 18.0, color: Colors.grey),
          tabs: <Widget>[
            Text("Trending"),
            Text("Latest"),
          ],
        ),
      ),
      drawer: CustomDrawer(),
      body: ListView(
        children: <Widget>[
          FollowingUsers(),
          PostCarousel(
            pageController: _pageController,
            title: "Posts",
            posts: posts,
          ),
        ],
      ),
    );
  }
}
