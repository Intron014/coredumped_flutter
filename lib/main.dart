import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fridge',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onNavItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onButton1Pressed() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Page2()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> _mainPages = [
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'POTATO',
              style: TextStyle(fontSize: 32),
            ),
            SizedBox(height: 8),
            Icon(
              Icons.mail,
              color: Colors.blueGrey,
              size: 60.0,
            ),
            SizedBox(height: 24),
            Card(
              child: TextButton(
                onPressed: _onButton1Pressed,
                child: ListTile(
                  leading: Icon(Icons.ac_unit),
                  title: Center(child: Text('Button 1')),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  minimumSize: Size(double.infinity, 0),
                ),
              ),
            ),
            SizedBox(height: 8),
            Card(
              child: TextButton(
                onPressed: () {},
                child: ListTile(
                  leading: Icon(Icons.beach_access),
                  title: Center(child: Text('Button 2')),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  minimumSize: Size(double.infinity, 0),
                ),
              ),
            ),
            SizedBox(height: 8),
            Card(
              child: TextButton(
                onPressed: () {},
                child: ListTile(
                  leading: Icon(Icons.cloud),
                  title: Center(child: Text('Button 3')),
                  trailing: Icon(Icons.arrow_forward_ios),
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  minimumSize: Size(double.infinity, 0),
                ),
              ),
            ),
          ],
        ),
      ),
    ];

    final List<Widget> _sidebarItems = [
      ListTile(
        leading: Icon(Icons.home),
        title: Text('Home'),
        onTap: () {
          _onNavItemTapped(0);
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.settings),
        title: Text('Settings'),
        onTap: () {
          _onNavItemTapped(1);
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.info),
        title: Text('About'),
        onTap: () {
          _onNavItemTapped(2);
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.help),
        title: Text('Help'),
        onTap: () {
          _onNavItemTapped(3);
          Navigator.pop(context);
        },
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Fridge'),
      ),
      body: _mainPages[_selectedIndex],
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Fridge'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ..._sidebarItems,
          ],
        ),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: Column(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [

    FloatingActionButton(
    onPressed: () {},
    tooltip: 'Button 1',
    child: Icon(Icons.ac_unit),
    ),
    ],
    ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> _buttons = [
    ElevatedButton(
      onPressed: () {},
      child: Text('Button 1'),
      style: ElevatedButton.styleFrom(
        primary: Colors.red,
      ),
    ),
    ElevatedButton(
    onPressed: () {},
    child: Text('Button 2'),
    style: ElevatedButton.styleFrom(
    primary: Colors.orange,
    ),
    ),
    ElevatedButton(
    onPressed: () {},
    child: Text('Button 3'),
    style: ElevatedButton.styleFrom(
    primary: Colors.yellow,
    ))
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Page 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buttons,
        ),
      ),
    );
  }
}