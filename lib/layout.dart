import 'package:flutter/material.dart';
import 'constants/navigation_items.dart';
import 'constants/site_pages.dart';

class Layout extends StatefulWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  _LayoutState createState() => _LayoutState();
}

class _LayoutState extends State<Layout> {
  var _selectedPage = 0;

  void _handlePageChange(index) {
    setState(() {
      _selectedPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cooking App')),
      body: pages.elementAt(_selectedPage),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _handlePageChange, items: navItems),
    );
  }
}
