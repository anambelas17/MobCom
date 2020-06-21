import 'package:serabutan/login_page.dart';

import 'data.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  static String tag = 'home';
  @override
  Widget build(BuildContext context) {
    //app bar
    final appBar = AppBar(
      elevation: .5,
      leading: IconButton(
        icon: Icon(Icons.menu),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
        },
      ),
      title: Text('Beranda'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {},
        )
      ],
    );

    ///create book tile hero
    createTile(Job job) => Hero(
      tag: job.title,
      child: Material(
        elevation: 15.0,
        shadowColor: Colors.blue.shade900,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, 'detail/${job.title}');
          },
          child: Image(
            image: AssetImage(job.image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );

    ///create book grid tiles
    final grid = CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: jobs.map((job) => createTile(job)).toList(),
          ),
        )
      ],
    );

    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: appBar,
      body: grid,
    );
  }
}