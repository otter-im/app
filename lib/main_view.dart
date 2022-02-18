import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OtterTabbedView extends StatefulWidget {
  const OtterTabbedView({Key? key}) : super(key: key);

  @override
  State<OtterTabbedView> createState() => _OtterTabbedViewState();
}

const List<Text> _tabTitles = <Text>[
  Text('Timeline'),
  Text('Notifications'),
  Text('Messages'),
];

var _drawer = Drawer(
    child: ListView(
        padding: EdgeInsets.zero,
        children: const <Widget>[DrawerHeader(child: Text('Pico!'))]));

var _tabs = <BottomNavigationBarItem>[
  const BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.home), label: 'Timeline'),
  const BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.bell), label: 'Notifications'),
  const BottomNavigationBarItem(
      icon: Icon(FontAwesomeIcons.envelope), label: 'Messages'),
];

class _OtterTabbedViewState extends State<OtterTabbedView> {
  final _pageViewController = PageController();
  int _activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _tabTitles.elementAt(_activePage),
        leading: Builder(
          builder: (BuildContext ctx) {
            return IconButton(
              icon: const Icon(
                FontAwesomeIcons.userAlt,
                size: 20.0,
              ),
              onPressed: () => Scaffold.of(ctx).openDrawer(),
            );
          },
        ),
      ),
      drawer: _drawer,
      body: PageView(
        controller: _pageViewController,
        children: _tabPages,
        onPageChanged: (index) {
          setState(() {
            _activePage = index;
          });
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _tabs,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        iconSize: 20.00,
        currentIndex: _activePage,
        onTap: (index) {
          _pageViewController.jumpToPage(index);
          _activePage = index;
        },
      ),
    );
  }
}

// TODO: break out into own page files
var _tabPages = <Widget>[
  const Scaffold(
    body: Center(child: CircularProgressIndicator()),
  ),
  const Scaffold(
    body: Center(child: CircularProgressIndicator()),
  ),
  const Scaffold(
    body: Center(child: CircularProgressIndicator()),
  ),
];
