import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '코드 콘서트',
      theme: ThemeData(primarySwatch: Colors.red, fontFamily: 'Chilgok'),
      home: RobiPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red, fontFamily: 'Chilgok'),
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            bottom: TabBar(
                unselectedLabelColor: Colors.redAccent,
                indicatorPadding: EdgeInsets.only(left: 30, right: 30),
                indicator: ShapeDecoration(
                    color: Colors.redAccent,
                    shape: BeveledRectangleBorder(
                        side: BorderSide(
                      color: Colors.redAccent,
                    ))),
                tabs: [
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('코드'),
                    ),
                  ),
                  Tab(
                    child: Align(
                      alignment: Alignment.center,
                      child: Text('악보'),
                    ),
                  ),
                ]),
          ),
          body: TabBarView(children: [
            ButtonPage(),
            Icon(Icons.dangerous),
          ]),
        ),
      ),
    );
  }
}

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: <Widget>[
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        InkWellCard(
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      content: Image.asset('images/code_C.jpg'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                      ));
                });
          },
          child: Container(
              padding: EdgeInsets.all(40.0),
              child: Text('C코드', textAlign: TextAlign.center)),
        ),
        InkWellCard(
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      content: Image.asset('images/code_D.jpg'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                      ));
                });
          },
          child: Container(
              padding: EdgeInsets.all(40.0),
              child: Text('D코드', textAlign: TextAlign.center)),
        ),
        InkWellCard(
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      content: Image.asset('images/code_E.jpg'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                      ));
                });
          },
          child: Container(
              padding: EdgeInsets.all(40.0),
              child: Text('E코드', textAlign: TextAlign.center)),
        ),
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        InkWellCard(
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      content: Image.asset('images/code_F.jpg'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                      ));
                });
          },
          child: Container(
              padding: EdgeInsets.all(40.0),
              child: Text('F코드', textAlign: TextAlign.center)),
        ),
        InkWellCard(
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      content: Image.asset('images/code_G.jpg'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                      ));
                });
          },
          child: Container(
              padding: EdgeInsets.all(40.0),
              child: Text('G코드', textAlign: TextAlign.center)),
        ),
        InkWellCard(
          onTap: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                      content: Image.asset('images/code_A.jpg'),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(2.0)),
                      ));
                });
          },
          child: Container(
              padding: EdgeInsets.all(40.0),
              child: Text('A코드', textAlign: TextAlign.center)),
        ),
      ]),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWellCard(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        content: Image.asset('images/code_B.jpg'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2.0)),
                        ));
                  });
            },
            child: Container(
                padding: EdgeInsets.all(40.0),
                child: Text('ㅁ코드', textAlign: TextAlign.center)),
          ),
          InkWellCard(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        content: Image.asset('images/code_B.jpg'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2.0)),
                        ));
                  });
            },
            child: Container(
                padding: EdgeInsets.all(40.0),
                child: Text('B코드', textAlign: TextAlign.center)),
          ),
          InkWellCard(
            onTap: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                        content: Image.asset('images/code_B.jpg'),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(2.0)),
                        ));
                  });
            },
            child: Container(
                padding: EdgeInsets.all(40.0),
                child: Text('ㅁ코드', textAlign: TextAlign.center)),
          ),
        ],
      )
    ])));
  }
}

class InkWellCard extends StatelessWidget {
  final VoidCallback onTap;
  final Widget child;
  final BorderRadius _baseBorderRadius = BorderRadius.circular(8);
  InkWellCard({@required this.onTap, @required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: _baseBorderRadius),
      child: InkWell(
        borderRadius: _baseBorderRadius,
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: _baseBorderRadius,
            color: Colors.transparent,
          ),
          child: child,
        ),
      ),
    );
  }
}

class RobiPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('코드 콘서트'),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset('images/guitar.jpg'),
              InkWell(
                child: Text(
                  '기타 코드 보기',
                  style: TextStyle(fontSize: 30, fontFamily: 'Chilgok'),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainPage()),
                  );
                },
              )
            ]),
      ),
    );
  }
}
