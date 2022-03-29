import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      )
  );
}

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('Marketplace'),
        actions: <Widget>[
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.white,)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('hitfot'),
              accountEmail: Text('hitfot@mail.ru'),
              currentAccountPicture: GestureDetector(
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.person, color: Colors.black, size: 50,),
                ),
              ),
              decoration: const BoxDecoration(
                color: Colors.green,
              ),
            ),
            InkWell(
              onTap: (){},
              child: const ListTile(
                leading: Icon(Icons.home),
                title: Text('Title'),
              )
            ),
            InkWell(
              onTap: (){},
              child: const ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text('Cart'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
