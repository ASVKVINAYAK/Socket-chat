import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'PocketChat',
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: const Color(0xFF2845E7),
        primaryColorDark: const Color(0xFF2845E7),
      ),
      home: new DashboardScreen(title: 'PocketChat'),
    );
  }
}
class DashboardScreen extends StatefulWidget {
DashboardScreen({Key key, this.title}) : super(key: key);

final String title;

@override
_DashboardScreenState createState() => new _DashboardScreenState();
}
class _DashboardScreenState extends State<DashboardScreen> {
  PageController _pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  void navigationTapped(int page) {
    // Animating to the page.
    // You can use whatever duration and curve you like
    _pageController.animateToPage(page,
        duration: const Duration(milliseconds: 10), curve: Curves.decelerate);
  }

  void onPageChanged(int page) {
    setState(() {
      this._page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new PageView(
        children: [
          new Home("Home"),
        ],
        onPageChanged: onPageChanged,
        controller: _pageController,
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.white,
        ), // sets the inactive color of the `BottomNavigationBar`
        child: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: const Color(0xFF2845E7),
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(
                Icons.home,
              ),
              // ignore: deprecated_member_use
              title: new Text(
                "Home",
              ),
            ),
          ],
          onTap: navigationTapped,
          currentIndex: _page,
        ),
      ),
    );
  }
}