import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Basic',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyAppStart(),
      // home: SliverAppbarWithTab(),
    );
  }
}

/** --------------------------------------------
 * Normal sliver App bar
------------------------------------------------ */
class MyAppStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.menu),
            //title: Text('Sliver Learning'),
            backgroundColor: Colors.blueAccent,
            //collapsedHeight: 150,
            expandedHeight: 100.0,
            elevation: 3.0,
            // floating: true,
            // pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              // background: Image.network(src,
              // fit: BoxFit.cover,),
              title: Text('Text in FlexibleSpace'),
              titlePadding: EdgeInsets.all(10),
              centerTitle: true,
            ),
            actions: <Widget>[
              Icon(
                Icons.person,
                size: 30,
              ),
              SizedBox(
                width: 30,
              ),
            ],
          ),
          SliverAppBar(
            backgroundColor: Colors.greenAccent,
            title: Text('Grid Section 1'),
            expandedHeight: 30,
            // collapsedHeight: 150,
            // floating: true,
            // pinned: true,
          ),
          gridLayout(),
          SliverAppBar(
            backgroundColor: Colors.greenAccent,
            title: Text('Grid Section 2'),
            expandedHeight: 30,
            // collapsedHeight: 150,
            // floating: true,
            // pinned: true,
          ),
          gridLayout(),
          SliverAppBar(
            backgroundColor: Colors.greenAccent,
            title: Text('Grid Section 3'),
            expandedHeight: 30,
            // collapsedHeight: 150,
            // floating: true,
            // pinned: true,
          ),
          gridLayout(),
          SliverAppBar(
            backgroundColor: Colors.greenAccent,
            title: Text('Sliver List'),
            expandedHeight: 30,
            // collapsedHeight: 150,
            // floating: true,
            // pinned: true,
          ),
          sliverListSection(),
        ],
      ),
    );
  }
}

Widget gridLayout() {
  final List<String> list = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'a',
    'b',
    'c',
    'd',
    'e',
    'f'
  ];
  final List<int> colorsList = [
    600,
    500,
    100,
    300,
    500,
    200,
    600,
    500,
    100,
    300,
    500,
    200
  ];
  return SliverToBoxAdapter(
    child: GridView.builder(
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      primary: false,
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {},
          child: Container(
            height: 200,
            width: 100,
            color: Colors.amber[colorsList[index]],
            child: Text(list[index]),
          ),
        );
      },
    ),
  );
}

Widget sliverListSection() {
  final List<String> list = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'a',
    'b',
    'c',
    'd',
    'e',
    'f'
  ];
  final List<int> colorsList = [
    600,
    500,
    100,
    300,
    500,
    200,
    600,
    500,
    100,
    300,
    500,
    200
  ];
  return SliverToBoxAdapter(
    child: ListView.builder(
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {},
          child: Container(
            height: 100,
            color: Colors.amber[colorsList[index]],
          ),
        );
      },
    ),
  );
}

/** --------------------------------------------
 * Tab bar is Sliver App bar
------------------------------------------------ */
class SliverAppbarWithTab extends StatelessWidget {
  const SliverAppbarWithTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 4,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                leading: Icon(Icons.menu),
                backgroundColor: Colors.orangeAccent,
                elevation: 3.0,
                floating: true,
                pinned: true,
                actions: <Widget>[
                  Icon(
                    Icons.person,
                    size: 30,
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
                title: Text('Sliver tab app bar'),
                bottom: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(Icons.map),
                      text: 'Tab -1',
                    ),
                    Tab(
                      icon: Icon(Icons.person),
                      text: 'Tab -2',
                    ),
                    Tab(
                      icon: Icon(Icons.map),
                      text: 'Tab -1',
                    ),
                    Tab(
                      icon: Icon(Icons.person),
                      text: 'Tab -2',
                    )
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(children: [
            tabOne(),
            tabTwo(),
            tabOne(),
            tabTwo(),
          ]),
        ),
      ),
    );
  }
}

Widget tabOne() {
  return Center(
    child: Container(
      child: Text('Tab 1'),
    ),
  );
}

Widget tabTwo() {
  return Center(
    child: Container(
      child: Text('Tab 2'),
    ),
  );
}

// sliver
/**
 * sliverappbar
 * SliverToBoxAdapter
 * SliverList
 * SliverGrid
 */

// Rules :1
// if want to user sliver the body property widget will wrap by CustomScrollView() widget 

// Rules :2
// CustomViewWidget() has slivers property which contais all slivers widgets
//  * sliverappbar
//  * SliverToBoxAdapter
//  * SliverList
//  * SliverGrid

// Rules :3
// inside Scaffold() widget we get appbar:Appbar(), body:Container() example, if we want to user sliver app bar need not use appbar:Appbar(), 



// ref
// https://www.youtube.com/watch?v=s_3ak-4u43E

// https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbEVQcUNUTXFaOXJxVG5GRXBzNlBlN25KSkdUQXxBQ3Jtc0tuZHNaVGVfLTYyOGFvc1ZiYnpEX2Q2OXFsRHlwOEw5NE1XY3dDaXZFdFktMG8yR2Fjd256N0E2LWMzN2NFUjAzOGhnWHludXp5MWR5LVhmVzVDVk1iUE10U19LMTJGVGZORkF2TXBxRGJvRy1saU5JMA&q=https%3A%2F%2Fgithub.com%2FJohannesMilke%2Fsliver_appbar_ii_example