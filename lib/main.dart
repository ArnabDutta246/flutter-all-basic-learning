import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Listview',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('ListView'),
        ),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: EdgeInsets.all(1.0),
      children: [
        const SizedBox(
          height: 30.0,
        ),
        Text(
          "Static ListView details",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
        Container(
          height: 450.0,
          child: _ListView(context),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          "Array ListView Itembuilder",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
        Container(
          height: 450.0,
          child: _ArrayListView(context),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          "Horizontal Scroll",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
        Container(
          height: 450.0,
          child: _HorizontalScrollList(context),
        ),
        Container(
          height: 450.0,
          child: _ArrayListView(context),
        ),
        const SizedBox(
          height: 30.0,
        ),
        Text(
          "Horizontal Scroll ClipRRECT",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 22.0,
          ),
        ),
        Container(
          height: 100.0,
          child: _HorizontalClipRRect(context),
        ),
      ],
    );
  }
}

Widget _ListView(BuildContext context) {
  return ListView(
    padding: const EdgeInsets.all(8),
    children: <Widget>[
      Container(
        height: 150,
        color: Colors.amber[600],
        child: const Center(child: Text('Entry A')),
      ),
      Container(
        height: 150,
        color: Colors.amber[500],
        child: const Center(child: Text('Entry B')),
      ),
      Container(
        height: 150,
        color: Colors.amber[100],
        child: const Center(child: Text('Entry C')),
      ),
    ],
  );
}

Widget _ArrayListView(BuildContext context) {
  final List<String> list = <String>['a', 'b', 'c'];
  final List<int> colorCodes = <int>[600, 500, 100];
  return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 150,
          color: Colors.amber[colorCodes[index]],
          child: Center(
            child: Text('Entry ${list[index]}'),
          ),
        );
      });
}

Widget _TouchDetectigListView(BuildContext context) {
  final List<String> list = <String>['a', 'b', 'c'];
  final List<int> colorCodes = <int>[600, 500, 100];
  return ListView.builder(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          child: Container(
            height: 150,
            color: Colors.amber[colorCodes[index]],
            child: Center(
              child: Text('Entry ${list[index]}'),
            ),
          ),
          onTap: () {
            print('Clicked ${list[index]}');
          },
        );
      });
}

Widget _HorizontalScrollList(BuildContext context) {
  final List<String> list = <String>['a', 'b', 'c', 'd', 'e'];
  final List<int> colorCodes = <int>[600, 500, 100, 300, 600];
  return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.all(8),
      itemCount: list.length,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          child: Container(
            height: 100,
            width: 200,
            color: Colors.amber[colorCodes[index]],
            child: Center(
              child: Text('Entry ${list[index]}'),
            ),
          ),
          onTap: () {
            print('Clicked ${list[index]}');
          },
        );
      });
}

Widget _HorizontalClipRRect(BuildContext context) {
  final List<String> list = <String>['a', 'b', 'c', 'd', 'e'];
  final List<int> colorCodes = <int>[600, 500, 100, 300, 600];
  return ListView.separated(
    scrollDirection: Axis.horizontal,
    padding: const EdgeInsets.all(8),
    separatorBuilder: (BuildContext context, index) {
      return SizedBox(width: 20);
    },
    itemCount: list.length,
    itemBuilder: (BuildContext context, int index) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: InkWell(
          child: Container(
            height: 100,
            width: 200,
            color: Colors.amber[colorCodes[index]],
            child: Center(
              child: Text('Entry ${list[index]}'),
            ),
          ),
          onTap: () {
            print('Clicked ${list[index]}');
          },
        ),
      );
    },
  );
}

/**
 *  Key? key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollController? controller,
    bool? primary,
    ScrollPhysics? physics,
    bool shrinkWrap = false,=======> done
    EdgeInsetsGeometry? padding,====> done
    this.itemExtent,
    this.prototypeItem,
    required IndexedWidgetBuilder itemBuilder,
    int? itemCount,=================> done
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double? cacheExtent,
    int? semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    Clip clipBehavior = Clip.hardEdge,
 */
/**
 * List View 
    1. Doesn't work inside column


    2. Listview need Builder context



    3. shrinkWrap: true,
    Usually a ListView (as well as GridView, PageView 
    and CustomScrollView) tries to fill all the 
    available space given by the parent element, 
    even when the list items would require less space.

    With shrinkWrap: true, you can change this 
    behavior so that the ListView only occupies the 
    space it needs (it will still scroll when there 
    more items).


    4. ScrollPhysics? physics,
      NeverScrollableScrollPhysics …
      NeverScrollScrollPhysics disables scrolling of
    the list. Use this to disable scrolling 
      of the ListView completely.

    BouncingScrollPhysics …
    BouncingScrollPhysics returns the list back when 
    the list ends. A similar effect is used on iOS.


    ClamppingScrollPhysics
    This is the default scrolling feature on Android. 
    The list stops at the end and shows an indication 
    of this action.

    
  5. separatorbuilder: 
    it is a function 
    separatorBuilder: (BuildContext context,index){
      return SizedBox(width:20);
      },
 */