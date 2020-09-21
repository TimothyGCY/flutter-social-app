import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:socialapp/homescreen/index.dart';
import 'animationscreen.dart';
import 'package:socialapp/common/constants.dart';
// import 'homescreen/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([SystemUiOverlay.bottom]);
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BleckChat',
      home: new MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  getTabs() {
    return new Container(
      padding: new EdgeInsets.symmetric(vertical: 4.0),
      decoration: new BoxDecoration(
        border: const Border(
          top: const BorderSide(width: 0.0),
          left: const BorderSide(width: 0.0),
          right: const BorderSide(width: 0.0),
          bottom: const BorderSide(width: 1.0, color: Colors.grey),
        ),
      ),
      child: new TabBar(
        isScrollable: false,
        labelColor: activeTab,
        unselectedLabelColor: inactiveTab,
        tabs: [
          new Tab(
              child: Align(
                  alignment: Alignment.center,
                  child: new Icon(
                    Icons.home,
                  ))),
          new Tab(
              child: Align(
                  alignment: Alignment.center,
                  child: new Icon(
                    Icons.people,
                  ))),
          new Tab(
            child: new Tab(
              child: Align(
                  alignment: Alignment.center,
                  child: new Stack(
                    children: [
                      new Icon(
                        Icons.notifications,
                      ),
                      new FractionalTranslation(
                        translation: Offset(0.6, -0.5),
                        child: new CircleAvatar(
                          radius: 10.0,
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          child: new Text(
                            "1",
                            style: TextStyle(
                                fontSize: 10.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )),
            ),
          ),
          new Tab(
              child: Align(
                  alignment: Alignment.center,
                  child: new Icon(
                    Icons.menu,
                  ))),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // return Material(
    //     child: Stack(
    //         children: <Widget>[
    //           Align(
    //           alignment: Alignment.topLeft,
    //           child: TabBar(
    //               unselectedLabelStyle: inactiveTab,
    //               labelStyle: activeTab.copyWith(fontSize: 24),
    //               isScrollable: true,
    //               tabs: [
    //                 Tab(
    //                     child: Align(
    //                         alignment: Alignment.center,
    //                         child: Text("Viral News"))),
    //                 Tab(
    //                     child: Align(
    //                         alignment: Alignment.center,
    //                         child: Text("Global News"))),
    //                 Tab(
    //                     child: Align(
    //                         alignment: Alignment.center,
    //                         child: Text("Malaysia News"))),
    //               ]),
    //         ),
    //           IgnorePointer(
    //               child: AnimationScreen(
    //                   color: Theme.of(context).accentColor
    //               )
    //           )
    //         ]
    //     )
    // );
    return DefaultTabController(
      length: 4, // might change to dynamic range
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff3b5998),
          elevation: 0.0,
          leading: new Icon(
            Icons.camera_alt,
          ),
          title: new TextField(
            decoration: new InputDecoration(
                prefixIcon: new Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                border: InputBorder.none,
                hintText: 'Search',
                hintStyle: TextStyle(color: Color(0xff8b9dc3))),
          ),
          actions: <Widget>[
            new Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
              // child: new Icon(const IconData(0xe96d, fontFamily: 'icomoon')),
              child: Icon(Icons.message),
            )
          ],
          bottom: new PreferredSize(
            child: new Container(color: Colors.white, child: getTabs()),
            preferredSize: const Size.fromHeight(50.0),
          ),
        ),
        body: TabBarView(
          children: [
            HomePost(),
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
