import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              clicked(context, "Message sent");
            },
          ),
        ],

        //  IconButton(
        //   icon: Icon(Icons.message),
        centerTitle: true, //
        title: Text(
          'Discover',
          style: TextStyle(
            color: Colors.black38,
          ),
        ),
        backgroundColor: Colors.red,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.map),
            title: new Text('Maps'),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.image),
            title: new Text('Image'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
          )
        ],
      ),
      body: ListView(children: <Widget>[
        Container(
          margin: EdgeInsets.all(20),
          color: Colors.green,
          padding: EdgeInsets.all(10),
          child: Image.asset('assets/images/lake.jpg'),
        ),
        Image.asset('assets/images/2.jpg'),
        Container(
          height: 20.00,
          decoration:new BoxDecoration(color: Colors.red

          ),


        ),
         Image.asset('assets/images/3.jpg'),
      ]),
    ); // constrain height
  }

  void clicked(BuildContext context, String s) {
    print("screen size =" + MediaQuery.of(context).size.height.toString());
  }
}
